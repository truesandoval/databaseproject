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
    return execute(conn, "SELECT s.name, s.artist, s.url FROM Songs AS s, SongMood AS sm, Moods AS m WHERE s.sid = sm.sid and sm.mid = m.mid and m.mood = :mood", {'mood': mood})


def views(bp):
    @bp.route("/moods")
    def _get_all_moods():
        with get_db() as conn:
            rows = get_all_moods(conn)
        return render_template("table.html", name="Moods", rows=rows)

    @bp.route("/moods/playlist", methods=['GET', 'POST'])
    def _get_playlist():
        with get_db() as conn:
            mood = request.args.get('mood')
            rows = get_playlist(conn, mood)
        return render_template("filter_songs_table.html", name=mood, rows=rows)
