from flask import Blueprint
from model import *

from flask import Flask, request, session, g, redirect, url_for, abort, \
     render_template, flash

blogs = Blueprint('blogs', __name__)

@blogs.route('/')
def show_entries():
    db = get_db()
    cur = db.execute('select title, text from entries order by id desc')
    entries = cur.fetchall()
    return render_template('list.html', title='Blogs', entries=entries)

@blogs.route('/new', methods=['GET', 'POST'])
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
