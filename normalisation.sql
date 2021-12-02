drop table Apps_NOT_Normalized;
Create Table Apps_NOT_Normalized(
  App_No integer,
  StudentID integer,
  StudentName varchar(50),
  Street varchar(100),
  State varchar(30),
  ZipCode varchar(7),
  App_Year integer,
  ReferenceName varchar(100),
  RefInstitution  varchar(100),
  ReferenceStatement varchar(500),
  PriorSchoolId integer,
  PriorSchoolAddr varchar(100),
  GPA number(2)
);

insert into Apps_NOT_Normalized values(1,1,'Mark','Grafton Street','New York','NY234',2013,'Dr. Jones','University of Dublin - Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(1,1,'Mark','Grafton Street','New York','NY234',2014,'Dr. Jones','University of Dublin - Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(2,1,'Mark','White Street','Florida','Flo435',2017,'Dr. Jones','University of Dublin - Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(2,1,'Mark','White Street','Florida','Flo435',2017,'Dr. Jones','University of Dublin - Trinity College','Good guy',2,'Loreto College',87);
insert into Apps_NOT_Normalized values(3,1,'Mark','White Street','Florida','Flo435',2021,'Dr. Jones','University of Limerick','Very Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(3,1,'Mark','White Street','Florida','Flo435',2021,'Dr. Jones','University of Limerick','Very Good guy',2,'Loreto College',87);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2020,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2020,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2019,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2019,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2021,'Dr. Byrne','University College Dublin','Average',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2021,'Dr. Byrne','University College Dublin','Average',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2021,'Dr. Byrne','University College Dublin','Average',4,'DBS',66);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2021,'Dr. Byrne','University College Dublin','Average',5,'Harvard',45);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2021,'Dr. Jones','University of Dublin - Trinity College','Poor',1,'Castleknock',45);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2021,'Dr. Jones','University of Dublin - Trinity College','Poor',3,'St. Patrick',67);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2021,'Dr. Jones','University of Dublin - Trinity College','Poor',4,'DBS',23);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2021,'Dr. Jones','University of Dublin - Trinity College','Poor',5,'Harvard',67);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2018,'Prof. Cahill','University College Cork','Excellent',1,'Castleknock',45);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2018,'Prof. Cahill','University College Cork','Excellent',3,'St. Patrick',67);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2018,'Prof. Cahill','University College Cork','Excellent',4,'DBS',23);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2018,'Prof. Cahill','University College Cork','Excellent',5,'Harvard',67);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Fair',3,'St. Patrick',29);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Fair',4,'DBS',88);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Fair',5,'Harvard',66);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Good girl',3,'St. Patrick',44);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Good girl',4,'DBS',55);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Good girl',5,'Harvard',66);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2016,'Prof. Lillis','TU Dublin (formerly DIT)','Good girl',1,'Castleknock',74);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2015,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',3,'St. Patrick',44);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2015,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',4,'DBS',55);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2015,'Dr. Byrne','TU Dublin (formerly DIT)','Perfect',5,'Harvard',66);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2019,'Prof. Cahill','University College Cork','Messy',1,'Castleknock',88);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2019,'Prof. Cahill','University College Cork','Messy',3,'St. Patrick',77);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2019,'Prof. Cahill','University College Cork','Messy',4,'DBS',56);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2019,'Prof. Cahill','University College Cork','Messy',2,'Loreto College',45);

commit;

select * from Apps_NOT_Normalized;

DROP TABLE Student;
DROP TABLE Applications;
DROP TABLE Address;
DROP TABLE PriorSchool;
DROP TABLE StudentAddress;
DROP TABLE StudentPriorSchool;
DROP TABLE Referee;
DROP TABLE Reference;
-- DDL for ceating Tables
CREATE TABLE Student(
    StudentID INTEGER,
    StudentName VARCHAR(50)
);

ALTER TABLE Student ADD CONSTRAINT pk_student PRIMARY KEY (StudentID);

CREATE TABLE Applications(
    App_No INTEGER,
    App_Year INTEGER,
    StudentID INTEGER
);

ALTER TABLE Applications ADD CONSTRAINT pk_application PRIMARY KEY (App_No, App_year);
ALTER TABLE Applications ADD CONSTRAINT fk_student_id FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE Applications ADD CONSTRAINT uc_student_year UNIQUE (App_Year, StudentID);

CREATE TABLE Address(
    AddressID INTEGER,
    Street VARCHAR(100),
    State VARCHAR(30),
    ZipCode VARCHAR(7)
);

ALTER TABLE Address ADD CONSTRAINT pk_address PRIMARY KEY (AddressID);

