from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from voyager.db import get_db, execute
def find_date(conn,date):
    return execute(conn, f"SELECT distinct Sailors.name,Sailors.sid from Sailors inner join Voyages on Sailors.sid=Voyages.sid where Voyages.date_of_voyage='{date}'")

def views(bp):
    @bp.route("/sailors/who-sailed-on-date",methods=["GET","POST"])
    def _find_date():
        if request.method == "POST":
            with get_db() as conn:
                date = request.form['date']
                rows = find_date(conn, date)
                for row in rows:
                    print(row)
            return render_template("table.html", name=date, rows=rows)
