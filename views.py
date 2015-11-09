from flask import Flask, request, session, g, redirect, url_for, abort, \
     render_template, flash
from utils import get_redirect_target, redirect_back
from app import app
from model import *

@app.route('/')
def homepage():
    return render_template('index.html', title='Homepage')

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


"""
views for the bloging system
"""
@app.route('/blog/')
def show_entries():
    db = get_db()
    cur = db.execute('select title, text from entries order by id desc')
    entries = cur.fetchall()
    return render_template('list.html', title='Blogs', entries=entries)

@app.route('/blog/new', methods=['GET', 'POST'])
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
