from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def appointments(conn, first,last):
    # return execute(conn, f"SELECT Hospital.hospitalID AS ID, Hospital.hospitalName AS Name FROM Hospital where Hospital.hospitalState='{state}'")
    return execute(conn, f"SELECT Doctor.firstname, Doctor.lastName, Appointments.apptDate, Appointments.apptTime from Doctor inner join Appointments inner join Office where Appointments.officeID = Office.officeID and Doctor.firstName = '{first}' and Doctor.lastName = '{last}'")
def views(bp):
    @bp.route("/appointments",methods=["GET","POST"])
    def _appointments():
        if request.method == "POST":
            with get_db() as conn:
                first = request.form['first_']
                last = request.form['last_']
                print(appointments(conn,first,last))
                rows = appointments(conn, first,last)
                for row in rows:
                    print(row)
            return render_template("table.html", name="Hospitals in this state", rows=rows)