
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
('Hannah','Montana',2,'12/04/1992',8);

INSERT INTO Patient
(firstName,lastName,DoB,email)
VALUES
('Alisa','Haynes','8/20/1977','AlisaHaynes08@gmail.com'),
('Nina','Hinton','2/6/1951','NHinton@gmail.com'),
('Harper','Eaton','10/17/1958','HarperE6@gmail.com'),
('Brayden','Lucero','08/07/2010','BLucero@gmail.com'),
('Marcel','Rowland','05/24/2014','Rowland23@gmail.com'),
('Raven','Steware','10/12/1993','RavenSteware@gmail.com'),
('Lawson','Poole','05/11/1954','LPoole@gmail.com'),
('Margaret','Goodman','09/29/1969','Goodman876@gmail.com'),
('Lilianna','Rosales','10/31/2014','LiliannaRosales@gmail.com'),
('Leanna','Wiggins','08/11/1991','LeannaWiggins5@gmail.com'),
('Abigayle','Mann','07/22/2008','AbiMann332@gmail.com'),
('Marcel','Shelton','12/05/1966','MarcelS@gmail.com'),
('Javon','Long','09/19/1988','JLong@gmail.com'),
('Jacquelyn','Gallegos','09/18/2010','JacquelynGallegos5@gmail.com'),
('Marisol','Hamilton','08/16/2008','MHamilton211@gmail.com'),
('Rayne','Guerrero','03/14/1950','RayneGuerrero55@gmail.com'),
('Simon','Osborne','06/29/1972','SOsborne743@gmail.com'),
('Eric','Gregory','08/04/1971','EricGregory11@gmail.com'),
('Kenny','Michaels','06/26/1970','KenMichaels@gmail.com'),
('Kristin','Armstrong','07/08/2010','KArmstrong21@gmail.com'),
('Bryson','Whitehead','11/02/1974','BrysonW45@gmail.com'),
('Deshawn','Hines','12/20/1996','DHines234@gmail.com'),
('Noemi','Anderson','03/04/1990','Noemi1111@gmail.com'),
('Kaya','Moran','02/16/1972','KayM@gmail.com'),
('Elianna','Melton','06/22/1983','EMelton@gmail.com'),
('Odin','Snyder','01/28/1964','OSnyder48@gmail.com'),
('Megan','Lam','12/16/1952','MeganLam24@gmail.com'),
('Ayden','Castro','03/18/1950','AydenCastro5@gmail.com'),
('Larry','Anthony','02/09/1966','LarryAnthony35@gmail.com'),
('Misael','Stark','10/08/1967','MStark2@gmail.com'),
('Tucker','Willis','12/17/1974','TuckerW43@gmail.com'),
('Giovanna','Hines','08/03/1977','GioHines93@gmail.com'),
('Janessa','Underwood','07/02/2014','JUnderwood63@gmail.com');