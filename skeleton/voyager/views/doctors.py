from collections import namedtuple

from flask import render_template
from flask import request

from voyager.db import get_db, execute

def doctors(conn):
    return execute(conn, 
    "SELECT d.doctorID, d.firstName, d.lastName, d.departmentID, d.practiceSince, d.hospitalID FROM Doctor AS d")
def views(bp):
    @bp.route("/doctors")
    def _doctors():
        with get_db() as conn:
            rows = doctors(conn)
            for row in rows:
                print(row)
        return render_template("table.html", name="Doctors", rows=rows)
