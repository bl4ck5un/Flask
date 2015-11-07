# -*- coding: utf-8 -*-
from sqlite3 import dbapi2 as sqlite3
from flask import Flask, request, session, g, redirect, url_for, abort, \
     render_template, flash, _app_ctx_stack

from utils import get_redirect_target, redirect_back

# configuration
DATABASE = '/tmp/flaskr.db'
DEBUG = True
SECRET_KEY = 'development key'
USERNAME = 'admin'
PASSWORD = 'default'

# create our little application :)
app = Flask(__name__)
app.config.from_object(__name__)
app.config.from_envvar('FLASKR_SETTINGS', silent=True)

def init_db():
    """Creates the database tables."""
    with app.app_context():
        db = get_db()
        with app.open_resource('schema.sql', mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()


def get_db():
    """Opens a new database connection if there is none yet for the
    current application context.
    """
    top = _app_ctx_stack.top
    if not hasattr(top, 'sqlite_db'):
        sqlite_db = sqlite3.connect(app.config['DATABASE'])
        sqlite_db.row_factory = sqlite3.Row
        top.sqlite_db = sqlite_db

    return top.sqlite_db


@app.teardown_appcontext
def close_db_connection(exception):
    """Closes the database again at the end of the request."""
    top = _app_ctx_stack.top
    if hasattr(top, 'sqlite_db'):
        top.sqlite_db.close()


@app.route('/')
def homepage():
    return render_template('index.html', title='Homepage')

@app.route('/blogs')
def show_entries():
    db = get_db()
    cur = db.execute('select title, text from entries order by id desc')
    entries = cur.fetchall()
    return render_template('list.html', title='Blogs', entries=entries)

@app.route('/blogs/new')
def new_blog():
    if not session.get('logged_in'):
        return redirect(url_for('login'), next=url_for(new_blog))
    if request.method == 'POST':
        db = get_db()
        db.execute('insert into entries (title, text) values (?, ?)',
                     [request.form['title'], request.form['text']])
        db.commit()
        flash('New entry was successfully posted')
        return redirect(url_for('show_entries'))
    else:
        return render_template('new.html', title='New Blogs')

@app.route('/login', methods=['GET', 'POST'])
def login():
    print request
    error = None
    origin = get_redirect_target()
    if request.method == 'POST':
        if request.form['username'] != app.config['USERNAME']:
            error = 'Invalid username'
        elif request.form['password'] != app.config['PASSWORD']:
            error = 'Invalid password'
        else:
            session['logged_in'] = True
            session['username'] = request.form['username']
            flash('You were logged in')
            return redirect_back('homepage')
    return render_template('login.html', error=error, next=origin)


@app.route('/logout')
def logout():
    origin = get_redirect_target()
    session.pop('logged_in', None)
    flash('You were logged out')
    return redirect(origin)


if __name__ == '__main__':
    init_db()
    app.run(debug=True)