CREATE TABLE PriorSchool(
    PriorSchoolId INTEGER,
    PriorSchoolAddr VARCHAR(100)
);

ALTER TABLE PriorSchool ADD CONSTRAINT pk_priorschool PRIMARY KEY (PriorSchoolId);

CREATE TABLE StudentAddress(
    StudentID INTEGER,
    AddressID INTEGER
);

ALTER TABLE StudentAddress ADD CONSTRAINT pk_student_address PRIMARY KEY (StudentID, AddressID);
ALTER TABLE StudentAddress ADD CONSTRAINT fk_student_address_student_id FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE StudentAddress ADD CONSTRAINT fk_address_id FOREIGN KEY (AddressID) REFERENCES Address(AddressID);

CREATE TABLE StudentPriorSchool(
    StudentID INTEGER,
    PriorSchoolId INTEGER,
    GPA NUMBER(2)
);

ALTER TABLE StudentPriorSchool ADD CONSTRAINT pk_student_prior_school PRIMARY KEY(PriorSchoolId, StudentID);
ALTER TABLE StudentPriorSchool ADD CONSTRAINT fk_prior_school_student_id FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE StudentPriorSchool ADD CONSTRAINT fk_prior_school_id FOREIGN KEY (PriorSchoolId) REFERENCES PriorSchool(PriorSchoolId);

CREATE TABLE Referee(
	Ref_ID INTEGER,
	ReferenceName VARCHAR(100),  
	RefInstitution  VARCHAR(100)
);

ALTER TABLE Referee ADD CONSTRAINT pk_refereel PRIMARY KEY (Ref_ID);
ALTER TABLE Referee ADD CONSTRAINT uc_refname_refinst UNIQUE (ReferenceName, RefInstitution);

CREATE TABLE Reference(
    App_No INTEGER, 
	App_Year INTEGER,
	Ref_ID INTEGER,
	ReferenceStatement VARCHAR(500)
);

ALTER TABLE Reference ADD CONSTRAINT pk_reference PRIMARY KEY (App_No, App_Year, Ref_ID);
ALTER TABLE Reference ADD CONSTRAINT fk_application FOREIGN KEY (App_No, App_Year) REFERENCES Applications(App_No, App_Year);
ALTER TABLE Reference ADD CONSTRAINT fk_referee FOREIGN KEY (Ref_ID) REFERENCES Referee(Ref_ID);
-- Inserting into Student Table
INSERT INTO Student VALUES(1, 'Mark');
INSERT INTO Student VALUES(2, 'Sarah');
INSERT INTO Student VALUES(3, 'Paul');
INSERT INTO Student VALUES(4, 'Jack');
INSERT INTO Student VALUES(5, 'Mary');
INSERT INTO Student VALUES(6, 'Susan');

SELECT studentName, studentID FROM apps_not_normalized;
--Inserting into Address Table
INSERT INTO Address VALUES(1,'Grafton Street','New York','NY234');
INSERT INTO Address VALUES(2,'White Street','Florida','Flo435');
INSERT INTO Address VALUES(3,'Green Road','California','Cal123');
INSERT INTO Address VALUES(4,'Red Crescent','Carolina','Ca455');
INSERT INTO Address VALUES(5,'Yellow Park','Mexico','Mex1');
INSERT INTO Address VALUES(6,'Dartry Road','Ohio','Oh34');
INSERT INTO Address VALUES(7,'Malahide Road','Ireland','IRE');
INSERT INTO Address VALUES(8,'Black Bay','Kansas','Kan45');
INSERT INTO Address VALUES(9,'River Road','Kansas','Kan45');
-- Inserting into Student Address Table
INSERT INTO StudentAddress VALUES (1,1);
INSERT INTO StudentAddress VALUES (1,2);
INSERT INTO StudentAddress VALUES (2,3);
INSERT INTO StudentAddress VALUES (3,4);
INSERT INTO StudentAddress VALUES (3,5);
INSERT INTO StudentAddress VALUES (4,6);
INSERT INTO StudentAddress VALUES (5,7);
INSERT INTO StudentAddress VALUES (5,8);
INSERT INTO StudentAddress VALUES (6,9);

-- SELECT student.studentName, address.street, address.state
-- FROM studentaddress
-- JOIN student USING (studentID)
-- JOIN address USING (AddressID);

