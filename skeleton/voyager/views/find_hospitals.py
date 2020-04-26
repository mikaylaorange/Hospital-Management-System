from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_hospitals(conn, state):
    # return execute(conn, f"SELECT Hospital.hospitalID AS ID, Hospital.hospitalName AS Name FROM Hospital where Hospital.hospitalState='{state}'")
    return execute(conn, f"SELECT h.hospitalID AS ID, h.hospitalName AS Name FROM Hospital AS h WHERE h.hospitalState='{state}'")
def views(bp):
    @bp.route("/hospitals/what-state",methods=["GET","POST"])
    def _find_hospitals():
        if request.method == "POST":
            with get_db() as conn:
                state = request.form['state_']
                print(find_hospitals(conn,state))
                rows = find_hospitals(conn, state)
                for row in rows:
                    print(row)
            return render_template("table.html", name="Hospitals in this state", rows=rows)