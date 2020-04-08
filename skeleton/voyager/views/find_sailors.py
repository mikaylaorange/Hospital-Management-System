from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_sailors(conn,boat_name):
    return execute(conn, f"SELECT distinct Sailors.name,sailors.sid from Boats inner join Voyages on Boats.bid=Voyages.bid inner join Sailors on Voyages.sid=Sailors.sid where Boats.name='{boat_name}'")

def views(bp):
    @bp.route("/sailors/who-sailed",methods=["GET","POST"])
    def _find_sailors():
        if request.method == "POST":
            with get_db() as conn:
                boat_name = request.form['boat-name']
                print(find_sailors(conn,boat_name))
                rows = find_sailors(conn, boat_name)
                for row in rows:
                    print(row)
            return render_template("table.html", name=boat_name, rows=rows)
