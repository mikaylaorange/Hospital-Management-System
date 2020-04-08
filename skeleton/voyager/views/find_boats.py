from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_boats(conn,sailor_name):
    return execute(conn, f"SELECT distinct Boats.name,Boats.bid from Sailors inner join Voyages on Sailors.sid=Voyages.sid inner join Boats on Voyages.bid=Boats.bid where Sailors.name='{sailor_name}'")

def views(bp):
    @bp.route("/boats/sailed-by",methods=["GET","POST"])
    def _find_boats():
        if request.method == "POST":
            with get_db() as conn:
                sailor_name = request.form['sailor-name']
                rows = find_boats(conn, sailor_name)
                for row in rows:
                    print(row)
            return render_template("table.html", name=sailor_name, rows=rows)
