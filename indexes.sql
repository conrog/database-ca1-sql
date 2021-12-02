drop table events_attended;
drop table locations;
drop table events;
drop table club_members;
DROP SEQUENCE members_seq;
DROP SEQUENCE locations_seq;
DROP SEQUENCE events_seq;


CREATE TABLE club_members(
    member_id INT NULL,
    first_name VARCHAR2(50) NULL,
    last_name VARCHAR2(50) NULL,
    full_part CHAR(1) NULL,
    join_date DATE NULL,
    email VARCHAR2(100) NULL
);


CREATE SEQUENCE members_seq START WITH 1;
CREATE OR REPLACE TRIGGER club_members_id
BEFORE INSERT ON club_members
FOR EACH ROW
BEGIN
    SELECT club_members_seq.NEXTVAL
    INTO :new.member_id
    FROM dual;
END;

CREATE TABLE locations(
    location_id INT,
    location_name VARCHAR2(50) NULL
);

CREATE SEQUENCE locations_seq START WITH 1;
CREATE OR REPLACE TRIGGER locations_id
BEFORE INSERT ON locations
FOR EACH ROW
BEGIN
    SELECT locations_seq.NEXTVAL
    INTO :new.location_id
    FROM dual;
END;

CREATE TABLE events(
    event_id INT,
    event_name VARCHAR2(50) NULL,
    event_date DATE NULL,
    location INT NULL
);


CREATE SEQUENCE events_seq START WITH 1;


CREATE OR REPLACE TRIGGER events_id
BEFORE INSERT ON events
FOR EACH ROW
BEGIN
    SELECT events_seq.NEXTVAL
    INTO :new.event_id
    FROM dual;
END;

CREATE TABLE events_attended(
    event_id INT NULL,
    member_id INT NULL
);

-- Insert into club_members table

INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (1, 'Pepi', 'Elce', 'F', 'pelce0@trellian.com', DATE '1984-03-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (2, 'Barr', 'Wabersich', 'P', 'bwabersich1@china.com.cn', DATE '1976-08-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (3, 'Gretal', 'Grassick', 'F', 'ggrassick2@deliciousdays.com', DATE '1984-08-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (4, 'Byron', 'Angeli', 'P', 'bangeli3@globo.com', DATE '1996-05-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (5, 'Birch', 'Vickar', 'P', 'bvickar4@harvard.edu', DATE '1972-09-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (6, 'Romy', 'Torvey', 'F', 'rtorvey5@google.com.hk', DATE '1979-01-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (7, 'Brien', 'Poole', 'P', 'bpoole6@mozilla.com', DATE '1971-07-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (8, 'Mercy', 'Worcester', 'F', 'mworcester7@epa.gov', DATE '1991-07-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (9, 'Ernesta', 'Brewett', 'F', 'ebrewett8@xing.com', DATE '1979-01-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (10, 'Fran', 'Torrese', 'F', 'ftorrese9@feedburner.com', DATE '1991-10-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (11, 'Obadias', 'Dowtry', 'P', 'odowtrya@wikispaces.com', DATE '1973-07-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (12, 'Shalom', 'Kincla', 'P', 'skinclab@infoseek.co.jp', DATE '1995-11-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (13, 'Rosy', 'Josh', 'F', 'rjoshc@ameblo.jp', DATE '1995-06-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (14, 'Christopher', 'Snare', 'P', 'csnared@devhub.com', DATE '1984-07-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (15, 'Malchy', 'Jelf', 'P', 'mjelfe@odnoklassniki.ru', DATE '1971-11-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (16, 'Seward', 'Eck', 'P', 'seckf@cbc.ca', DATE '1992-09-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (17, 'Brear', 'Chapiro', 'F', 'bchapirog@issuu.com', DATE '1987-04-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (18, 'Gussy', 'Graves', 'F', 'ggravesh@wikia.com', DATE '1980-02-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (19, 'Janina', 'Ranahan', 'F', 'jranahani@ucoz.com', DATE '1972-05-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (20, 'Izabel', 'Trenholme', 'F', 'itrenholmej@bigcartel.com', DATE '1993-07-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (21, 'Frazer', 'Ruben', 'P', 'frubenk@dailymail.co.uk', DATE '1990-10-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (22, 'Elston', 'Stansbie', 'P', 'estansbiel@ameblo.jp', DATE '1998-06-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (23, 'Debor', 'Janny', 'F', 'djannym@apple.com', DATE '1979-01-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (24, 'Regan', 'Edelman', 'F', 'redelmann@nbcnews.com', DATE '1997-04-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (25, 'Birdie', 'Bogays', 'F', 'bbogayso@tinypic.com', DATE '1991-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (26, 'Tabor', 'Neill', 'P', 'tneillp@webs.com', DATE '1971-02-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (27, 'Ewart', 'Barnshaw', 'P', 'ebarnshawq@gov.uk', DATE '1991-12-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (28, 'Delcine', 'Westmarland', 'F', 'dwestmarlandr@intel.com', DATE '1983-08-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (29, 'Larina', 'Bladen', 'F', 'lbladens@mapy.cz', DATE '1990-08-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (30, 'Netti', 'Geggie', 'F', 'ngeggiet@google.com.hk', DATE '1988-01-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (31, 'Ebony', 'Marconi', 'F', 'emarconiu@washingtonpost.com', DATE '1993-09-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (32, 'Luz', 'Najafian', 'F', 'lnajafianv@omniture.com', DATE '1980-09-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (33, 'Dan', 'Tarr', 'P', 'dtarrw@hc360.com', DATE '1978-10-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (34, 'Zach', 'Snalom', 'P', 'zsnalomx@whitehouse.gov', DATE '1994-08-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (35, 'Terese', 'Belhome', 'F', 'tbelhomey@nasa.gov', DATE '1992-05-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (36, 'Corbett', 'Blaylock', 'P', 'cblaylockz@digg.com', DATE '1971-04-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (37, 'Calla', 'Ricco', 'F', 'cricco10@soup.io', DATE '1990-08-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (38, 'Reinold', 'Gossart', 'P', 'rgossart11@economist.com', DATE '1978-01-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (39, 'Selena', 'Skones', 'F', 'sskones12@yellowbook.com', DATE '1997-07-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (40, 'Jamison', 'Perse', 'P', 'jperse13@newyorker.com', DATE '1982-08-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (41, 'Iorgos', 'Culter', 'P', 'iculter14@behance.net', DATE '1992-10-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (42, 'De witt', 'Teresi', 'P', 'dteresi15@elegantthemes.com', DATE '1977-12-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (43, 'Westley', 'Blaszkiewicz', 'P', 'wblaszkiewicz16@arstechnica.com', DATE '1978-03-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (44, 'Luz', 'Parlot', 'F', 'lparlot17@infoseek.co.jp', DATE '1975-09-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (45, 'Rosemonde', 'Shingfield', 'F', 'rshingfield18@google.de', DATE '1999-10-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (46, 'Lenka', 'Buck', 'F', 'lbuck19@google.pl', DATE '1991-11-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (47, 'Catlaina', 'Collier', 'F', 'ccollier1a@economist.com', DATE '1974-04-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (48, 'Ignatius', 'Cozzi', 'P', 'icozzi1b@utexas.edu', DATE '1983-05-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (49, 'Pippo', 'Jerrard', 'P', 'pjerrard1c@gov.uk', DATE '1988-04-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (50, 'Ellary', 'Laughrey', 'P', 'elaughrey1d@technorati.com', DATE '1987-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (51, 'Margaretha', 'Hudghton', 'F', 'mhudghton1e@bing.com', DATE '1976-10-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (52, 'Osmund', 'Elrick', 'P', 'oelrick1f@dmoz.org', DATE '1971-05-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (53, 'Way', 'MacDearmont', 'P', 'wmacdearmont1g@posterous.com', DATE '1983-03-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (54, 'Joya', 'Yakubowicz', 'F', 'jyakubowicz1h@wired.com', DATE '1995-11-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (55, 'Lyndsay', 'Pardue', 'F', 'lpardue1i@google.com.hk', DATE '1986-08-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (56, 'Yanaton', 'McGeechan', 'P', 'ymcgeechan1j@businessinsider.com', DATE '1989-12-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (57, 'Suellen', 'Ogan', 'F', 'sogan1k@tinyurl.com', DATE '1977-11-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (58, 'Ashlin', 'O''Cullen', 'P', 'aocullen1l@facebook.com', DATE '1971-08-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (59, 'Ephrem', 'Parkman', 'P', 'eparkman1m@utexas.edu', DATE '1994-01-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (60, 'Yolanda', 'Witherden', 'F', 'ywitherden1n@4shared.com', DATE '1978-09-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (61, 'Tucky', 'Scogin', 'P', 'tscogin1o@comsenz.com', DATE '1983-04-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (62, 'Maurise', 'Cordall', 'F', 'mcordall1p@nytimes.com', DATE '1986-10-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (63, 'Trixy', 'Coleborn', 'F', 'tcoleborn1q@rambler.ru', DATE '1995-10-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (64, 'Barn', 'Halifax', 'P', 'bhalifax1r@opensource.org', DATE '1995-01-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (65, 'Simmonds', 'Bernardy', 'P', 'sbernardy1s@ycombinator.com', DATE '1997-07-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (66, 'Thomas', 'Dunsford', 'P', 'tdunsford1t@jimdo.com', DATE '1978-01-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (67, 'Piper', 'Franek', 'F', 'pfranek1u@irs.gov', DATE '1991-04-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (68, 'Hermie', 'Ghilardini', 'P', 'hghilardini1v@reference.com', DATE '1985-09-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (69, 'Claudette', 'Hudspith', 'F', 'chudspith1w@discovery.com', DATE '1987-10-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (70, 'Angus', 'Stagg', 'P', 'astagg1x@lulu.com', DATE '1993-01-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (71, 'Laurette', 'Altree', 'F', 'laltree1y@nih.gov', DATE '1996-09-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (72, 'Carleen', 'MacAnellye', 'F', 'cmacanellye1z@devhub.com', DATE '1988-04-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (73, 'Didi', 'Morgan', 'F', 'dmorgan20@bravesites.com', DATE '1996-12-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (74, 'Cherye', 'Duce', 'F', 'cduce21@ibm.com', DATE '1988-11-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (75, 'Monty', 'Deverale', 'P', 'mdeverale22@amazon.com', DATE '1987-11-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (76, 'Johnny', 'Laytham', 'P', 'jlaytham23@t.co', DATE '1972-02-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (77, 'Rudiger', 'Warsap', 'P', 'rwarsap24@utexas.edu', DATE '1986-12-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (78, 'Jacklin', 'Kielt', 'F', 'jkielt25@icq.com', DATE '1986-05-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (79, 'Barth', 'Traske', 'P', 'btraske26@a8.net', DATE '1987-12-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (80, 'Holly-anne', 'Sandry', 'F', 'hsandry27@php.net', DATE '1974-06-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (81, 'Lonee', 'Maultby', 'F', 'lmaultby28@craigslist.org', DATE '1975-07-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (82, 'Marcel', 'Botger', 'P', 'mbotger29@exblog.jp', DATE '1979-07-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (83, 'Roshelle', 'Peatt', 'F', 'rpeatt2a@godaddy.com', DATE '1997-02-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (84, 'Even', 'Willgress', 'P', 'ewillgress2b@networkadvertising.org', DATE '1991-07-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (85, 'Greer', 'Hoggin', 'F', 'ghoggin2c@amazon.co.jp', DATE '1986-05-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (86, 'Eugine', 'Succamore', 'F', 'esuccamore2d@utexas.edu', DATE '1986-12-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (87, 'Hannie', 'Burwell', 'F', 'hburwell2e@gmpg.org', DATE '1998-12-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (88, 'Randell', 'Fores', 'P', 'rfores2f@sciencedaily.com', DATE '1986-05-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (89, 'Parnell', 'Schroder', 'P', 'pschroder2g@storify.com', DATE '1996-07-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (90, 'Petunia', 'Woollons', 'F', 'pwoollons2h@usgs.gov', DATE '1977-08-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (91, 'Abramo', 'Albutt', 'P', 'aalbutt2i@webeden.co.uk', DATE '1984-01-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (92, 'Peria', 'Tuffs', 'F', 'ptuffs2j@pbs.org', DATE '1992-03-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (93, 'Albie', 'Bitten', 'P', 'abitten2k@hhs.gov', DATE '1973-09-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (94, 'Lars', 'FitzAlan', 'P', 'lfitzalan2l@gizmodo.com', DATE '1987-10-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (95, 'Elijah', 'Hansley', 'P', 'ehansley2m@shareasale.com', DATE '1971-05-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (96, 'Neal', 'Rettie', 'P', 'nrettie2n@thetimes.co.uk', DATE '1998-02-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (97, 'Taite', 'Aviss', 'P', 'taviss2o@latimes.com', DATE '1995-04-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (98, 'Alvis', 'Scown', 'P', 'ascown2p@discuz.net', DATE '1986-04-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (99, 'Bail', 'Stones', 'P', 'bstones2q@devhub.com', DATE '1999-05-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (100, 'Rudy', 'Kerans', 'P', 'rkerans2r@usa.gov', DATE '1977-02-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (101, 'Diane', 'Stickney', 'F', 'dstickney2s@livejournal.com', DATE '1997-10-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (102, 'Dimitri', 'Reddell', 'P', 'dreddell2t@hostgator.com', DATE '1981-10-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (103, 'Kendal', 'Gaenor', 'P', 'kgaenor2u@ibm.com', DATE '1970-08-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (104, 'Sydney', 'Gussin', 'P', 'sgussin2v@dailymotion.com', DATE '1978-02-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (105, 'Rich', 'Auchterlonie', 'P', 'rauchterlonie2w@ow.ly', DATE '1982-05-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (106, 'Guy', 'Ferrarotti', 'P', 'gferrarotti2x@fema.gov', DATE '1996-05-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (107, 'Aime', 'Salter', 'F', 'asalter2y@dropbox.com', DATE '1979-04-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (108, 'Fayette', 'Suston', 'F', 'fsuston2z@yolasite.com', DATE '1976-11-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (109, 'Gabrila', 'Colclough', 'F', 'gcolclough30@youtu.be', DATE '1999-05-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (110, 'Deane', 'Muncer', 'P', 'dmuncer31@marriott.com', DATE '1987-09-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (111, 'Lenora', 'Terrelly', 'F', 'lterrelly32@wufoo.com', DATE '1987-05-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (112, 'Sholom', 'Minnock', 'P', 'sminnock33@tripadvisor.com', DATE '1991-11-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (113, 'Kiah', 'Buckston', 'F', 'kbuckston34@msn.com', DATE '1999-10-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (114, 'Betty', 'Hoodless', 'F', 'bhoodless35@geocities.com', DATE '1991-07-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (115, 'Minette', 'Summerrell', 'F', 'msummerrell36@buzzfeed.com', DATE '1988-11-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (116, 'Onida', 'Guilayn', 'F', 'oguilayn37@privacy.gov.au', DATE '1971-08-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (117, 'Adrea', 'de la Valette Parisot', 'F', 'adelavaletteparisot38@spiegel.de', DATE '1981-04-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (118, 'Selie', 'Lynch', 'F', 'slynch39@over-blog.com', DATE '1988-06-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (119, 'Tamara', 'Ficken', 'F', 'tficken3a@a8.net', DATE '1994-03-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (120, 'Geordie', 'Wintringham', 'P', 'gwintringham3b@dyndns.org', DATE '1992-02-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (121, 'Ulric', 'Hitzschke', 'P', 'uhitzschke3c@sakura.ne.jp', DATE '1974-09-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (122, 'Wini', 'Perocci', 'F', 'wperocci3d@wsj.com', DATE '1999-01-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (123, 'Charlena', 'Romi', 'F', 'cromi3e@netvibes.com', DATE '1974-04-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (124, 'Rouvin', 'Doward', 'P', 'rdoward3f@zimbio.com', DATE '1986-07-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (125, 'Jacquetta', 'Blew', 'F', 'jblew3g@hhs.gov', DATE '1970-07-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (126, 'Verla', 'Palfrie', 'F', 'vpalfrie3h@parallels.com', DATE '1996-07-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (127, 'Catlaina', 'Keavy', 'F', 'ckeavy3i@meetup.com', DATE '1995-07-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (128, 'Britney', 'Lowdham', 'F', 'blowdham3j@youtu.be', DATE '1990-12-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (129, 'Tynan', 'Lamp', 'P', 'tlamp3k@google.com.br', DATE '1986-06-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (130, 'Alfonse', 'Raye', 'P', 'araye3l@slate.com', DATE '1982-10-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (131, 'Eberhard', 'Wilbud', 'P', 'ewilbud3m@miibeian.gov.cn', DATE '1971-06-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (132, 'Analiese', 'Danilowicz', 'F', 'adanilowicz3n@time.com', DATE '1979-05-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (133, 'Ambrosius', 'Bratton', 'P', 'abratton3o@paginegialle.it', DATE '1975-01-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (134, 'Nefen', 'Aisbett', 'P', 'naisbett3p@wired.com', DATE '1971-04-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (135, 'Audie', 'Ducker', 'F', 'aducker3q@opera.com', DATE '1982-11-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (136, 'Roger', 'Sparkes', 'P', 'rsparkes3r@goo.gl', DATE '1986-02-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (137, 'Nicoline', 'Spight', 'F', 'nspight3s@chronoengine.com', DATE '1973-10-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (138, 'Paten', 'Covell', 'P', 'pcovell3t@smh.com.au', DATE '1980-01-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (139, 'Stinky', 'Harse', 'P', 'sharse3u@hhs.gov', DATE '1995-01-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (140, 'Bard', 'Lamy', 'P', 'blamy3v@vkontakte.ru', DATE '1992-07-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (141, 'Dinny', 'Caudrelier', 'F', 'dcaudrelier3w@altervista.org', DATE '1997-04-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (142, 'Lazar', 'Drews', 'P', 'ldrews3x@fda.gov', DATE '1991-10-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (143, 'Lyndsay', 'Garie', 'F', 'lgarie3y@nature.com', DATE '1974-03-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (144, 'Mateo', 'Wrassell', 'P', 'mwrassell3z@mashable.com', DATE '1974-08-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (145, 'Tabor', 'Gulston', 'P', 'tgulston40@google.it', DATE '1998-10-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (146, 'Brett', 'Dealy', 'F', 'bdealy41@flavors.me', DATE '1978-05-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (147, 'Ryun', 'Schubbert', 'P', 'rschubbert42@theatlantic.com', DATE '1988-09-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (148, 'Patti', 'Meredyth', 'F', 'pmeredyth43@princeton.edu', DATE '1973-04-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (149, 'Corbet', 'Giannasi', 'P', 'cgiannasi44@toplist.cz', DATE '1989-11-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (150, 'Eva', 'Burgott', 'F', 'eburgott45@washingtonpost.com', DATE '1975-01-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (151, 'Yancey', 'Rawsen', 'P', 'yrawsen46@alexa.com', DATE '1997-07-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (152, 'Bear', 'Woodruffe', 'P', 'bwoodruffe47@reference.com', DATE '1986-03-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (153, 'Bent', 'Cotherill', 'P', 'bcotherill48@ebay.com', DATE '1997-10-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (154, 'Lois', 'Brayshay', 'F', 'lbrayshay49@mit.edu', DATE '1988-04-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (155, 'Francois', 'Mattiussi', 'P', 'fmattiussi4a@reference.com', DATE '1995-06-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (156, 'Margery', 'Rideout', 'F', 'mrideout4b@newyorker.com', DATE '1975-03-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (157, 'Rustin', 'Middleton', 'P', 'rmiddleton4c@tmall.com', DATE '1977-06-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (158, 'Valeda', 'Jachimiak', 'F', 'vjachimiak4d@mail.ru', DATE '1999-07-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (159, 'Creighton', 'Puve', 'P', 'cpuve4e@themeforest.net', DATE '1985-07-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (160, 'Lucie', 'Bourhill', 'F', 'lbourhill4f@free.fr', DATE '1975-11-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (161, 'Lizabeth', 'Cottee', 'F', 'lcottee4g@mashable.com', '2000-01-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (162, 'Cullie', 'Arlett', 'P', 'carlett4h@foxnews.com', DATE '1979-02-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (163, 'Meris', 'Roofe', 'F', 'mroofe4i@eventbrite.com', DATE '1998-07-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (164, 'Katlin', 'De Gregorio', 'F', 'kdegregorio4j@paginegialle.it', DATE '1991-11-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (165, 'Benjy', 'McGready', 'P', 'bmcgready4k@webs.com', DATE '1990-06-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (166, 'Caroljean', 'Tuddenham', 'F', 'ctuddenham4l@acquirethisname.com', DATE '1991-08-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (167, 'Donetta', 'Timlin', 'F', 'dtimlin4m@opera.com', DATE '1980-05-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (168, 'Friedrich', 'Hentzer', 'P', 'fhentzer4n@wsj.com', DATE '1999-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (169, 'Osbourne', 'McAmish', 'P', 'omcamish4o@wiley.com', DATE '1980-05-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (170, 'Marcello', 'Venus', 'P', 'mvenus4p@pagesperso-orange.fr', DATE '1998-02-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (171, 'De', 'Joron', 'F', 'djoron4q@reddit.com', DATE '1994-12-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (172, 'Eric', 'Shayes', 'P', 'eshayes4r@usgs.gov', DATE '1992-03-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (173, 'Jacintha', 'Paxman', 'F', 'jpaxman4s@de.vu', DATE '1997-09-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (174, 'Raynor', 'Antonikov', 'P', 'rantonikov4t@macromedia.com', DATE '1978-06-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (175, 'Jeromy', 'Keasley', 'P', 'jkeasley4u@lycos.com', DATE '1995-08-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (176, 'Barris', 'Gaitung', 'P', 'bgaitung4v@hc360.com', DATE '1970-09-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (177, 'Roderic', 'Waterstone', 'P', 'rwaterstone4w@jiathis.com', DATE '1971-02-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (178, 'Alysia', 'Tax', 'F', 'atax4x@wikimedia.org', DATE '1984-05-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (179, 'Timmi', 'Essex', 'F', 'tessex4y@latimes.com', DATE '1994-03-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (180, 'Spencer', 'Camillo', 'P', 'scamillo4z@wufoo.com', DATE '1978-09-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (181, 'Nataniel', 'Burthom', 'P', 'nburthom50@dedecms.com', DATE '1990-07-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (182, 'Gib', 'Pirrie', 'P', 'gpirrie51@sfgate.com', DATE '1991-07-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (183, 'Toiboid', 'Beseke', 'P', 'tbeseke52@infoseek.co.jp', DATE '1994-04-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (184, 'Judi', 'Murdy', 'F', 'jmurdy53@slideshare.net', DATE '1985-01-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (185, 'Stan', 'Brickell', 'P', 'sbrickell54@oracle.com', DATE '1983-04-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (186, 'Danila', 'Jursch', 'F', 'djursch55@hubpages.com', DATE '1985-10-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (187, 'Zachariah', 'Pring', 'P', 'zpring56@slate.com', DATE '1987-05-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (188, 'Mikol', 'Mieville', 'P', 'mmieville57@hp.com', DATE '1976-10-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (189, 'Orbadiah', 'Blanden', 'P', 'oblanden58@princeton.edu', DATE '1994-02-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (190, 'Bari', 'Christescu', 'F', 'bchristescu59@economist.com', DATE '1980-10-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (191, 'Farlee', 'Aylen', 'P', 'faylen5a@nba.com', DATE '1993-09-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (192, 'Oates', 'Aldrick', 'P', 'oaldrick5b@slate.com', DATE '1998-08-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (193, 'Zacharia', 'Bramstom', 'P', 'zbramstom5c@census.gov', DATE '1973-04-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (194, 'Carlie', 'Melmore', 'P', 'cmelmore5d@shop-pro.jp', DATE '1992-10-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (195, 'Cathrin', 'Verna', 'F', 'cverna5e@1688.com', DATE '1992-03-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (196, 'Howard', 'Ickowics', 'P', 'hickowics5f@bing.com', DATE '1981-04-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (197, 'Dorothea', 'Sidworth', 'F', 'dsidworth5g@cargocollective.com', DATE '1992-04-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (198, 'Neal', 'Sywell', 'P', 'nsywell5h@histats.com', DATE '1991-06-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (199, 'Farlay', 'Pershouse', 'P', 'fpershouse5i@tripod.com', DATE '1979-11-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (200, 'Isiahi', 'Burkitt', 'P', 'iburkitt5j@ning.com', DATE '1991-11-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (201, 'Sergei', 'Ellyatt', 'P', 'sellyatt5k@dell.com', DATE '1991-08-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (202, 'Der', 'Calken', 'P', 'dcalken5l@ox.ac.uk', DATE '1976-10-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (203, 'Fransisco', 'Brimble', 'P', 'fbrimble5m@harvard.edu', DATE '1987-12-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (204, 'Leticia', 'Goldsby', 'F', 'lgoldsby5n@free.fr', DATE '1990-04-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (205, 'Fiona', 'Greenland', 'F', 'fgreenland5o@yahoo.com', DATE '1996-06-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (206, 'Di', 'Levecque', 'F', 'dlevecque5p@wikimedia.org', DATE '1991-08-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (207, 'Barron', 'Froschauer', 'P', 'bfroschauer5q@army.mil', DATE '1976-12-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (208, 'Towny', 'Owthwaite', 'P', 'towthwaite5r@barnesandnoble.com', DATE '1992-04-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (209, 'Pascal', 'Koene', 'P', 'pkoene5s@gmpg.org', DATE '1974-08-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (210, 'Ingelbert', 'Banishevitz', 'P', 'ibanishevitz5t@deviantart.com', DATE '1989-01-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (211, 'Hillyer', 'Mallabone', 'P', 'hmallabone5u@geocities.jp', DATE '1973-03-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (212, 'Omar', 'Lunney', 'P', 'olunney5v@blogspot.com', DATE '1972-08-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (213, 'Amabel', 'McArdell', 'F', 'amcardell5w@miibeian.gov.cn', DATE '1987-07-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (214, 'Faydra', 'Reichert', 'F', 'freichert5x@pcworld.com', DATE '1993-06-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (215, 'Terencio', 'Ridgwell', 'P', 'tridgwell5y@webeden.co.uk', DATE '1987-01-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (216, 'Armin', 'Farrier', 'P', 'afarrier5z@shinystat.com', DATE '1995-10-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (217, 'Emlyn', 'Cragell', 'P', 'ecragell60@wix.com', DATE '1979-05-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (218, 'Quinn', 'Benduhn', 'F', 'qbenduhn61@booking.com', DATE '1990-08-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (219, 'Peder', 'Tillett', 'P', 'ptillett62@aboutads.info', DATE '1985-06-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (220, 'Hadlee', 'Craigg', 'P', 'hcraigg63@furl.net', DATE '1995-10-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (221, 'Arnaldo', 'Ruskin', 'P', 'aruskin64@fema.gov', DATE '1988-06-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (222, 'Honor', 'Rolling', 'F', 'hrolling65@sciencedaily.com', DATE '1976-07-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (223, 'Thoma', 'Borthwick', 'P', 'tborthwick66@google.de', DATE '1972-12-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (224, 'Lane', 'Mitham', 'F', 'lmitham67@vistaprint.com', DATE '1970-09-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (225, 'Cordelie', 'Deble', 'F', 'cdeble68@cpanel.net', DATE '1989-01-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (226, 'Nicolis', 'Schuelcke', 'P', 'nschuelcke69@java.com', DATE '1970-10-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (227, 'Leshia', 'Elman', 'F', 'lelman6a@bravesites.com', DATE '1984-12-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (228, 'Mariann', 'Bromage', 'F', 'mbromage6b@uol.com.br', DATE '1972-09-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (229, 'Lucias', 'Jaques', 'P', 'ljaques6c@cnn.com', DATE '1989-03-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (230, 'Lind', 'Summerfield', 'F', 'lsummerfield6d@people.com.cn', DATE '1995-05-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (231, 'Rosemonde', 'Paulsen', 'F', 'rpaulsen6e@infoseek.co.jp', DATE '1992-10-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (232, 'Flo', 'Arnowicz', 'F', 'farnowicz6f@blinklist.com', DATE '1978-11-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (233, 'Merry', 'Trees', 'P', 'mtrees6g@about.me', DATE '1976-07-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (234, 'Bealle', 'Crafter', 'P', 'bcrafter6h@sakura.ne.jp', DATE '1997-08-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (235, 'Kelsi', 'Zappel', 'F', 'kzappel6i@360.cn', DATE '1997-04-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (236, 'Shir', 'Bloomer', 'F', 'sbloomer6j@etsy.com', DATE '1983-09-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (237, 'Dreddy', 'Profit', 'F', 'dprofit6k@example.com', DATE '1998-12-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (238, 'Obie', 'Jobey', 'P', 'ojobey6l@soup.io', DATE '1970-10-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (239, 'Efrem', 'Elen', 'P', 'eelen6m@skype.com', DATE '1973-01-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (240, 'Moise', 'Drewett', 'P', 'mdrewett6n@delicious.com', DATE '1970-04-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (241, 'Bram', 'Lauchlan', 'P', 'blauchlan6o@theglobeandmail.com', DATE '1998-06-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (242, 'Ofilia', 'Fairbank', 'F', 'ofairbank6p@miibeian.gov.cn', DATE '1989-06-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (243, 'Larissa', 'Scolding', 'F', 'lscolding6q@illinois.edu', DATE '1988-06-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (244, 'Trula', 'Marlin', 'F', 'tmarlin6r@tmall.com', DATE '1999-02-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (245, 'Nicolle', 'Hayesman', 'F', 'nhayesman6s@fastcompany.com', DATE '1978-05-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (246, 'Remus', 'Texton', 'P', 'rtexton6t@freewebs.com', DATE '1995-04-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (247, 'Bev', 'Duncklee', 'F', 'bduncklee6u@uiuc.edu', DATE '1981-02-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (248, 'Karrah', 'Daines', 'F', 'kdaines6v@themeforest.net', DATE '1977-05-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (249, 'Vanni', 'Husby', 'F', 'vhusby6w@archive.org', DATE '1973-05-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (250, 'Munroe', 'Algie', 'P', 'malgie6x@comsenz.com', DATE '1999-02-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (251, 'Jacques', 'Foch', 'P', 'jfoch6y@rakuten.co.jp', DATE '1974-09-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (252, 'Hugues', 'Britt', 'P', 'hbritt6z@edublogs.org', DATE '1990-09-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (253, 'Drake', 'Founds', 'P', 'dfounds70@ca.gov', DATE '1999-05-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (254, 'Joelie', 'Smeuin', 'F', 'jsmeuin71@cloudflare.com', DATE '1979-09-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (255, 'Dorotea', 'Biffin', 'F', 'dbiffin72@goo.ne.jp', DATE '1993-06-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (256, 'Sarge', 'Arnaldy', 'P', 'sarnaldy73@dedecms.com', DATE '1976-03-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (257, 'Inness', 'Ochterlony', 'P', 'iochterlony74@fda.gov', DATE '1979-01-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (258, 'Anestassia', 'Cast', 'F', 'acast75@example.com', DATE '1976-11-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (259, 'Sholom', 'Akaster', 'P', 'sakaster76@nytimes.com', DATE '1986-05-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (260, 'Cathrin', 'Whipp', 'F', 'cwhipp77@merriam-webster.com', DATE '1981-12-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (261, 'Demetris', 'Sergant', 'F', 'dsergant78@bandcamp.com', DATE '1984-05-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (262, 'Dugald', 'Sans', 'P', 'dsans79@istockphoto.com', DATE '1994-12-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (263, 'Artemas', 'Spier', 'P', 'aspier7a@weebly.com', DATE '1975-09-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (264, 'Shelli', 'Detoile', 'F', 'sdetoile7b@blogtalkradio.com', DATE '1997-01-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (265, 'Rickie', 'Skuse', 'F', 'rskuse7c@google.ru', DATE '1988-05-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (266, 'Jerrine', 'Sifflett', 'F', 'jsifflett7d@ca.gov', DATE '1971-07-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (267, 'Maury', 'Munehay', 'P', 'mmunehay7e@over-blog.com', DATE '1999-10-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (268, 'Cordie', 'Burriss', 'F', 'cburriss7f@netscape.com', DATE '1976-04-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (269, 'Lilah', 'Colcutt', 'F', 'lcolcutt7g@tuttocitta.it', DATE '1972-12-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (270, 'Alphard', 'Lau', 'P', 'alau7h@istockphoto.com', DATE '1976-03-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (271, 'Cathryn', 'Chastan', 'F', 'cchastan7i@google.com', DATE '1972-10-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (272, 'Jackson', 'Domenicone', 'P', 'jdomenicone7j@arizona.edu', DATE '1982-09-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (273, 'Lezley', 'Grindall', 'P', 'lgrindall7k@auda.org.au', DATE '1972-05-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (274, 'Lucho', 'Hedgeley', 'P', 'lhedgeley7l@washingtonpost.com', DATE '1988-05-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (275, 'Ann-marie', 'Liddington', 'F', 'aliddington7m@engadget.com', DATE '1974-12-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (276, 'Charline', 'Hirtz', 'F', 'chirtz7n@list-manage.com', DATE '1994-02-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (277, 'Elladine', 'Labitt', 'F', 'elabitt7o@japanpost.jp', DATE '1983-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (278, 'Terra', 'Dudny', 'F', 'tdudny7p@1688.com', DATE '1998-10-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (279, 'Loreen', 'MacAlees', 'F', 'lmacalees7q@whitehouse.gov', DATE '1993-12-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (280, 'Earle', 'Huske', 'P', 'ehuske7r@github.io', DATE '1981-11-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (281, 'Astra', 'Westphalen', 'F', 'awestphalen7s@senate.gov', DATE '1980-05-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (282, 'Ricca', 'Riccardelli', 'F', 'rriccardelli7t@yahoo.co.jp', DATE '1991-12-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (283, 'Kara-lynn', 'Chelsom', 'F', 'kchelsom7u@dion.ne.jp', DATE '1975-09-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (284, 'Bria', 'Aggs', 'F', 'baggs7v@discovery.com', DATE '1998-08-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (285, 'Harriott', 'Rolston', 'F', 'hrolston7w@cam.ac.uk', DATE '1978-01-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (286, 'Reggis', 'Fanning', 'P', 'rfanning7x@wikimedia.org', DATE '1986-03-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (287, 'Wynn', 'Kobpal', 'P', 'wkobpal7y@irs.gov', DATE '1997-10-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (288, 'Nobe', 'Gilmartin', 'P', 'ngilmartin7z@odnoklassniki.ru', DATE '1989-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (289, 'Barbey', 'Stovin', 'F', 'bstovin80@ft.com', DATE '1998-06-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (290, 'Kirstin', 'Bottell', 'F', 'kbottell81@washington.edu', DATE '1979-12-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (291, 'Oriana', 'Georgievski', 'F', 'ogeorgievski82@blinklist.com', DATE '1982-05-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (292, 'Raquel', 'Brookhouse', 'F', 'rbrookhouse83@163.com', DATE '1975-11-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (293, 'Ebba', 'Baraclough', 'F', 'ebaraclough84@unblog.fr', DATE '1986-04-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (294, 'Marjie', 'Pinkie', 'F', 'mpinkie85@mail.ru', DATE '1983-11-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (295, 'Beau', 'Guinan', 'P', 'bguinan86@so-net.ne.jp', DATE '1978-03-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (296, 'Aubert', 'Phoebe', 'P', 'aphoebe87@mozilla.com', DATE '1980-11-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (297, 'Jard', 'Harrap', 'P', 'jharrap88@trellian.com', DATE '1983-08-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (298, 'Woodrow', 'Moyes', 'P', 'wmoyes89@github.io', DATE '1985-02-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (299, 'Darby', 'Anmore', 'P', 'danmore8a@icio.us', DATE '1998-01-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (300, 'Marya', 'Kunkel', 'F', 'mkunkel8b@ajoin_datee.com', DATE '1980-08-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (301, 'Baillie', 'Reicherz', 'P', 'breicherz8c@ehow.com', DATE '1998-02-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (302, 'Sergeant', 'Guirard', 'P', 'sguirard8d@yelp.com', DATE '1970-10-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (303, 'Camella', 'Feifer', 'F', 'cfeifer8e@fastcompany.com', DATE '1990-01-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (304, 'Pavlov', 'Parmeter', 'P', 'pparmeter8f@com.com', DATE '1983-01-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (305, 'Dayna', 'Sarfatti', 'F', 'dsarfatti8g@jigsy.com', DATE '1972-08-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (306, 'Nessy', 'Summerton', 'F', 'nsummerton8h@cornell.edu', DATE '1989-01-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (307, 'Brittaney', 'Aymer', 'F', 'baymer8i@omniture.com', DATE '1981-11-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (308, 'Darin', 'Gritton', 'P', 'dgritton8j@simplemachines.org', DATE '1971-05-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (309, 'Kacie', 'Howatt', 'F', 'khowatt8k@engadget.com', DATE '1970-07-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (310, 'Brion', 'Cumberland', 'P', 'bcumberland8l@census.gov', DATE '1979-09-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (311, 'Peyter', 'Brattell', 'P', 'pbrattell8m@uol.com.br', DATE '1991-02-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (312, 'Markos', 'Glassup', 'P', 'mglassup8n@cnbc.com', DATE '1997-04-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (313, 'Blakeley', 'Vedenyakin', 'F', 'bvedenyakin8o@angelfire.com', DATE '1993-04-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (314, 'Zita', 'Ellsbury', 'F', 'zellsbury8p@google.com.hk', DATE '1992-06-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (315, 'Keen', 'Lorenzini', 'P', 'klorenzini8q@sourceforge.net', DATE '1997-04-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (316, 'Thayne', 'Messam', 'P', 'tmessam8r@mail.ru', DATE '1970-08-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (317, 'Hillyer', 'Mohan', 'P', 'hmohan8s@apache.org', DATE '1990-08-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (318, 'Kariotta', 'Kidsley', 'F', 'kkidsley8t@cisco.com', DATE '1998-06-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (319, 'Prudi', 'Jailler', 'F', 'pjailler8u@latimes.com', DATE '1971-12-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (320, 'Kerrin', 'Artois', 'F', 'kartois8v@amazon.de', DATE '1995-06-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (321, 'Martguerita', 'Barbe', 'F', 'mbarbe8w@reddit.com', DATE '1993-08-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (322, 'Revkah', 'Silveston', 'F', 'rsilveston8x@technorati.com', DATE '1984-07-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (323, 'Llewellyn', 'Stallard', 'P', 'lstallard8y@odnoklassniki.ru', DATE '1989-07-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (324, 'Robby', 'Whitelaw', 'F', 'rwhitelaw8z@parallels.com', DATE '1989-11-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (325, 'Ryun', 'Murrow', 'P', 'rmurrow90@paypal.com', DATE '1972-05-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (326, 'Gavrielle', 'Gallyon', 'F', 'ggallyon91@163.com', DATE '1990-09-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (327, 'Ardyth', 'Drinkwater', 'F', 'adrinkwater92@comcast.net', DATE '1984-07-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (328, 'Broddie', 'Gerold', 'P', 'bgerold93@usatoday.com', DATE '1998-08-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (329, 'Bartram', 'Vodden', 'P', 'bvodden94@cyberchimps.com', DATE '1987-12-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (330, 'Burk', 'Behn', 'P', 'bbehn95@addtoany.com', DATE '1979-11-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (331, 'Ardath', 'Fenne', 'F', 'afenne96@shinystat.com', DATE '1995-04-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (332, 'Brendon', 'Moncarr', 'P', 'bmoncarr97@ox.ac.uk', DATE '1984-03-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (333, 'Rheba', 'Halpine', 'F', 'rhalpine98@delicious.com', DATE '1973-05-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (334, 'Tom', 'Ivanichev', 'P', 'tivanichev99@yelp.com', DATE '1970-04-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (335, 'Alvy', 'Luchelli', 'P', 'aluchelli9a@tuttocitta.it', DATE '1987-01-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (336, 'Shadow', 'Bruffell', 'P', 'sbruffell9b@tuttocitta.it', DATE '1977-11-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (337, 'Mara', 'Oxbury', 'F', 'moxbury9c@mit.edu', DATE '1991-05-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (338, 'Christine', 'Gooding', 'F', 'cgooding9d@time.com', DATE '1982-03-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (339, 'Valida', 'Aarons', 'F', 'vaarons9e@cbc.ca', DATE '1988-10-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (340, 'Thorin', 'Betho', 'P', 'tbetho9f@wunderground.com', DATE '1975-02-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (341, 'Mattie', 'More', 'F', 'mmore9g@forbes.com', DATE '1975-06-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (342, 'Isaiah', 'Arnecke', 'P', 'iarnecke9h@prnewswire.com', DATE '1990-10-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (343, 'Annabela', 'Gilbride', 'F', 'agilbride9i@nationalgeographic.com', DATE '1979-06-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (344, 'Yettie', 'Kuhnert', 'F', 'ykuhnert9j@cbc.ca', DATE '1973-08-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (345, 'Dreddy', 'Allwell', 'F', 'dallwell9k@quantcast.com', DATE '1979-06-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (346, 'Ernaline', 'Albone', 'F', 'ealbone9l@opera.com', DATE '1973-04-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (347, 'Loraine', 'Ricciardo', 'F', 'lricciardo9m@topsy.com', DATE '1997-04-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (348, 'Jobye', 'Yeaman', 'F', 'jyeaman9n@skype.com', DATE '1978-06-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (349, 'Erny', 'Pritty', 'P', 'epritty9o@va.gov', DATE '1995-12-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (350, 'Josi', 'Jayes', 'F', 'jjayes9p@uol.com.br', DATE '1981-09-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (351, 'Jackelyn', 'Wheble', 'F', 'jwheble9q@ox.ac.uk', DATE '1988-03-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (352, 'Alicea', 'Skains', 'F', 'askains9r@google.es', DATE '1981-11-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (353, 'Knox', 'Bateson', 'P', 'kbateson9s@ed.gov', DATE '1980-10-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (354, 'Guglielmo', 'Meaton', 'P', 'gmeaton9t@behance.net', DATE '1971-12-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (355, 'Kania', 'Coddington', 'F', 'kcoddington9u@mtv.com', DATE '1991-07-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (356, 'Oswell', 'Drever', 'P', 'odrever9v@sbwire.com', DATE '1972-11-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (357, 'Court', 'Hunter', 'P', 'chunter9w@apple.com', DATE '1994-08-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (358, 'Louise', 'McVittie', 'F', 'lmcvittie9x@taobao.com', DATE '1984-04-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (359, 'Gardner', 'Lilleman', 'P', 'glilleman9y@trellian.com', DATE '1991-02-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (360, 'Modesty', 'McCarl', 'F', 'mmccarl9z@ameblo.jp', DATE '1973-05-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (361, 'Cassie', 'Forsdyke', 'F', 'cforsdykea0@blogtalkradio.com', DATE '1992-05-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (362, 'Alis', 'Loiterton', 'F', 'aloitertona1@etsy.com', DATE '1993-04-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (363, 'Annice', 'Caines', 'F', 'acainesa2@phoca.cz', DATE '1985-04-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (364, 'Magnum', 'Papworth', 'P', 'mpapwortha3@zimbio.com', DATE '1983-12-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (365, 'Hardy', 'Krugmann', 'P', 'hkrugmanna4@artisteer.com', DATE '1979-01-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (366, 'Flynn', 'Tidey', 'P', 'ftideya5@joomla.org', DATE '1994-12-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (367, 'Leonie', 'Goretti', 'F', 'lgorettia6@furl.net', DATE '1982-05-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (368, 'Billye', 'Poor', 'F', 'bpoora7@e-recht24.de', DATE '1980-10-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (369, 'Daloris', 'Filde', 'F', 'dfildea8@webmd.com', DATE '1990-05-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (370, 'Bertrand', 'Yoslowitz', 'P', 'byoslowitza9@i2i.jp', DATE '1975-06-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (371, 'Abey', 'Abdy', 'P', 'aabdyaa@mlb.com', DATE '1993-11-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (372, 'Tani', 'Meas', 'F', 'tmeasab@a8.net', DATE '1996-11-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (373, 'Julianne', 'Edel', 'F', 'jedelac@printfriendly.com', DATE '1974-07-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (374, 'Hunt', 'Digan', 'P', 'hdiganad@walmart.com', DATE '1981-09-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (375, 'Carter', 'Litterick', 'P', 'clitterickae@java.com', DATE '1971-10-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (376, 'Adam', 'Colebeck', 'P', 'acolebeckaf@prnewswire.com', DATE '1978-12-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (377, 'Conrade', 'Egginton', 'P', 'ceggintonag@1und1.de', DATE '1972-06-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (378, 'Eric', 'Crutch', 'P', 'ecrutchah@gmpg.org', DATE '1988-11-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (379, 'Bea', 'Beaufoy', 'F', 'bbeaufoyai@sitemeter.com', DATE '1977-10-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (380, 'Brier', 'MacCrackan', 'F', 'bmaccrackanaj@ifeng.com', DATE '1989-10-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (381, 'Nataline', 'Bushrod', 'F', 'nbushrodak@amazon.de', DATE '1976-03-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (382, 'Nikolia', 'Louch', 'F', 'nlouchal@example.com', DATE '1980-06-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (383, 'King', 'Champneys', 'P', 'kchampneysam@jimdo.com', DATE '1981-05-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (384, 'Norina', 'O''Caine', 'F', 'nocainean@tuttocitta.it', DATE '1980-10-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (385, 'Karim', 'Barnardo', 'P', 'kbarnardoao@51.la', DATE '1990-06-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (386, 'Tanitansy', 'O''Carrol', 'F', 'tocarrolap@artisteer.com', DATE '1982-10-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (387, 'Jacky', 'Bettesworth', 'F', 'jbettesworthaq@washingtonpost.com', DATE '1992-11-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (388, 'Valentia', 'Petrello', 'F', 'vpetrelloar@sun.com', DATE '1999-06-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (389, 'Wade', 'Stockford', 'P', 'wstockfordas@telegraph.co.uk', DATE '1997-06-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (390, 'Ermentrude', 'Yardy', 'F', 'eyardyat@rediff.com', DATE '1993-01-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (391, 'Alikee', 'Ivett', 'F', 'aivettau@elegantthemes.com', DATE '1990-09-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (392, 'Bethanne', 'Robichon', 'F', 'brobichonav@sfgate.com', DATE '1991-02-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (393, 'Willette', 'Pencost', 'F', 'wpencostaw@yahoo.co.jp', DATE '1990-07-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (394, 'Tiffani', 'Kiffe', 'F', 'tkiffeax@about.com', DATE '1970-07-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (395, 'Georgina', 'Temby', 'F', 'gtembyay@free.fr', DATE '1989-07-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (396, 'Darrel', 'Berecloth', 'P', 'dbereclothaz@last.fm', DATE '1970-03-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (397, 'Addia', 'Budibent', 'F', 'abudibentb0@noaa.gov', DATE '1975-04-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (398, 'Dallis', 'McNirlan', 'P', 'dmcnirlanb1@issuu.com', DATE '1991-11-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (399, 'Clementine', 'Anniwell', 'F', 'canniwellb2@army.mil', DATE '1975-12-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (400, 'Reinold', 'Drejer', 'P', 'rdrejerb3@usda.gov', DATE '1983-12-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (401, 'Victoria', 'Hobbert', 'F', 'vhobbertb4@topsy.com', DATE '1982-04-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (402, 'Dix', 'Klesse', 'F', 'dklesseb5@illinois.edu', DATE '1994-10-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (403, 'Benoit', 'Lammers', 'P', 'blammersb6@over-blog.com', DATE '1975-10-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (404, 'Kitty', 'Shervil', 'F', 'kshervilb7@creativecommons.org', DATE '1977-11-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (405, 'Grayce', 'Korneichuk', 'F', 'gkorneichukb8@vinaora.com', DATE '1985-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (406, 'Ebeneser', 'Gounot', 'P', 'egounotb9@bloglines.com', DATE '1974-04-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (407, 'Redford', 'Bracegirdle', 'P', 'rbracegirdleba@webmd.com', DATE '1992-04-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (408, 'Hedvig', 'Waiton', 'F', 'hwaitonbb@paginegialle.it', DATE '1979-05-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (409, 'Rollins', 'Blanchard', 'P', 'rblanchardbc@amazon.com', DATE '1980-12-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (410, 'Jodie', 'Yurshev', 'P', 'jyurshevbd@squidoo.com', DATE '1989-09-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (411, 'Kelsey', 'Errichi', 'F', 'kerrichibe@angelfire.com', DATE '1990-02-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (412, 'Lane', 'Hek', 'F', 'lhekbf@japanpost.jp', DATE '1981-06-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (413, 'Brendis', 'Harrie', 'P', 'bharriebg@mediafire.com', DATE '1992-06-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (414, 'Pace', 'Tappin', 'P', 'ptappinbh@jugem.jp', DATE '1977-10-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (415, 'Gerald', 'Hamnet', 'P', 'ghamnetbi@netscape.com', DATE '1997-04-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (416, 'Abelard', 'Grealish', 'P', 'agrealishbj@xing.com', DATE '1981-04-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (417, 'Shepard', 'Worland', 'P', 'sworlandbk@discuz.net', DATE '1977-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (418, 'Gregoor', 'Blanden', 'P', 'gblandenbl@timesonline.co.uk', DATE '1981-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (419, 'Patty', 'Kobiela', 'F', 'pkobielabm@live.com', DATE '1971-07-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (420, 'Jim', 'Burgiss', 'P', 'jburgissbn@comsenz.com', DATE '1997-06-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (421, 'Albrecht', 'Jaine', 'P', 'ajainebo@moonfruit.com', DATE '1970-11-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (422, 'Rriocard', 'Grewe', 'P', 'rgrewebp@psu.edu', DATE '1984-03-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (423, 'Quill', 'Fairney', 'P', 'qfairneybq@barnesandnoble.com', DATE '1985-12-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (424, 'Kym', 'Joust', 'F', 'kjoustbr@mapquest.com', DATE '1992-01-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (425, 'Linnie', 'Tunnow', 'F', 'ltunnowbs@merriam-webster.com', DATE '1989-01-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (426, 'Alano', 'Komorowski', 'P', 'akomorowskibt@uol.com.br', DATE '1976-01-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (427, 'Rubie', 'Crookall', 'F', 'rcrookallbu@bbc.co.uk', DATE '1990-10-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (428, 'Kale', 'Stollard', 'P', 'kstollardbv@accuweather.com', DATE '1978-04-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (429, 'Traci', 'Rickesies', 'F', 'trickesiesbw@wordpress.org', DATE '1973-07-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (430, 'Aldin', 'Purkiss', 'P', 'apurkissbx@parallels.com', DATE '1994-04-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (431, 'Shayne', 'Fitzsimon', 'P', 'sfitzsimonby@nbcnews.com', DATE '1973-01-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (432, 'Helene', 'Heaysman', 'F', 'hheaysmanbz@answers.com', DATE '1972-06-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (433, 'Riki', 'Llewellen', 'F', 'rllewellenc0@usatoday.com', DATE '1976-01-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (434, 'Oralla', 'Copley', 'F', 'ocopleyc1@sogou.com', DATE '1978-03-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (435, 'Marius', 'Aymes', 'P', 'maymesc2@wisc.edu', DATE '1987-04-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (436, 'Gerardo', 'De Beneditti', 'P', 'gdebenedittic3@yolasite.com', DATE '1971-05-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (437, 'Marcy', 'Moffett', 'F', 'mmoffettc4@about.com', DATE '1995-09-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (438, 'Geno', 'Gawthrop', 'P', 'ggawthropc5@taobao.com', DATE '1987-03-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (439, 'Dewey', 'Cody', 'P', 'dcodyc6@intel.com', DATE '1986-07-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (440, 'Meridel', 'Guerrieri', 'F', 'mguerrieric7@fc2.com', DATE '1985-09-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (441, 'Pollyanna', 'Hutt', 'F', 'phuttc8@devhub.com', DATE '1980-07-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (442, 'Ruddy', 'Kembry', 'P', 'rkembryc9@cargocollective.com', DATE '1997-04-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (443, 'Aguste', 'McClary', 'P', 'amcclaryca@newyorker.com', DATE '1997-08-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (444, 'Darbee', 'Roderham', 'P', 'droderhamcb@cmu.edu', DATE '1985-04-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (445, 'Aube', 'Cutler', 'P', 'acutlercc@google.ca', DATE '1992-11-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (446, 'Zachariah', 'Oneal', 'P', 'zonealcd@prlog.org', DATE '1993-01-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (447, 'Talyah', 'Mullally', 'F', 'tmullallyce@about.com', DATE '1976-02-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (448, 'Jabez', 'Johnigan', 'P', 'jjohnigancf@nhs.uk', DATE '1990-08-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (449, 'Marlie', 'Hazelhurst', 'F', 'mhazelhurstcg@ocn.ne.jp', DATE '1983-06-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (450, 'Carmelle', 'Colvin', 'F', 'ccolvinch@miitbeian.gov.cn', DATE '1978-02-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (451, 'Candide', 'Tregido', 'F', 'ctregidoci@wikipedia.org', DATE '1983-03-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (452, 'Nalani', 'Josephsen', 'F', 'njosephsencj@amazon.de', DATE '1977-07-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (453, 'Diann', 'Shrive', 'F', 'dshriveck@typepad.com', DATE '1984-06-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (454, 'Cort', 'Alexsandrowicz', 'P', 'calexsandrowiczcl@trellian.com', DATE '1978-12-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (455, 'Milty', 'Tapply', 'P', 'mtapplycm@hao123.com', DATE '1993-02-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (456, 'Grata', 'Garm', 'F', 'ggarmcn@deviantart.com', DATE '1972-01-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (457, 'Ingram', 'Levane', 'P', 'ilevaneco@printfriendly.com', DATE '1982-04-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (458, 'Cal', 'Tomalin', 'F', 'ctomalincp@example.com', DATE '1995-11-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (459, 'Arvy', 'Bridgwood', 'P', 'abridgwoodcq@webnode.com', DATE '1981-03-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (460, 'Datha', 'Speight', 'F', 'dspeightcr@github.io', DATE '1991-08-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (461, 'Diana', 'Schulze', 'F', 'dschulzecs@blogs.com', DATE '1990-10-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (462, 'Ikey', 'Pretsell', 'P', 'ipretsellct@ezinearticles.com', DATE '1983-12-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (463, 'Khalil', 'Goodwyn', 'P', 'kgoodwyncu@artisteer.com', DATE '1983-06-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (464, 'Pasquale', 'Patching', 'P', 'ppatchingcv@smh.com.au', DATE '1984-10-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (465, 'Reynard', 'Gascoigne', 'P', 'rgascoignecw@engadget.com', DATE '1975-09-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (466, 'Genevieve', 'Smedley', 'F', 'gsmedleycx@tumblr.com', DATE '1984-04-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (467, 'Elston', 'Semerad', 'P', 'esemeradcy@pcworld.com', DATE '1998-03-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (468, 'Melva', 'Trynor', 'F', 'mtrynorcz@businessweek.com', DATE '1994-06-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (469, 'Geno', 'Tilliard', 'P', 'gtilliardd0@yahoo.co.jp', DATE '1987-03-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (470, 'Melicent', 'Critten', 'F', 'mcrittend1@g.co', DATE '1989-10-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (471, 'Pietra', 'Town', 'F', 'ptownd2@sohu.com', DATE '1972-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (472, 'Nathanil', 'Faltin', 'P', 'nfaltind3@unblog.fr', DATE '1985-04-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (473, 'Bart', 'Mabbs', 'P', 'bmabbsd4@howstuffworks.com', DATE '1981-11-25');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (474, 'Kara-lynn', 'Shephard', 'F', 'kshephardd5@hp.com', DATE '1993-10-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (475, 'Christy', 'Collerd', 'F', 'ccollerdd6@prweb.com', DATE '1999-02-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (476, 'Fraser', 'Creany', 'P', 'fcreanyd7@so-net.ne.jp', DATE '1991-12-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (477, 'Joanie', 'Ivoshin', 'F', 'jivoshind8@marketwatch.com', DATE '1991-01-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (478, 'Keenan', 'Camois', 'P', 'kcamoisd9@newsvine.com', DATE '1987-11-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (479, 'Cacilie', 'Phillins', 'F', 'cphillinsda@4shared.com', DATE '1972-12-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (480, 'Dyann', 'Cluer', 'F', 'dcluerdb@umich.edu', DATE '1990-06-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (481, 'Kerwin', 'Corbishley', 'P', 'kcorbishleydc@artisteer.com', DATE '1994-05-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (482, 'Lusa', 'Rayworth', 'F', 'lrayworthdd@state.tx.us', DATE '1990-04-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (483, 'Erin', 'Hagland', 'F', 'ehaglandde@ucla.edu', DATE '1994-03-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (484, 'Abbe', 'Hargreves', 'P', 'ahargrevesdf@mapy.cz', DATE '1996-11-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (485, 'Nestor', 'Losemann', 'P', 'nlosemanndg@va.gov', DATE '1981-09-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (486, 'Lisabeth', 'Plimmer', 'F', 'lplimmerdh@gizmodo.com', DATE '1997-09-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (487, 'Cecilius', 'Hessing', 'P', 'chessingdi@usatoday.com', DATE '1989-05-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (488, 'Panchito', 'Stannering', 'P', 'pstanneringdj@hugedomains.com', DATE '1972-02-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (489, 'Maighdiln', 'Alliston', 'F', 'mallistondk@51.la', DATE '1994-08-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (490, 'Inesita', 'Blaxley', 'F', 'iblaxleydl@pen.io', DATE '1976-03-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (491, 'Marius', 'Mawhinney', 'P', 'mmawhinneydm@delicious.com', DATE '1978-05-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (492, 'Reyna', 'Clemon', 'F', 'rclemondn@woothemes.com', DATE '1983-01-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (493, 'Wolf', 'Iamittii', 'P', 'wiamittiido@dion.ne.jp', DATE '1972-08-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (494, 'Jaimie', 'Villaret', 'F', 'jvillaretdp@a8.net', DATE '1979-03-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (495, 'Marsh', 'Children', 'P', 'mchildrendq@instagram.com', DATE '1977-07-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (496, 'Lyn', 'Leroux', 'P', 'llerouxdr@ifeng.com', DATE '1977-07-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (497, 'Othilia', 'Eckery', 'F', 'oeckeryds@studiopress.com', DATE '1988-04-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (498, 'Armand', 'O''Fearguise', 'P', 'aofearguisedt@answers.com', DATE '1975-11-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (499, 'Jada', 'Hallewell', 'F', 'jhallewelldu@reference.com', DATE '1989-05-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (500, 'Arley', 'McCerery', 'P', 'amccererydv@netvibes.com', DATE '1976-05-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (501, 'Chariot', 'Perrottet', 'P', 'cperrottetdw@jalbum.net', DATE '1990-10-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (502, 'Guthrie', 'Craufurd', 'P', 'gcraufurddx@va.gov', DATE '1993-03-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (503, 'Arabelle', 'Culpin', 'F', 'aculpindy@princeton.edu', DATE '1979-07-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (504, 'Stacy', 'Kalkofer', 'F', 'skalkoferdz@sciencedirect.com', DATE '1987-06-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (505, 'Karena', 'Humm', 'F', 'khumme0@wordpress.com', DATE '1997-09-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (506, 'Fin', 'Parsall', 'P', 'fparsalle1@xrea.com', DATE '1987-06-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (507, 'Loy', 'Klementz', 'P', 'lklementze2@europa.eu', DATE '1980-03-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (508, 'Delly', 'Duffell', 'F', 'dduffelle3@hud.gov', DATE '1998-02-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (509, 'Margot', 'Scarce', 'F', 'mscarcee4@ucoz.ru', DATE '1975-07-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (510, 'Rudolf', 'De la Perrelle', 'P', 'rdelaperrellee5@cafepress.com', DATE '1994-01-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (511, 'Lars', 'O''Shields', 'P', 'loshieldse6@acquirethisname.com', DATE '1980-08-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (512, 'Ryon', 'Gorbell', 'P', 'rgorbelle7@parallels.com', DATE '1975-11-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (513, 'Ivory', 'Cosgriff', 'F', 'icosgriffe8@telegraph.co.uk', DATE '1997-11-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (514, 'Zelma', 'Langworthy', 'F', 'zlangworthye9@google.fr', DATE '1981-12-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (515, 'Ellsworth', 'Spurman', 'P', 'espurmanea@moonfruit.com', DATE '1995-03-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (516, 'Karrah', 'Cabena', 'F', 'kcabenaeb@sfgate.com', DATE '1978-09-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (517, 'Kearney', 'McKue', 'P', 'kmckueec@woothemes.com', DATE '1982-09-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (518, 'Filmer', 'Jurek', 'P', 'fjureked@abc.net.au', DATE '1981-09-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (519, 'Fiann', 'Goldstraw', 'F', 'fgoldstrawee@sina.com.cn', DATE '1994-07-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (520, 'Rubin', 'Spawell', 'P', 'rspawellef@upenn.edu', DATE '1976-09-10');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (521, 'Aaron', 'Vasiliu', 'P', 'avasiliueg@blogger.com', DATE '1982-09-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (522, 'Dulcie', 'Beccera', 'F', 'dbecceraeh@nyu.edu', DATE '1977-07-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (523, 'Ortensia', 'Basketfield', 'F', 'obasketfieldei@prweb.com', DATE '1977-12-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (524, 'Nicolais', 'Kimpton', 'P', 'nkimptonej@illinois.edu', DATE '1995-08-04');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (525, 'Giorgi', 'Dalligan', 'P', 'gdalliganek@storify.com', DATE '1973-09-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (526, 'Waldemar', 'De Beauchemp', 'P', 'wdebeauchempel@who.int', DATE '1979-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (527, 'Philippa', 'Bollis', 'F', 'pbollisem@wikipedia.org', DATE '1972-05-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (528, 'Sanford', 'Yallowley', 'P', 'syallowleyen@yellowpages.com', DATE '1972-03-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (529, 'Nancey', 'MacCleod', 'F', 'nmaccleodeo@indiatimes.com', DATE '1981-06-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (530, 'Kristofer', 'Beall', 'P', 'kbeallep@macromedia.com', DATE '1971-09-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (531, 'Sutherlan', 'Antoniutti', 'P', 'santoniuttieq@woothemes.com', DATE '1982-11-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (532, 'Appolonia', 'D''Avaux', 'F', 'adavauxer@cnet.com', DATE '1971-12-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (533, 'Jock', 'Ruane', 'P', 'jruanees@drupal.org', DATE '1977-03-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (534, 'Karena', 'Hinksen', 'F', 'khinksenet@netvibes.com', DATE '1994-03-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (535, 'Stacia', 'Collymore', 'F', 'scollymoreeu@vistaprint.com', DATE '1998-09-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (536, 'Ludvig', 'Creamer', 'P', 'lcreamerev@ebay.com', DATE '1975-01-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (537, 'Sterling', 'Paulton', 'P', 'spaultonew@google.de', DATE '1999-05-31');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (538, 'Renate', 'Sarver', 'F', 'rsarverex@desdev.cn', DATE '1980-04-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (539, 'Jennine', 'McLise', 'F', 'jmcliseey@example.com', DATE '1978-12-28');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (540, 'Vinita', 'Sinkins', 'F', 'vsinkinsez@behance.net', DATE '1996-04-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (541, 'Jeffrey', 'Parry', 'P', 'jparryf0@mail.ru', DATE '1987-11-14');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (542, 'Zsa zsa', 'Mann', 'F', 'zmannf1@squidoo.com', DATE '1988-02-08');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (543, 'Lance', 'Demicoli', 'P', 'ldemicolif2@elpais.com', DATE '1983-01-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (544, 'Truman', 'Sail', 'P', 'tsailf3@slideshare.net', DATE '1989-05-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (545, 'Dulciana', 'Redborn', 'F', 'dredbornf4@nhs.uk', DATE '1985-05-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (546, 'Flossy', 'Pyer', 'F', 'fpyerf5@nydailynews.com', DATE '1988-12-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (547, 'Claybourne', 'Borless', 'P', 'cborlessf6@bing.com', DATE '1982-12-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (548, 'Annadiana', 'Fidal', 'F', 'afidalf7@pinterest.com', DATE '1983-06-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (549, 'Ryan', 'Begg', 'P', 'rbeggf8@va.gov', DATE '1984-04-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (550, 'Farlie', 'Holehouse', 'P', 'fholehousef9@weebly.com', DATE '1982-12-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (551, 'Mavis', 'Semble', 'F', 'msemblefa@goo.ne.jp', DATE '1972-07-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (552, 'Harp', 'Pennacci', 'P', 'hpennaccifb@hibu.com', DATE '1995-07-09');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (553, 'Monti', 'Feldman', 'P', 'mfeldmanfc@tiny.cc', DATE '1987-11-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (554, 'Shaun', 'Christofor', 'P', 'schristoforfd@sitemeter.com', DATE '1998-12-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (555, 'Margarethe', 'Searchwell', 'F', 'msearchwellfe@feedburner.com', DATE '1978-07-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (556, 'Ronna', 'Trembath', 'F', 'rtrembathff@1688.com', DATE '1993-03-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (557, 'Siusan', 'Studdal', 'F', 'sstuddalfg@theguardian.com', DATE '1993-06-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (558, 'Lalo', 'Greeson', 'P', 'lgreesonfh@illinois.edu', DATE '1982-10-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (559, 'Bunni', 'O''Cassidy', 'F', 'bocassidyfi@tamu.edu', DATE '1978-03-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (560, 'Mohandis', 'Borchardt', 'P', 'mborchardtfj@homestead.com', DATE '1991-11-03');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (561, 'Sollie', 'Hinrichsen', 'P', 'shinrichsenfk@unblog.fr', DATE '1976-12-02');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (562, 'Alyse', 'Lethbrig', 'F', 'alethbrigfl@springer.com', DATE '1996-02-07');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (563, 'Clement', 'Buckland', 'P', 'cbucklandfm@uol.com.br', DATE '1976-03-13');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (564, 'Cori', 'Andreu', 'P', 'candreufn@123-reg.co.uk', DATE '1970-07-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (565, 'Allys', 'Plackstone', 'F', 'aplackstonefo@mac.com', DATE '1997-02-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (566, 'Wheeler', 'Orable', 'P', 'worablefp@reference.com', DATE '1979-04-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (567, 'Edyth', 'Klimentov', 'F', 'eklimentovfq@noaa.gov', DATE '1993-01-23');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (568, 'Adrien', 'Buckhurst', 'P', 'abuckhurstfr@forbes.com', DATE '1987-08-05');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (569, 'Purcell', 'Everington', 'P', 'peveringtonfs@mozilla.com', DATE '1972-07-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (570, 'Lombard', 'Nathan', 'P', 'lnathanft@fda.gov', DATE '1971-06-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (571, 'Chris', 'Keable', 'F', 'ckeablefu@meetup.com', DATE '1987-01-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (572, 'Iggy', 'Birdseye', 'P', 'ibirdseyefv@simplemachines.org', DATE '1987-11-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (573, 'Adolph', 'Tartt', 'P', 'atarttfw@deliciousdays.com', DATE '1971-01-29');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (574, 'Skye', 'Joanic', 'P', 'sjoanicfx@hostgator.com', DATE '1982-01-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (575, 'Corny', 'Cockell', 'F', 'ccockellfy@nih.gov', DATE '1971-02-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (576, 'Joe', 'Grabert', 'P', 'jgrabertfz@state.tx.us', DATE '1993-08-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (577, 'Arlena', 'Sherwyn', 'F', 'asherwyng0@fotki.com', DATE '1995-12-12');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (578, 'Teodorico', 'Toffler', 'P', 'ttofflerg1@myspace.com', DATE '1984-05-16');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (579, 'Jelene', 'Abele', 'F', 'jabeleg2@scribd.com', DATE '1996-12-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (580, 'Currey', 'Orwin', 'P', 'corwing3@163.com', DATE '1991-04-17');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (581, 'Madlin', 'Algate', 'F', 'malgateg4@homestead.com', DATE '1978-02-06');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (582, 'Paule', 'Rosario', 'F', 'prosariog5@last.fm', DATE '1978-03-24');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (583, 'Sissy', 'Rospars', 'F', 'srosparsg6@cdc.gov', DATE '1989-01-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (584, 'Bordy', 'Genny', 'P', 'bgennyg7@marketwatch.com', DATE '1974-06-26');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (585, 'Debera', 'Carnachen', 'F', 'dcarnacheng8@163.com', DATE '1985-01-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (586, 'Elspeth', 'McComb', 'F', 'emccombg9@google.co.jp', DATE '1977-08-19');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (587, 'Lacey', 'Titford', 'F', 'ltitfordga@bing.com', DATE '1989-01-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (588, 'Sylas', 'Maine', 'P', 'smainegb@tuttocitta.it', DATE '1977-07-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (589, 'Lavinia', 'Earle', 'F', 'learlegc@examiner.com', DATE '1971-03-01');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (590, 'Helene', 'Doylend', 'F', 'hdoylendgd@xinhuanet.com', DATE '1978-04-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (591, 'Clerissa', 'Dinneen', 'F', 'cdinneenge@google.de', DATE '1985-06-27');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (592, 'Zebedee', 'Cosby', 'P', 'zcosbygf@samsung.com', DATE '1989-03-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (593, 'Ansel', 'Hendron', 'P', 'ahendrongg@is.gd', DATE '1995-04-11');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (594, 'Halimeda', 'O''Corren', 'F', 'hocorrengh@unesco.org', DATE '1973-02-15');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (595, 'Sharline', 'Curuclis', 'F', 'scuruclisgi@csmonitor.com', DATE '1990-12-22');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (596, 'Whitaker', 'Imlin', 'P', 'wimlingj@4shared.com', DATE '1981-03-18');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (597, 'Jo', 'Feast', 'P', 'jfeastgk@virginia.edu', DATE '1985-11-30');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (598, 'Winn', 'Chevis', 'P', 'wchevisgl@cargocollective.com', DATE '1975-05-21');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (599, 'Daile', 'Douberday', 'F', 'ddouberdaygm@cocolog-nifty.com', DATE '1995-11-20');
INSERT INTO club_members (member_id, first_name, last_name, full_part, email, join_date) VALUES (600, 'Elvina', 'Skeels', 'F', 'eskeelsgn@pen.io', DATE '1984-09-09');

-- Insert into locations table
insert /*+ APPEND */ into locations
select rownum, 'room'||rownum
from dual
connect by level <= 50;

-- Insert into the events table
insert /*+ APPEND */ into events
select rownum, 'event'||rownum, sysdate-720+mod(rownum,500), dbms_random.value(1,50)
from dual
connect by level <= 200;

-- Insert into the events_attended table
insert /*+ APPEND */ into events_attended
select dbms_random.value(1,100),  dbms_random.value(1,600)
from dual
connect by level <= 200;

commit;


-- Get first and last name of all PART TIME Members who attended evens after a date
set autotrace on;
SELECT first_name, last_name, events.event_date, events.event_name, locations.location_name
FROM club_members
INNER JOIN events_attended ON club_members.member_id = events_attended.member_id
INNER JOIN events ON events.event_id = events_attended.event_id
INNER JOIN locations ON locations.location_id = events.location
WHERE  full_part = 'P' 
AND events.event_date > '19-JAN-20'
ORDER By first_name;
set autotrace off;

-- Place index on memer ID in events_attended
-- Place index index on events.event_date
-- Place index on full_part

CREATE INDEX events_attended_member_id_ix ON events_attended (member_id);
CREATE INDEX event_date_ix ON events(event_date);
CREATE INDEX member_fullpart_ix ON club_members(full_part);


DROP INDEX events_attended_member_id_ix;
DROP INDEX event_date_ix;
DROP INDEX member_fullpart_ix;

SELECT * FROM club_members; WHERE member_id = 431;
SELECT * FROM events;
SELECT * FROM events_attended ORDER BY member_id;
SELECT * FROM locations;

-- 431 has more than 2 events
-- Linnie is the name of 431
set autotrace on;
SELECT first_name, last_name, events.event_date, events.event_name, locations.location_name FROM 
club_members,
events_attended,
events,
locations
WHERE first_name LIKE 'Linnie'
AND club_members.member_id = events_attended.member_id
AND events.event_id = events_attended.event_id
AND events.location = locations.location_id
ORDER BY events.event_date DESC;
set autotrace off;

SELECT * FROM club_members;

CREATE INDEX ix_club_member_name ON club_members (first_name);
CREATE INDEX ix_events_attended_member_id ON events_attended(member_id);
CREATE UNIQUE INDEX ix_events_event_id ON events(event_id);
CREATE UNIQUE INDEX ix_locations_location_id ON locations(location_id);

DROP INDEX ix_club_member_name;
DROP INDEX ix_events_attended_member_id;
DROP INDEX ix_events_event_id;
DROP INDEX ix_locations_location_id;

ALTER TABLE club_members ADD PRIMARY KEY (member_id);
ALTER TABLE events ADD PRIMARY KEY (event_id);
ALTER TABLE locations ADD PRIMARY KEY (location_id);

ALTER TABLE events_attended ADD CONSTRAINT member_fk
FOREIGN KEY (member_id) REFERENCES club_members(member_id);

ALTER TABLE events_attended ADD CONSTRAINT event_fk
FOREIGN KEY (event_id) REFERENCES events(event_id);

ALTER TABLE events ADD CONSTRAINT location_fk
FOREIGN KEY (location) REFERENCES locations(location_id);

-- 
SELECT first_name, last_name, full_part, events.event_date, events.event_name, locations.location_name
FROM club_members
INNER JOIN events_attended ON club_members.member_id = events_attended.member_id
INNER JOIN events ON events.event_id = events_attended.event_id
INNER JOIN locations ON locations.location_id = events.location
WHERE  locations.location_name = 'room12'
ORDER By events.event_name;

CREATE INDEX events_location_ix ON events (location);
DROP INDEX events_location_ix;

SELECT * FROM events;
