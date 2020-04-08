from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect

from voyager.db import get_db, execute
def add_sailor(conn,name,age,experience):
    return execute(conn, f"INSERT INTO Sailors(name,age,experience) VALUES ('{name}','{age}','{experience}')")

def views(bp):
    @bp.route("/sailors/add",methods=['GET','POST'])
    def _add_sailor():
        if request.method == 'GET':
            return render_template('add_sailors.html')
        if request.method == 'POST':
            name = request.form['sname']
            age = request.form['age']
            experience = request.form['yrs-exp']
            with get_db() as conn:
                add_sailor(conn,name,age,experience)
            print("YAY!")
        return redirect('/sailors')
