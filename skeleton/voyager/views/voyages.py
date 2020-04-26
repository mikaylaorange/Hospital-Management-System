from collections import namedtuple

from flask import render_template
from flask import request

from voyager.db import get_db, execute

def voyages(conn):
    return execute(conn, 
    "SELECT v.sid, v.bid, v.date_of_voyage FROM Voyages AS v")
def views(bp):
    @bp.route("/voyages")
    def _voyages():
        with get_db() as conn:
            rows = voyages(conn)
            for row in rows:
                print(row)
        return render_template("table.html", name="voyages", rows=rows)
