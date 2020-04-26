from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect

from voyager.db import get_db, execute
def add_patient(conn,firstName, lastName, DoB, email):
    return execute(conn, f"INSERT INTO Doctor(firstName, lastName, DoB, email) VALUES ('{firstName}','{lastName}','{DoB}','{email}')")

def views(bp):
    @bp.route("/patients/add",methods=['GET','POST'])
    def _add_patient():
        if request.method == 'GET':
            return render_template('add_patient.html')
        if request.method == 'POST':
            firstName = request.form['firstName']
            lastName = request.form['lastName']
            DoB = request.form['DoB']
            email= request.form['email']
            with get_db() as conn:
                add_patient(conn,firstName, lastName, DoB, email)
            print("YAY!")
        return redirect('/patients')