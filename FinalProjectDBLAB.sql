create database aliffoundation;

use aliffoundation;

create table aliffoundationtable(
foundationSN int,
members int,
email varchar(100) not null unique,
phonenumber varchar(11) not null unique,
address varchar(100),
primary key (foundationSN)
);

insert into aliffoundationtable
values(2231, 20, "aliffoundation@gmail.com", "031121311", "Johar Town Lahore");

create table Admin(
empID int not null unique,
name varchar(100),
DOB date,
phonenumber varchar(100),
primary key(empID),
FoundationSN int,
foreign key (FoundationSN) references aliffoundationtable(foundationSN)
);

insert into Admin
values
(123, "Usama Kaleem", "2000-06-15", "031231112", 2231),
(124, "Subhan Khan", "2000-11-15", "031234122", 2231),
(131, "Hamza javed", "2000-02-23", "0312342498", 2231),
(132, "Raheel khan", "2001-01-02", "0313452468", 2231),
(133, "Roohan ahmad", "2002-12-15", "0313542467", 2231),
(134, "Jamsheed ali", "2002-11-14", "0343542413", 2231),
(135, "Ali ahmad", "2001-01-01", "0345654424", 2231),
(136, "Sameer khan", "2002-01-13", "033342435", 2231),
(137, "Mian raheel", "2001-12-20", "0346524224", 2231),
(138, "Sameer khan", "2000-11-30", "0323542245", 2231);

UPDATE Admin SET  DOB = '2000-10-15' WHERE empID = 124;

UPDATE Admin SET  DOB = '1998-10-15' WHERE empID = 132;

delete from Admin
where empID = 124;

delete from Admin
where name = "Sameer khan";


create table needyPeople(
NP_ID int not null unique,
name varchar(100),
nationalID varchar(20) not null unique,
income int,
address varchar(100),
age int,
DOB date,
phoneNumber varchar(11) not null unique,
primary key(NP_ID),
empHandling int,
foreign key (empHandling) references Admin(empID)
);

insert into needyPeople
values
(1122, "Qasim", "1131-3123-1231-1", 10000, "Johar Town Lahore", 25, "2000-06-15", "030233112", 123),
(001, "Sameer khan","35202-9213511-4","20000","999, R2, johar town, lhr","33" , "1993-11-10", "0323512245", 131),
(002, "Raheel ali","35202-9223135-5","30000","91, R1, johar town, lhr","22" , "2000-01-01", "0323562245", 134),
(003, "abdullah ch","35202-9223511-9","5000","92, A1, Muslim town, lhr","34" , "1993-12-10", "0333542245", 135),
(004, "Arslan rajpoot","35202-9423511-9","6000","961, R1, johar town, lhr","44" , "1993-10-20", "0323142240", 136),
(005, "Arslan ali","35202-9212411-9","9000","96, R1, Muslim town, lhr","24" , "1993-12-30", "0320542542", 131),
(006, "Zain ali","35202-922143-6","1000","1, A2, Township town, lhr","42" , "1993-01-24", "035422245", 134),
(007, "Mian ameer","35202-1355351-2","8000","61, B2, johar town, lhr","49" , "1993-11-16", "035421245", 137),
(008, "Imran ch","35202-9223124-0","4000","61, E1, Muslim town, lhr","29" , "1993-03-14", "0323542842", 132),
(009, "Imran khan","35202-1243511-2","5000","13, E, Township town, lhr","25" , "1993-04-10", "0325422245", 138),
(010, "Subhan khan","35202-1223511-9","15000","013, W1, Township town, lhr","33" , "1993-11-30", "0325492245", 134)
;

UPDATE needyPeople SET  age = '27' WHERE NP_ID = 1122;

UPDATE needyPeople SET  DOB = '1995-09-09' WHERE NP_ID = 001;

delete from needyPeople
where NP_ID = 1122;

delete from needyPeople
where income = 10000;

