from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect

from voyager.db import get_db, execute
def add_hospital(conn, name, city, state, country):
    return execute(conn, f"INSERT INTO Hospital(name, city, state, country) VALUES ('{name}','{city}','{state}','{country}')")

def views(bp):
    @bp.route("/hospital/add",methods=['GET','POST'])
    def _add_hospital():
        if request.method == 'GET':
            return render_template('add_hospital.html')
        if request.method == 'POST':
            name = request.form['hospitalName']
            city = request.form['hospitalCity']
            state = request.form['hospitalState']
            country = request.form['hospitalCountry']
            with get_db() as conn:
                add_hospital(conn,name,city, state, country)
            print("YAY!")
        return redirect('/sailors')
