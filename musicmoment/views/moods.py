from collections import namedtuple

from flask import g
from flask import escape
from flask import render_template
from flask import request, redirect

from musicmoment.db import get_db, execute
from musicmoment.validate import validate_field, render_errors
from musicmoment.validate import NAME_RE, INT_RE, DATE_RE

def get_all_moods(conn):
    return execute(conn, "SELECT m.mid, m.mood FROM Moods AS m")

def get_playlist(conn, mood):
    return execute(conn, "SELECT s.name, s.artist, s.url FROM (Songs AS s INNER JOIN Moods as m ON s.mid = m.mid) WHERE m.mood = :mood", {'mood': mood})

# def get_all_sailors_name_from_boat(conn, b_name):
#     return execute(conn, "SELECT DISTINCT s.sid, s.name, s.age, s.experience FROM ((Boats AS b INNER JOIN Voyages As v ON b.bid = v.bid) INNER JOIN Sailors AS s ON v.sid = s.sid) WHERE b.name = :b_name", {'b_name': b_name} )
#
# def get_all_sailors_name_from_date(conn, date):
#     return execute(conn, "SELECT DISTINCT s.sid, s.name, s.age, s.experience FROM (Voyages As v INNER JOIN Sailors AS s ON v.sid = s.sid) WHERE v.date_of_voyage = :date", {'date': date} )
#
# def get_all_sailors_name_from_color(conn, color):
#     return execute(conn, "SELECT DISTINCT s.sid, s.name, s.age, s.experience FROM ((Boats AS b INNER JOIN Voyages As v ON b.bid = v.bid) INNER JOIN Sailors AS s ON v.sid = s.sid) WHERE b.color = :color", {'color': color} )
#
# def add_a_sailor(conn, name, age, experience):
#     if name == None or age == None or experience == None or name == "":
#         raise Exception
#     return execute(conn, "INSERT INTO Sailors(name,age,experience) VALUES (:name,:age,:experience) ", {'name': name, 'age': age, 'experience': experience } )


def views(bp):
    @bp.route("/moods")
    def _get_all_moods():
        with get_db() as conn:
            rows = get_all_moods(conn)
        return render_template("table.html", name="Moods", rows=rows)

    @bp.route("/moods/playlist")
    def _get_playlist():
        with get_db() as conn:
            mood = request.args.get('mood')
            rows = get_playlist(conn, mood)
        return render_template("table.html", name="Moods", rows=rows)
    #
    # @bp.route("/sailors/who-sailed-on-date")
    # def _get_all_sailors_name_from_date():
    #     with get_db() as conn:
    #         date = request.args.get('date')
    #         rows = get_all_sailors_name_from_date(conn, date)
    #     return render_template("table.html", name="Sailors Who Sailed On %s" %date, rows=rows)
    #
    # @bp.route("/sailors/who-sailed-on-boat-of-color")
    # def _get_all_sailors_name_from_color():
    #     with get_db() as conn:
    #         color = request.args.get('color')
    #         rows = get_all_sailors_name_from_color(conn, color)
    #     return render_template("table.html", name="Sailors who sailed on boat of %s color" %color, rows=rows)
    #
    # @bp.route("/sailors/add")
    # def add_sailor_page():
    #     return render_template("form_sailor.html")
    #
    # @bp.route("/sailors/add/submit", methods = ['POST'])
    # def _add_a_sailor():
    #     with get_db() as conn:
    #         name = request.form['name'].lower()
    #         age = request.form['age']
    #         experience = request.form['experience']
    #         try:
    #             add_a_sailor(conn, name, age, experience)
    #         except Exception:
    #             return render_template("form_error.html", errors = ["Your record was not added. Check your inputs."])
    #         rows = get_all_sailors(conn)
    #     return render_template("table.html", name="Sailor Added", rows=rows)