create table donor(
national_id varchar(25) not null unique,
donor_id int,
primary key (donor_id),
name varchar(100),
Phone_no int,
age int,
DOB date,
empHandling int,
foreign key (empHandling) references Admin(empID),
blood_group varchar(20),
address varchar(100)
);

insert into donor
values
("9930-9423-1211-1", 780, "Kamal", "01231412", 30, "1996-06-15", 123, "O-", "DHA Lahore" ),
("3522-3423-35202-1", 781, "Asim", "01231412", 34, "1996-11-19", 134, "A-", " Lahore" ),
("99321-4623-1211-1", 782, "Ahmad", "01231412", 32, "1989-01-9", 138, "B-", "Johar town Lahore" ),
("35242-7823-1211-1", 783, "Ali", "31231412", 31, "1996-04-19", 132, "A-", "DHA Lahore" ),
("90431-9473-1211-1", 784, "Akul", "031231412", 20, "1996-11-19", 134, "B-", "Johar town Lahore" ),
("90311-9223-1211-1", 785, "Zeeshan", "31231412", 24, "1996-06-15", 134, "O-", "DHA Lahore" ),
("35202-1523-35202-1", 786, "Ahmad", "3131412", 40, "1989-01-14", 136, "O-", "DHA Lahore" ),
("3510-7423-1211-1", 787, "Ahsan", "013131412", 50, "1996-11-15", 138, "O-", "Johar town Lahore" ),
("99130-3202-1211-1", 788, "Iman", "012331412", 30, "1989-06-5", 131, "A-", "Muslim town Lahore" ),
("35402-9423-1211-1", 789, "Ayesha", "311231412", 30, "1989-11-5", 132, "A-", "Johar town Lahore" ),
("35222-3520-1211-1", 790, "Iqra", "012311412", 24, "1989-06-15", 133, "B-", "Muslim town Lahore" )
;

UPDATE donor SET age = '31' WHERE donor_id = 780;

UPDATE donor SET age = '37' WHERE donor_id = 782;

delete from donor
where donor_id = "781";

delete from donor
where name = "Iman";

create table blooddonation(
patientid int,
primary key (patientid),
bloodgroup varchar(20),
donorid int,
foreign key (donorid) references donor(donor_id)
);

insert into blooddonation
values
(12567, "O-", 780),
(41241, "A-",781),
(45343, "B-",782),
(56334, "A-",783),
(74556, "B-", 784),
(14234, "O-", 785),
(85645, "O-", 786),
(24253, "O-", 787),
(56345, "A-", 788),
(54235, "A-", 789)
;

UPDATE blooddonation SET  bloodgroup = 'AB+' WHERE patientid = 41241;

UPDATE blooddonation SET  bloodgroup = 'AB' WHERE patientid = 56345;

delete from blooddonation
where patientid = 45343;

delete from blooddonation
where bloodgroup = "O-";

create table donation(
amount int,
donorid int not null unique,
donationtype varchar(20),
donation_id int not null unique,
primary key (donation_id),
transactionid int not null unique,
foreign key (donorid) references donor(donor_id)
);

insert into donation
values
(50000, 780, "Cash", 45643, 125675),
(10000, 781, "Cheque", 35232, 234124),
(30000, 782, "Cash", 54363, 123411),
(100000, 783, "Cash", 13121, 142142),
(150000, 784, "Cheque", 42341, 141244),
(50000, 785, "Cash", 52351, 352311),
(40000, 786, "Cheque", 42342, 342121),
(80000, 787, "Cash", 52302, 979679),
(5000, 788, "Cash", 54353, 353422),
(35000, 789, "Cheque", 34323, 245235)
;

UPDATE donation SET donationtype = 'JazzCash' WHERE donation_id = 35232;

UPDATE donation SET donationtype = 'JazzCash' WHERE donation_id = 42342;

delete from donation
where donation_id = 52351;

delete from donation
where donationtype = "Cash";