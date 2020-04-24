-- CREATE TABLE IF NOT EXISTS Sailors (
--   sid INTEGER PRIMARY KEY AUTOINCREMENT,
--   name TEXT,
--   age INTEGER,
--   experience INTEGER -- years of experience
-- );

-- CREATE TABLE IF NOT EXISTS Boats (
--   bid INTEGER PRIMARY KEY AUTOINCREMENT,
--   name TEXT,
--   color TEXT
-- );

-- CREATE TABLE IF NOT EXISTS Voyages (
--   sid INTEGER NOT NULL,
--   bid INTEGER NOT NULL,
--   date_of_voyage DATE NOT NULL,
--   PRIMARY KEY(sid, bid, date_of_voyage)
-- );


CREATE TABLE IF  NOT EXISTS Hospital (
  hospitalID INTEGER PRIMARY KEY AUTOINCREMENT,
  hospitalName TEXT,
  hospitalCity TEXT,
  hospitalState TEXT,
  hospitalCountry TEXT
);
CREATE TABLE IF NOT EXISTS Patient (
  patientID INTEGER PRIMARY KEY AUTOINCREMENT,
  firstName TEXT,
  lastName TEXT,
  DoB DATE NOT NULL,
  email TEXT
);
CREATE TABLE IF NOT EXISTS Department (
  departmentID INTEGER PRIMARY KEY AUTOINCREMENT,
  departmentName TEXT
);

CREATE TABLE IF NOT EXISTS Doctor (
  doctorID INTEGER PRIMARY KEY AUTOINCREMENT,
  firstName TEXT,
  lastName TEXT,
  departmentID REFERENCES Department(departmentID),
  practiceSince DATE NOT NULL,
  hospitalID REFERENCES Hospital(hospitalID)
);
CREATE TABLE IF NOT EXISTS Office (
  officeID INTEGER PRIMARY KEY AUTOINCREMENT,
  doctorID REFERENCES Doctor(doctorID),
  officeDays TEXT,
  hourStart TIME,
  hourEnd TIME,
  apptDuration INTEGER
);
CREATE TABLE IF NOT EXISTS Appointments (
  appointmentID INTEGER PRIMARY KEY AUTOINCREMENT,
  patientID REFERENCES Patient(patientID),
  officeID REFERENCES Office(officeID),
  apptDate DATE,
  apptTime TIME
);