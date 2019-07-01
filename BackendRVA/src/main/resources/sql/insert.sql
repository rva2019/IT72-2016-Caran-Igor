--insert lige
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Premier_League','PFL');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'La_Liga','LFP');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Serie_A','CFS');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Bundesliga','DFL');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Ligue_1','LC');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Primeira_Liga','PL');
insert into LIGA("id","naziv","oznaka") values (NEXTVAL('LIGA_SEQ'), 'Jelen_Super_Liga','JSL');
select * from LIGA;

insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Srbi', 'SRB');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Englezi', 'ENG');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Spanci', 'ESP');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Portugalci', 'POR');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Nemci', 'GER');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Brazilci', 'BRA');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Argentinci', 'ARG');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Francuzi', 'FRA');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Holandjani', 'HOL');
insert into NACIONALNOST("id","naziv","skracenica") values (NEXTVAL('NACIONALNOST_SEQ'),'Belgijanci', 'BLG');
select * from NACIONALNOST;

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'ManUtd', '01-01-1900', 'Manchester', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'ManCity', '01-01-1900', 'Manchester', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Liverpool', '01-01-1900', 'Liverpool', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Chelsea', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Arsenal', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Tottenhem', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Fulham', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Bortmuth', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'WestHam', '01-01-1900', 'London', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Cardiff', '01-01-1900', 'Cardiff', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Wolverhampthon', '01-01-1900', 'Wolverhampthon', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Everton', '01-01-1900', 'Liverpool', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Brighton', '01-01-1900', 'Brighton', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Huddlesfield', '01-01-1900', 'Huddlesfield', 1);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Newcastle', '01-01-1900', 'London', 1);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Barcelona', '01-01-1900', 'Barcelona', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Real_Madrid', '01-01-1900', 'Madrid', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Atlethico_Madric', '01-01-1900', 'Madrid', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Espanhol', '01-01-1900', 'Espanhol', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Valencia', '01-01-1900', 'Valencia', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Athletic_Bilbao', '01-01-1900', 'Bilbao', 2);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Malaga', '01-01-1900', 'Malaga', 2);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Inter', '01-01-1900', 'Milan', 3);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Milan', '01-01-1900', 'Milan', 3);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Juve', '01-01-1900', 'Torino', 3);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Torino', '01-01-1900', 'Torino', 3);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Atalanta', '01-01-1900', 'Atalanta', 3);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Laipzig', '01-01-1900', 'Laipzig', 4);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Bayern', '01-01-1900', 'Munchen', 4);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Dortmunt', '01-01-1900', 'Dortmunt', 4);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Koln', '01-01-1900', 'Koln', 4);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Bayer_Leverkuzen', '01-01-1900', 'Leverkuzen', 4);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Frankfurt', '01-01-1900', 'Frankfurt', 4);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'PSG', '01-01-1900', 'Paris', 5);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Lyon', '01-01-1900', 'Lyon', 5);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Monaco', '01-01-1900', 'Monaco', 5);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Marseille', '01-01-1900', 'Marseille', 5);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Porto', '01-01-1900', 'Porto', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Benfica', '01-01-1900', 'Benfica', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Sporting', '01-01-1900', 'Sporting', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Braga', '01-01-1900', 'Braga', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Medeira', '01-01-1900', 'Medeira', 6);

insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Vojvodina', '01-01-1900', 'Novi_Sad', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Partizan', '01-01-1900', 'Belgrade', 6);
insert into TIM("id","naziv","osnovan","sediste","liga")VALUES (NEXTVAL('TIM_SEQ'), 'Crvena_Zvezda', '01-01-1900', 'Belgrade', 6);
select * from TIM;


INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Rahim', 'Sterling', 1,'07-07-1995', 2, 2);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'David', 'De Gea', 2,'07-07-1995', 3, 1); 
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Juan', 'Mata', 3,'07-07-1995', 3, 1);  
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Nemanja', 'Matic', 4,'07-07-1995', 1, 1);  
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Mika', 'Mikovic', 5, '07-07-1995', 3, 3);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Aleksandar', 'Aleksandrovic', 6, '07-07-1995', 4, 4);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Aleksandar', 'Aleksandrovic', 7, '07-07-1995', 5,5);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Aleksandar', 'Aleksandrovic', 8, '07-07-1995', 6, 6);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Aleksandar', 'Aleksandrovic', 9, '07-07-1995', 7, 7);
INSERT INTO igrac("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
 VALUES (NEXTVAL('IGRAC_SEQ'), 'Marko', 'Markovic', 10, '07-07-1995', 7, 7);