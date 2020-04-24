from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect

from voyager.db import get_db, execute
def add_department(conn,name):
    return execute(conn, f"INSERT INTO departments(name) VALUES ('{name}')")

def views(bp):
    @bp.route("/departments/add",methods=['GET','POST'])
    def _add_boat():
        if request.method == 'GET':
            return render_template('add_department.html')
        if request.method == 'POST':
            name = request.form['departmentName']
            with get_db() as conn:
                add_department(conn,name)
            print("YAY!")
        return redirect('/departments')
