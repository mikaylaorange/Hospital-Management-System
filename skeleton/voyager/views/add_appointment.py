from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape
from flask import Flask, redirect
from voyager.db import get_db, execute
def add_appointment(conn,pID, oID, date, time):
    execute(conn, f"SELECT Doctor.firstname, Doctor.lastName, Appointments.apptDate, Appointments.apptTime from Doctor inner join Appointments inner join Office")
    return execute(conn, f"INSERT INTO Appointments(patientID, officeID, apptDate, apptTime) VALUES ('{pID}','{oID}','{date}','{time}')")

def views(bp):
    @bp.route("/appointments/add",methods=['GET','POST'])
    def _add_appointment():
        if request.method == 'GET':
            return render_template('add_appointment.html')
        if request.method == 'POST':
            pID = request.form['pID']
            oID = request.form['oID']
            date = request.form['date']
            time = request.form['time']
            with get_db() as conn:
                add_appointment(conn,pID, oID, date, time)
        return redirect('/appointments')