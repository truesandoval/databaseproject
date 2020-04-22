from collections import namedtuple

from flask import render_template
from flask import request

from musicmoment.db import get_db, execute
import datetime


def suggestions(conn):
    return execute(conn, "SELECT * FROM Suggestions")


def add_a_sugg(conn, name, mood, song_name, artist, url, comment):
    if name == None or mood == None or song_name == None or artist == None or url == None or comment == None or name == "" or mood == "" or song_name == "" or artist == "" or url == "" or comment == "":
        raise Exception
    return execute(conn, "INSERT INTO Suggestions(username,songname,artist,url,moodname,comment) VALUES (:username,:songname,:artist,:url,:moodname,:comment) ", {'username': name, 'songname': song_name, 'artist': artist, 'url': url, 'moodname': mood, 'comment': comment})


def views(bp):
    @bp.route("/suggestions")
    def _suggestions():
        with get_db() as conn:
            rows = suggestions(conn)
        return render_template("table.html", name="Suggestions", rows=rows)

    @bp.route("/suggestions/add")
    def add_sugg_page():
        return render_template("form_sugg.html")

    @bp.route("/suggestions/add/submit", methods=['POST'])
    def _add_a_sugg():
        with get_db() as conn:
            name = request.form['name']
            mood = request.form['mood']
            song_name = request.form['song_name']
            artist = request.form['artist']
            url = request.form['url']
            comment = request.form['comment']
            try:
                add_a_sugg(conn, name, mood, song_name, artist, url, comment)
            except Exception:
                return render_template("form_error.html", errors=["Your record was not added. Check your inputs."])
            rows = suggestions(conn)
        return render_template("table.html", name="%s Suggestion Added" % name, rows=rows)
