
from flask import Blueprint

from musicmoment.views import index
from musicmoment.views import sailors
from musicmoment.views import boats
from musicmoment.views import voyages

blueprint = Blueprint('views', __name__)
index.views(blueprint)
sailors.views(blueprint)
boats.views(blueprint)
voyages.views(blueprint)

def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
