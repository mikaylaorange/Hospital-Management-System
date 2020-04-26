
from flask import Blueprint

from voyager.views import index
from voyager.views import hospitals
from voyager.views import departments
from voyager.views import doctors
from voyager.views import patients
from voyager.views import add_hospital
from voyager.views import add_department
from voyager.views import add_patient
from voyager.views import add_doctor
from voyager.views import find_hospitals



blueprint = Blueprint('views', __name__)
index.views(blueprint)
hospitals.views(blueprint)
departments.views(blueprint)
doctors.views(blueprint)
patients.views(blueprint)
# find_sailors.views(blueprint)
# find_popular.views(blueprint)
add_hospital.views(blueprint)
add_department.views(blueprint)
add_patient.views(blueprint)
add_doctor.views(blueprint)
find_hospitals.views(blueprint)


def init_app(app):
    app.register_blueprint(blueprint)
    app.add_url_rule('/', endpoint='index')
    app.add_url_rule('/', endpoint='add_hospital')

