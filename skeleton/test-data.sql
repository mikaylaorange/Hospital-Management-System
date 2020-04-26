
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
  ('UCSD Medical Center','San Diego', 'CA', 'USA');

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
('Kaylin','Sampson','09/09/1969','KSampson7365@gmail.com'),
('Hadassah','Lawrence','04/26/2009','HLawrence22@gmail.com'),
('Sidney','Doyle','06/01/1998','SidneyDoyle@gmail.com');
('Karter','Phelps','07/25/1998','Phelps32@gmail.com');
('Braylen','George','04/15/1957','BraylenGeorge12@gmail.com');
('Madelynn','Patel','04/30/1995','MPatel53@gmail.com');
('Savion','Robbins','05/13/2010','SavionRobbins@gmail.com');
('Finley','Johnson','07/16/1958','FinleyJohnson2@gmail.com');
('Jamie','Long','01/20/1952','JLong11@gmail.com');
('Holly','Conley','06/01/1998','HConley75@gmail.com');
('Bentley','Eaton','05/08/1997','BentleyE24@gmail.com');
('Alfonso','Mckinney','06/22/2000','AlMckinney44@gmail.com');
('Juan','Rollins','12/22/1955','JuanR7@gmail.com');
('Meadow','Barr','06/08/2014','MBarr@gmail.com');
('Barney','Marsh','03/08/1986','BarneyM@gmail.com');
('Keely','Lane','10/23/2003','KeelyLane5@gmail.com');
('Randy','Bradley','07/18/1971','RBradley93@gmail.com');
('Bryce','Schroeder','02/27/1954','BSchroeder21@gmail.com');
('Rhys','Washington','07/20/1950','RhysW112@gmail.com');
('Alexandra','Pugh','05/10/1973','AlexPugh44@gmail.com');
('Monique','Wall','05/31/1985','MoniqueWall52@gmail.com');
('Kash','Wheeler','08/16/1961','KWheeler32@gmail.com');
('Anika','Sweeney','07/31/1976','AnikaS@gmail.com');
('Shaylee','Turner','05/15/1982','ShayleeT@gmail.com');
('Shyanee','Mcmahon','06/06/1976','ShayneeM@gmail.com');
('Karma','Finley','09/09/2010','KarmaF@gmail.com');
('Diya','Levine','09/06/1961','DiyaLevine68@gmail.com');
('Christine','Marquez','07/19/1973','CMarquez33@gmail.com');
('Claire','Navarro','05/21/1961','ClaireNavarro445@gmail.com');
('Donavan','Benton','01/19/1987','DonBenton47@gmail.com');
('Carmelo','Huff','08/20/2003','MeloHuff77@gmail.com');
('Weston','Pearson','08/27/1966','WPearson345@gmail.com');
('Dalia','Watson','01/05/1978','DaliaW995@gmail.com');
('Serenity','Herbert','08/07/2006','SerenityHerbert122@gmail.com');
('Amber','Mayer','08/10/1964','AMayer2@gmail.com');
('Romeo','Conner','08/22/1987','RomeoConner@gmail.com');
('Remington','Barnes','09/14/1959','Remington223B@gmail.com');
('Willie','May','01/13/2011','WillieMay43@gmail.com');
('Heidy','Stokes','09/14/1965','HStokes321@gmail.com');
('Ernest','Richard','08/06/2004','ErnestRich678@gmail.com');
('Fatima','Grimes','11/05/2007','FatimaG322@gmail.com');
('Davina','Salinas','05/11/2001','DSalinas8@gmail.com');
('Joshua','Mcdowell','09/13/2003','JoshMcdowell453@gmail.com');
('Weston','Schaefer','10/11/1957','WestonSchaefer8@gmail.com');
('Mohammad','Novarro','10/23/2007','MNovarro34@gmail.com');
('Pierce','Maldonado','01/15/1954','PierceM56@gmail.com');
('Coleman','Hutchinson','09/05/2005','ColemanH33@gmail.com');
('Kyle','Mack','01/27/1965','KMack444@gmail.com');
('Anderson','Mckee','01/07/1990','AndersonMckee8@gmail.com');
('Jacey','Freeman','04/06/1979','JaceyF437@gmail.com');
('Kendall','Nunez','06/04/1979','KendallN@gmail.com');
('Ashanti','Haas','12/22/2010','AshantiHaas7@gmail.com');
('Landin','Middleton','11/08/1955','LandinM537@gmail.com');
('Kimora','Velazquez','12/16/2004','KimoraVelazquez782@gmail.com');
('Jimmy','Mclaughlin','06/18/1980','JimmyM321@gmail.com');
('Madalynn','Pearson','07/09/2003','MadalynnPearson344@gmail.com');
('Allen','Castaneda','12/05/1976','AllenC43@gmail.com');
('Michelle','Reynolds','08/26/2015','MichelleReynolds6@gmail.com');
('Deja','Combs','12/23/1995','DejaCombs344@gmail.com');
('Jaylin','Mooney','02/03/1968','JaylinMooney54@gmail.com');
('Caiden','Gill','11/27/1976','CaidenGill@gmail.com');
('Angelica','Shaw','08/05/1984','AngelicaShaw7@gmail.com');
('Roy','Shields','01/04/1996','RShields5@gmail.com');
('Aisha','Lumberton','09/16/1993','AishaL@gmail.com');
('Matilda','Medina','08/23/2002','MatildaM25@gmail.com');
('Alaina','Kaiser','05/12/1966','AlainaKaiser55@gmail.com');
('Alayna','Frederick','08/21/1965','AlaynaF3@gmail.com');