-- SELECT studentID, studentName, street, state from apps_not_normalized;
-- Inserting into Prior School Table
INSERT INTO PriorSchool VALUES (1,'Castleknock');
INSERT INTO PriorSchool VALUES (2,'Loreto College');
INSERT INTO PriorSchool VALUES (3,'St. Patrick');
INSERT INTO PriorSchool VALUES (4,'DBS');
INSERT INTO PriorSchool VALUES (5,'Harvard');
-- Inserting into Referee Table
INSERT INTO Referee VALUES (1,'Dr. Jones', 'University of Dublin - Trinity College');
INSERT INTO Referee VALUES (2,'Dr. Jones', 'University of Limerick');
INSERT INTO Referee VALUES (3,'Dr. Byrne', 'TU Dublin (formerly DIT)');
INSERT INTO Referee VALUES (4,'Dr. Byrne', 'University College Dublin');
INSERT INTO Referee VALUES (5,'Prof. Cahill', 'University College Cork');
INSERT INTO Referee VALUES (6,'Prof. Lillis', 'TU Dublin (formerly DIT)');

-- SELECT studentid, priorschoolid, priorschooladdr, gpa FROM apps_not_normalized ORDER BY studentid, priorschoolid;
-- Inserting into Student Prior School Table
INSERT INTO StudentPriorSchool VALUES(1,1,65);
INSERT INTO StudentPriorSchool VALUES(1,2,87);
INSERT INTO StudentPriorSchool VALUES(2,1,90);
INSERT INTO StudentPriorSchool VALUES(2,3,76);
INSERT INTO StudentPriorSchool VALUES(2,4,66);
INSERT INTO StudentPriorSchool VALUES(2,5,45);
INSERT INTO StudentPriorSchool VALUES(3,1,45);
INSERT INTO StudentPriorSchool VALUES(3,3,67);
INSERT INTO StudentPriorSchool VALUES(3,4,23);
INSERT INTO StudentPriorSchool VALUES(3,5,67);
INSERT INTO StudentPriorSchool VALUES(4,3,29);
INSERT INTO StudentPriorSchool VALUES(4,4,88);
INSERT INTO StudentPriorSchool VALUES(4,5,66);
INSERT INTO StudentPriorSchool VALUES(5,1,74);
INSERT INTO StudentPriorSchool VALUES(5,3,44);
INSERT INTO StudentPriorSchool VALUES(5,4,55);
INSERT INTO StudentPriorSchool VALUES(5,5,66);
INSERT INTO StudentPriorSchool VALUES(6,1,88);
INSERT INTO StudentPriorSchool VALUES(6,2,45);
INSERT INTO StudentPriorSchool VALUES(6,3,77);
INSERT INTO StudentPriorSchool VALUES(6,4,56);

-- SELECT * FROM apps_not_normalized;

-- select app_no, app_year, studentid from Apps_NOT_Normalized ORDER BY app_year ASC, app_no;
-- Inserting into Application Table
INSERT INTO Application VALUES(1,2013,1);
INSERT INTO Application VALUES(1,2014,1);
INSERT INTO Application VALUES(1,2015,5);
INSERT INTO Application VALUES(1,2016,4);
INSERT INTO Application VALUES(2,2016,5);
INSERT INTO Application VALUES(2,2017,1);
INSERT INTO Application VALUES(3,2018,3);
INSERT INTO Application VALUES(2,2019,2);
INSERT INTO Application VALUES(3,2019,6);
INSERT INTO Application VALUES(2,2020,2);
INSERT INTO Application VALUES(1,2021,3);
INSERT INTO Application VALUES(2,2021,2);
INSERT INTO Application VALUES(3,2021,1); 

-- select app_no, app_year, referencename, refinstitution, referencestatement from Apps_NOT_Normalized ORDER BY app_no ASC, app_year;
-- Inserting into Reference Table
INSERT INTO Reference VALUES(1,2013,1,'Good Guy');
INSERT INTO Reference VALUES(1,2014,1,'Good Guy');
INSERT INTO Reference VALUES(1,2015,3,'Perfect');
INSERT INTO Reference VALUES(1,2016,6,'Fair');
INSERT INTO Reference VALUES(1,2021,1,'Poor');
INSERT INTO Reference VALUES(2,2016,6,'Good girl');
INSERT INTO Reference VALUES(2,2017,1,'Good Guy');
INSERT INTO Reference VALUES(2,2019,3,'Perfect');
INSERT INTO Reference VALUES(2,2020,3,'Perfect');
INSERT INTO Reference VALUES(2,2021,4,'Average');
INSERT INTO Reference VALUES(3,2018,6,'Excellent');
INSERT INTO Reference VALUES(3,2019,5,'Messy');
INSERT INTO Reference VALUES(3,2021,2,'Very Good guy');

