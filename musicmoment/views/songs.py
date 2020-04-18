
from collections import namedtuple

from flask import render_template
from flask import request
from flask import escape

from musicmoment.db import get_db, execute


def songs(conn):
    return execute(conn, "SELECT s.sid, s.name, s.artist, s.url, s.explicit FROM Songs AS s")


def songmood(conn):
    return execute(conn, "SELECT songmood.sid, moods.mood, songs.name, songs.url FROM Songs, Moods, SongMood WHERE songs.sid = songmood.sid and moods.mid = songmood.mid")


def views(bp):
    @bp.route("/songs")
    def _songs():
        with get_db() as conn:
            rows = songs(conn)
        return render_template("songs_table.html", name="Songs", rows=rows)

    @bp.route("/songmood")
    def _songmood():
        with get_db() as conn:
            rows = songmood(conn)
        return render_template("songmood_table.html", name="Songs & Moods", rows=rows)
