from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_colors(conn,color):
    return execute(conn, f"SELECT distinct Sailors.name,sailors.sid from Boats inner join Voyages on Boats.bid=Voyages.bid inner join Sailors on Voyages.sid=Sailors.sid where Boats.color='{color}'")

def views(bp):
    @bp.route("/sailors/who-sailed-on-boat-of-color",methods=["GET","POST"])
    def _find_colors():
        if request.method == "POST":
            with get_db() as conn:
                color = request.form['color']
                print(find_colors(conn,color))
                rows = find_colors(conn, color)
                for row in rows:
                    print(row)
            return render_template("table.html", name=color, rows=rows)
