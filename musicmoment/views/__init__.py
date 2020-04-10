
from flask import Blueprint

from musicmoment.views import index
from musicmoment.views import suggestions
from musicmoment.views import moods
from musicmoment.views import songs

blueprint = Blueprint('views', __name__)
index.views(blueprint)
moods.views(blueprint)
suggestions.views(blueprint)
songs.views(blueprint)

def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
