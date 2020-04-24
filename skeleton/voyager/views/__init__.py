
from flask import Blueprint

from voyager.views import index
from voyager.views import hospitals
from voyager.views import departments
from voyager.views import voyages
from voyager.views import find_sailors
from voyager.views import find_boats
from voyager.views import find_date
from voyager.views import find_colors
from voyager.views import find_popular
from voyager.views import add_hospital
from voyager.views import add_voyage
from voyager.views import add_department


blueprint = Blueprint('views', __name__)
index.views(blueprint)
find_date.views(blueprint)
hospitals.views(blueprint)
departments.views(blueprint)
add_department.views(blueprint)
add_voyage.views(blueprint)
voyages.views(blueprint)
add_hospital.views(blueprint)
find_boats.views(blueprint)
find_popular.views(blueprint)
find_sailors.views(blueprint)
find_colors.views(blueprint)
def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
    app.add_url_rule('/', endpoint='add_hospital')

