-- CREATE TABLE IF NOT EXISTS Sailors (
--   sid SERIAL8 PRIMARY KEY,
--   name TEXT,
--   age BIGINT,
--   experience BIGINT -- years of experience
-- );

-- CREATE TABLE IF NOT EXISTS Boats (
--   bid SERIAL8 PRIMARY KEY,
--   name TEXT,
--   color TEXT
-- );

-- CREATE TABLE IF NOT EXISTS Voyages (
--   sid BIGINT NOT NULL,
--   bid BIGINT NOT NULL,
--   date_of_voyage DATE NOT NULL,
--   PRIMARY KEY(sid, bid, date_of_voyage)
-- );

CREATE TABLE IF  NOT EXISTS Hospital (
  hospitalID SERIAL8 PRIMARY KEY,
  hospitalName TEXT,
  hospitalCity TEXT,
  hospitalState TEXT,
  hospitalCountry TEXT
);
CREATE TABLE IF NOT EXISTS Patient (
  patientID BIGINT PRIMARY KEY,
  firstName TEXT,
  lastName TEXT,
  DoB DATE NOT NULL
  email TEXT
);
CREATE TABLE IF NOT EXISTS Department (
  departmentID SERIAL8 PRIMARY KEY
  departmentName TEXT
);

CREATE TABLE IF NOT EXISTS Doctor (
  doctorID BIGINT PRIMARY KEY,
  firstName TEXT,
  lastName TEXT,
  FOREIGN KEY (departmentID) REFERENCES Department(departmentID),
  practiceSince DATE NOT NULL,
  FOREIGN KEY (hospitalID) REFERENCES Hospital(hospitalID),
);
CREATE TABLE IF NOT EXISTS Office (
  officeID BIGINT PRIMARY KEY,
  FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID),
  officeDays TEXT

);

