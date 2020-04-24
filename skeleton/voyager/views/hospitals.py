from collections import namedtuple

from flask import g
from flask import escape
from flask import render_template
from flask import request

from voyager.db import get_db, execute
from voyager.validate import validate_field, render_errors
from voyager.validate import NAME_RE, INT_RE, DATE_RE

def hospitals(conn):
    return execute(conn, "SELECT h.hospitalName, h.hospitalCity, h.hospitalState, h.hospitalCountry FROM Hospital AS h")

def views(bp):

    @bp.route("/hospitals")
    def _get_all_hospitals():
        with get_db() as conn:
            rows = hospitals(conn)
            for row in rows:
                print(row)
        return render_template("table.html", name="hospitals", rows=rows)
    
   
