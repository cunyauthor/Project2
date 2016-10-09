USE SYS;
 
DROP TABLE IF EXISTS Citizenship;
Drop Table If Exists Religion;
Drop Table If Exists CitiBike;
 
CREATE TABLE Citizenship
(
  Month varchar(50) NOT NULL,
   Region1 int NOT NULL,
   Region2 int NOT NULL,
   Region3 int NOT NULL,
   Region4 int NOT NULL,
   Region5 int NOT NULL,
   Total int NOT NULL
);
 
 
SELECT * FROM Citizenship;
 
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("April",13,33,76,2,47,171);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("May",17,55,209,1,143,425);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("June",8,63,221,1,127,420);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("July",13,104,240,6,123,486);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("August",18,121,274,9,111,533);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("September",25,160,239,2,88,514);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("October",9,88,295,2,127,521);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("November",2,86,292,2,120,502);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("December",1,128,232,6,155,522);
Insert into Citizenship (Month,Region1,Region2,Region3,Region4,Region5,Total) values ("Total",106,838,2078,31,1041,4094);
 
SELECT * FROM Citizenship ;
SELECT COUNT(*) FROM Citizenship;
 
CREATE TABLE Religion
(
                Religion varchar(50) NOT NULL,
                `<$10k` int NOT NULL,
                `$10-20k` int NOT NULL,
                `$20-30k` int NOT NULL,
                `$30-40k` int NOT NULL,
                `$40-50k` int NOT NULL,
                `$50-75k` int NOT NULL,
                `$75-100k` int NOT NULL,
                `$100k-150k` int NOT NULL,
                `>150k` int NOT NULL
);
 
SELECT * FROM Religion;
 
Insert into Religion (Religion,`<$10k`,`$10-20k`,`$20-30k`,`$30-40k`,`$40-50k`,`$50-75k`,`$75-100k`,`$100k-150k`,`>150k`) values ("Agnostic",27,34,60,81,76,137,122,109,84);
Insert into Religion (Religion,`<$10k`,`$10-20k`,`$20-30k`,`$30-40k`,`$40-50k`,`$50-75k`,`$75-100k`,`$100k-150k`,`>150k`) values ("Atheist",12,27,37,52,35,70,73,59,74);
Insert into Religion (Religion,`<$10k`,`$10-20k`,`$20-30k`,`$30-40k`,`$40-50k`,`$50-75k`,`$75-100k`,`$100k-150k`,`>150k`) values ("Buddhist",27,21,30,34,33,58,62,39,53);
Insert into Religion (Religion,`<$10k`,`$10-20k`,`$20-30k`,`$30-40k`,`$40-50k`,`$50-75k`,`$75-100k`,`$100k-150k`,`>150k`) values ("Catholic",418,617,732,670,638,1116,949,792,633);
 
SELECT * FROM Religion ;
SELECT COUNT(*) FROM Religion;
 
CREATE TABLE CitiBike
(
  `tripduration` varchar(100) NOT NULL,
  `starttime` varchar(50) NOT NULL,
  `stoptime` varchar(50) NOT NULL,
  `start station id` varchar(50) NOT NULL,
  `start station name` varchar(50) NOT NULL,
  `start station latitude` varchar(50) NOT NULL,
  `start station longitude` varchar(50) NOT NULL,
  `end station id` varchar(50) NOT NULL,
  `end station name` varchar(50) NOT NULL,
  `end station latitude` varchar(50) NOT NULL,
  `end station longitude` varchar(50) NOT NULL,
  `bikeid` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `birth year` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
);
 
SELECT * FROM CitiBike;
 
LOAD DATA LOCAL INFILE "/Users/fionaho/Desktop/CitiBike.csv"
INTO TABLE CitiBike
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
 
;
 
SELECT * FROM CitiBike ;
SELECT COUNT(*) FROM CitiBike;