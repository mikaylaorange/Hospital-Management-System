
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
  ('OB-GYN'),
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
(1,2,'2020-01-23',600),
(2,1,'2020-01-23',900),
(3,3,'2020-01-23',1000),
(4,4,'2020-01-23',1100),
(5,5,'2020-01-23',1200);

INSERT INTO Doctor 
(firstName,lastName,departmentID,practiceSince,hospitalID)
VALUES
('Jared','Kushner',1,'1980-01-11',3),
('Jillian','Michaels',5,'2000-02-01',10),
('Keisha','Lance-Bottoms',3,'1989-11-03',1),
('Seokjin','Kim',4,'2010-05-20',4),
('Justin','Jeon',10,'2011-09-13',7),
('Hardy','Davis',2,'1997-09-12',5),
('Hannah','Montana',2,'1992-12-04',8);

INSERT INTO Patient
(firstName,lastName,DoB,email)
VALUES
('Nina','Hinton','1951-02-06','NHinton@gmail.com'),
('Harper','Eaton','1958-10-12','HarperE6@gmail.com'),
('Brayden','Lucero','2010-08-07','BLucero@gmail.com'),
('Marcel','Rowland','2014-05-24','Rowland23@gmail.com'),
('Raven','Steware','1993-10-12','RavenSteware@gmail.com'),
('Lawson','Poole','1954-05-11','LPoole@gmail.com'),
('Margaret','Goodman','1969-09-29','Goodman876@gmail.com'),
('Lilianna','Rosales','2014-10-31','LiliannaRosales@gmail.com'),
('Leanna','Wiggins','1991-08-11','LeannaWiggins5@gmail.com'),
('Abigayle','Mann','2008-07-22','AbiMann332@gmail.com'),
('Marcel','Shelton','1966-10-05','MarcelS@gmail.com'),
('Javon','Long','1988-09-19','JLong@gmail.com'),
('Jacquelyn','Gallegos','2010-09-18','JacquelynGallegos5@gmail.com'),
('Marisol','Hamilton','2008-08-16','MHamilton211@gmail.com'),
('Rayne','Guerrero','1950-03-14','RayneGuerrero55@gmail.com'),
('Simon','Osborne','1972-06-29','SOsborne743@gmail.com'),
('Eric','Gregory','1971-08-04','EricGregory11@gmail.com'),
('Kenny','Michaels','1970-06-26','KenMichaels@gmail.com'),
('Kristin','Armstrong','2010-07-08','KArmstrong21@gmail.com'),
('Bryson','Whitehead','1974-11-02','BrysonW45@gmail.com'),
('Deshawn','Hines','1996-12-20','DHines234@gmail.com'),
('Noemi','Anderson','1990-03-04','Noemi1111@gmail.com'),
('Kaya','Moran','1972-02-14','KayM@gmail.com'),
('Elianna','Melton','1983-05-04','EMelton@gmail.com'),
('Odin','Snyder','1964-01-28','OSnyder48@gmail.com'),
('Megan','Lam','1952-01-16','MeganLam24@gmail.com'),
('Ayden','Castro','1950-09-18','AydenCastro5@gmail.com'),
('Larry','Anthony','1996-09-02','LarryAnthony35@gmail.com'),
('Misael','Stark','1967-04-24','MStark2@gmail.com'),
('Tucker','Willis','1974-12-17','TuckerW43@gmail.com'),
('Giovanna','Hines','1977-08-03','GioHines93@gmail.com'),
('Janessa','Underwood','2014-07-02','JUnderwood63@gmail.com'),
('Kaylin','Sampson','1969-09-09','KSampson7365@gmail.com'),
('Hadassah','Lawrence','2009-04-26','HLawrence22@gmail.com'),
('Sidney','Doyle','1998-06-01','SidneyDoyle@gmail.com'),
('Karter','Phelps','1998-07-02','Phelps32@gmail.com'),
('Braylen','George','1957-05-14','BraylenGeorge12@gmail.com'),
('Madelynn','Patel','1995-04-30','MPatel53@gmail.com'),
('Savion','Robbins','2010-05-03','SavionRobbins@gmail.com'),
('Finley','Johnson','1958-07-16','FinleyJohnson2@gmail.com'),
('Jamie','Long','1952-01-20','JLong11@gmail.com'),
('Holly','Conley','1998-06-01','HConley75@gmail.com'),
('Bentley','Eaton','1997-05-08','BentleyE24@gmail.com'),
('Alfonso','Mckinney','2000-06-22','AlMckinney44@gmail.com'),
('Juan','Rollins','1955-12-22','JuanR7@gmail.com'),
('Meadow','Barr','2014-06-08','MBarr@gmail.com'),
('Barney','Marsh','1986-03-08','BarneyM@gmail.com'),
('Keely','Lane','2003-10-23','KeelyLane5@gmail.com'),
('Randy','Bradley','1971-08-21','RBradley93@gmail.com'),
('Bryce','Schroeder','1954-02-27','BSchroeder21@gmail.com'),
('Rhys','Washington','1950-07-20','RhysW112@gmail.com'),
('Alexandra','Pugh','1973-05-01','AlexPugh44@gmail.com'),
('Monique','Wall','1985-05-31','MoniqueWall52@gmail.com'),
('Kash','Wheeler','1961-08-16','KWheeler32@gmail.com'),
('Anika','Sweeney','1976-07-31','AnikaS@gmail.com'),
('Shaylee','Turner','1982-05-15','ShayleeT@gmail.com'),
('Shyanee','Mcmahon','1976-06-06','ShayneeM@gmail.com'),
('Karma','Finley','2010-09-09','KarmaF@gmail.com'),
('Diya','Levine','1961-09-06','DiyaLevine68@gmail.com'),
('Christine','Marquez','1973-07-19','CMarquez33@gmail.com'),
('Claire','Navarro','1961-05-21','ClaireNavarro445@gmail.com'),
('Donavan','Benton','1987-01-19','DonBenton47@gmail.com'),
('Carmelo','Huff','2003-08-20','MeloHuff77@gmail.com'),
('Weston','Pearson','1966-08-27','WPearson345@gmail.com'),
('Dalia','Watson','1978-01-05','DaliaW995@gmail.com'),
('Serenity','Herbert','2006-08-07','SerenityHerbert122@gmail.com'),
('Amber','Mayer','1964-08-10','AMayer2@gmail.com'),
('Romeo','Conner','1987-08-22','RomeoConner@gmail.com'),
('Remington','Barnes','1959-09-14','Remington223B@gmail.com'),
('Willie','May','2011-01-13','WillieMay43@gmail.com'),
('Heidy','Stokes','1965-09-14','HStokes321@gmail.com'),
('Ernest','Richard','2004-08-06','ErnestRich678@gmail.com'),
('Fatima','Grimes','2007-11-05','FatimaG322@gmail.com'),
('Davina','Salinas','2001-05-11','DSalinas8@gmail.com'),
('Joshua','Mcdowell','2003-09-13','JoshMcdowell453@gmail.com'),
('Weston','Schaefer','1957-04-03','WestonSchaefer8@gmail.com'),
('Mohammad','Novarro','2007-10-03','MNovarro34@gmail.com'),
('Pierce','Maldonado','1954-01-15','PierceM56@gmail.com'),
('Coleman','Hutchinson','2005-09-05','ColemanH33@gmail.com'),
('Kyle','Mack','1965-01-27','KMack444@gmail.com'),
('Anderson','Mckee','1990-01-07','AndersonMckee8@gmail.com'),
('Jacey','Freeman','1979-04-06','JaceyF437@gmail.com'),
('Kendall','Nunez','1979-06-04','KendallN@gmail.com'),
('Ashanti','Haas','2010-12-22','AshantiHaas7@gmail.com'),
('Landin','Middleton','1965-11-08','LandinM537@gmail.com'),
('Kimora','Velazquez','2004-12-16','KimoraVelazquez782@gmail.com'),
('Jimmy','Mclaughlin','1980-06-18','JimmyM321@gmail.com'),
('Madalynn','Pearson','2003-07-09','MadalynnPearson344@gmail.com'),
('Allen','Castaneda','1976-12-05','AllenC43@gmail.com'),
('Michelle','Reynolds','2015-08-26','MichelleReynolds6@gmail.com'),
('Deja','Combs','1995-12-23','DejaCombs344@gmail.com'),
('Jaylin','Mooney','1968-02-03','JaylinMooney54@gmail.com'),
('Caiden','Gill','1976-11-27','CaidenGill@gmail.com'),
('Angelica','Shaw','1984-08-05','AngelicaShaw7@gmail.com'),
('Roy','Shields','1996-01-04','RShields5@gmail.com'),
('Aisha','Lumberton','1993-09-16','AishaL@gmail.com'),
('Matilda','Medina','2002-08-23','MatildaM25@gmail.com'),
('Alaina','Kaiser','1966-05-12','AlainaKaiser55@gmail.com'),
('Alayna','Frederick','1965-08-21','AlaynaF3@gmail.com');