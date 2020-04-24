from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect

from voyager.db import get_db, execute
def add_doctor(conn,firstName, lastName, departmentID, practiceSince, hospitalID):
    return execute(conn, f"INSERT INTO Doctor(firstName, lastName, departmentID, practiceSince, hospitalID) VALUES ('{firstName}','{lastName}','{departmentID}','{practiceSince}','{hospitalID}')")

def views(bp):
    @bp.route("/doctors/add",methods=['GET','POST'])
    def _add_doctor():
        if request.method == 'GET':
            return render_template('add_doctor.html')
        if request.method == 'POST':
            firstName = request.form['firstName']
            lastName = request.form['lastName']
            departmentID = request.form['departmentID']
            practiceSince = request.form['practiceSince']
            hospitalID = request.form['hospitalID']
            with get_db() as conn:
                add_doctor(conn,firstName, lastName, departmentID, practiceSince, hospitalID)
            print("YAY!")
        return redirect('/doctors')
