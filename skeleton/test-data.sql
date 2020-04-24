
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
