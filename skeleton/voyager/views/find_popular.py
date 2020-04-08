from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_popular(conn):
    return execute(conn, f"SELECT distinct count(Boats.bid),Boats.name from Voyages inner join Boats on Voyages.bid=Boats.bid group by Boats.bid order by COUNT(*) DESC LIMIT 1")

def views(bp):
    @bp.route("/boats/by-popularity")
    def _find_popular():
            with get_db() as conn:
                rows = find_popular(conn)
                for row in rows:
                    print(row)
            return render_template("table.html", name="Popular Boat", rows=rows)
