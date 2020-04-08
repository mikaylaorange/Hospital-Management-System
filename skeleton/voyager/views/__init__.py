
from flask import Blueprint

from voyager.views import index
from voyager.views import sailors
from voyager.views import boats
from voyager.views import voyages
from voyager.views import find_sailors
from voyager.views import find_boats
from voyager.views import find_date
from voyager.views import find_colors
from voyager.views import find_popular
from voyager.views import add_sailor
from voyager.views import add_voyage
from voyager.views import add_boat


blueprint = Blueprint('views', __name__)
index.views(blueprint)
find_date.views(blueprint)
sailors.views(blueprint)
boats.views(blueprint)
add_boat.views(blueprint)
add_voyage.views(blueprint)
voyages.views(blueprint)
add_sailor.views(blueprint)
find_boats.views(blueprint)
find_popular.views(blueprint)
find_sailors.views(blueprint)
find_colors.views(blueprint)
def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
    app.add_url_rule('/', endpoint='add_sailors')

