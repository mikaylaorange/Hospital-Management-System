
from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute

def departments(conn):
    return execute(conn, "SELECT d.departmentName as Type FROM Department AS d")




def views(bp):
    @bp.route("/departments")
    def _departments():
        with get_db() as conn:
            rows = departments(conn)
            print(rows)
            
        return render_template("table.html", name="Departments", rows=rows)




