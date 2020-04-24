
-- INSERT INTO Sailors
--   (name, age, experience)
-- VALUES
--   ('john', 32, 5),
--   ('jane', 22, 3),
--   ('janie', 45, 17);

-- INSERT INTO Boats
--   (name, color)
-- VALUES
--   ('Water Bug', 'blue'),
--   ('Sundance', 'green'),
--   ('Moonrise', 'red');

-- INSERT INTO Voyages
--   (sid, bid, date_of_voyage)
-- VALUES
--   (1, 1, '2020-02-01'),
--   (1, 2, '2020-02-02'),
--   (1, 3, '2020-02-03'),
--   (2, 1, '2020-02-02'),
--   (2, 1, '2020-02-03'),
--   (3, 3, '2020-02-01');

INSERT INTO Hospital
  (hospitalName, hospitalCity, hospitalState, hospitalCountry)
VALUES
  ('County General Hospital','Chicago', 'IL', 'USA'),
  ('Sacred Heart Hospital','Honolulu', 'HI', 'USA'),
  ('Seattle Grace Hospital','Seattle', 'WA', 'USA'),
  ('Chicago Hope Hospital','Chicago', 'IL', 'USA'),
  ('Eastman Medical Center','Los Angeles', 'CA', 'USA'),
  ('Scripps Medical Center','La Jolla', 'CA', 'USA'),
  ('Arrowhead Regional Medical Center','San Bernardino', 'CA', 'USA'),
  ('Howard University Hospital','Chicago', 'IL', 'USA'),
  ('Keck Hospital','Los Angeles', 'CA', 'USA'),
  ('UCSD MEdical Center','San Diego', 'CA', 'USA');

  INSERT INTO Department
  (departmentName)
VALUES
  ('Emergency'),
  ('Cardiology'),
  ('ICU'),
  ('Neurology'),
  ('Oncology'),
  ('OB/GYN'),
  ('Maternity'),
  ('NICU'),
  ('Radiology'),
  ('OR');

INSERT INTO  Office 
(doctorID,officeDays,hourStart,hourEnd,apptDuration)
VALUES

(3,'MTWRF',540,1020,1),
(4,'W',540,1020,2),
(5,'MT',540,1020,1);

INSERT INTO Appointments
(patientID,officeID,apptDate,apptTime)
VALUES
(1,2,'01/23/2020',600),
(2,1,'01/23/2020',600),
(3,3,'01/23/2020',600),
(4,4,'01/23/2020',600),
(5,5,'01/23/2020',600);

INSERT INTO Doctor 
(firstName,lastName,departmentID,practiceSince,hospitalID)
VALUES
('Jared','Kushner',1,'01/11/1980',3),
('Jillian','Michaels',5,'02/01/2000',10),
('Keisha','Lance-Bottoms',3,'11/03/1989',1),
('Seokjin','Kim',4,'05/20/2010',4),
('Justin','Jeon',10,'09/13/2011',7),
('Hardy','Davis',2,'09/12/1997',5),
('Hannah','Montana',2,'12/04/1992',8)



  