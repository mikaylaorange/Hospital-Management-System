from collections import namedtuple

from flask import render_template
from flask import request

from voyager.db import get_db, execute

def patients(conn):
    return execute(conn, 
    "SELECT p.patientID AS ID, p.firstName, p.lastName, p.DoB, p.email FROM Patient AS p")
def views(bp):
    @bp.route("/patients")
    def _patients():
        with get_db() as conn:
            rows = patients(conn)
            for row in rows:
                print(row)
        return render_template("table.html", name="Patients", rows=rows)
