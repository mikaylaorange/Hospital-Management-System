
from flask import Blueprint

from voyager.views import index
from voyager.views import hospitals
from voyager.views import departments
from voyager.views import doctors
from voyager.views import patients
from voyager.views import find_hospitals
from voyager.views import find_boats
from voyager.views import find_date
from voyager.views import find_colors
from voyager.views import find_popular
from voyager.views import add_hospital
from voyager.views import add_doctor
from voyager.views import add_department
from voyager.views import add_patient


blueprint = Blueprint('views', __name__)
index.views(blueprint)
find_date.views(blueprint)
hospitals.views(blueprint)
departments.views(blueprint)
add_department.views(blueprint)
add_doctor.views(blueprint)
doctors.views(blueprint)
patients.views(blueprint)
add_patient.views(blueprint)
add_hospital.views(blueprint)
find_boats.views(blueprint)
find_popular.views(blueprint)
find_hospitals.views(blueprint)
find_colors.views(blueprint)
def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
    app.add_url_rule('/', endpoint='add_hospital')

