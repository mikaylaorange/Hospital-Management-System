from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute

def doctors(conn):
    return execute(conn, "SELECT Doctor.firstName as 'First Name',Doctor.lastName as 'Last Name', Department.departmentName as Department FROM Department INNER JOIN Doctor on Department.departmentID = Doctor.departmentID")




def views(bp):
    @bp.route("/doctor")
    def _doctors():
        with get_db() as conn:
            rows = doctors(conn)
            print(rows)
            
        return render_template("table.html", name="Doctor", rows=rows)




