create database FYP_M;
use FYP_M;
create table Faculty(
	facultyName varchar (30) not null,
    facultyID    varchar (30) primary key, -- id is also username
    facultypassword  varchar(30) NOT NULL,
	facultyGender varchar(7) default  null
);
insert into Faculty values('Hassan Mustafa','hassan.mustafa','Mustafa@123','Male');
select * from Faculty;


delete from Faculty where facultyID='i20-0689';
-- insert more faculty...
 
create table FYP_Committee_Member(
      M_ID varchar (30) foreign key references Faculty(facultyID) unique,  
);
-- drop table FYP_Committee_Member;
select * from FYP_Committee_Member;

--SELECT FYPM.M_ID
--from FYP_Committee_Member fypm
--LEFT JOIN Faculty F on fypm.M_ID = F.facultyID
--Where f.facultyID is null;

--SELECT SG.groupID,
--       SG.Member1rollNo,S1.studentName as 'student1  Name',
--FROM FYP1 FYP1
--    LEFT OUTER JOIN studentGroup SG ON FYP1.groupID = SG.groupID

SELECT * from Faculty;
select * from FYP_Committee_Member;
insert into FYP_Committee_Member values('adnan.tariq');

-- Faculty members not in FYP Committee. -- (1)
SELECT facultyID
FROM Faculty
WHERE facultyID NOT IN
     (SELECT M_ID 
     FROM FYP_Committee_Member)

select * from PanelMember;




insert into FYP_Committee_Member values
('zohaib.iqbal'),
('naveed.ahmed'),
('hammad.majeed'),
('hassan.mustafa'),
('urooj.ghani');




create table student(
	studentName      varchar (40) not null,
    studentRollNo    varchar (30) primary key,
    studentPassword  varchar(30) NOT NULL,
    studentGender    varchar(7) default NULL,
);

insert into student values ('Masroor Ahmed','i19-0498','Mas@123','Male');
insert into student values ('Aftab Ali','i19-0466','Aftab@123','Male');
insert into student values ('Nayyar Malik','i19-0528','Nayyar@123','Male');
insert into student values ('Ahsan Qamar','i19-2048','Ahsan@123','Male');

select * from student;
-- add a whole lot of students.

create table reviewsORsuggestions(
      reviewID int IDENTITY(1,1) primary key,
	  review varchar(500),
	  givenORnot int default 0 -- 0 for not given 1 for given.
);
SELECT * FROM reviewsORsuggestions;

insert into reviewsORsuggestions(review,givenORnot) values ('Good Performance',1);

create table supervisors(
    supervisorID varchar(30) foreign key references Faculty(facultyID) unique,
	sWorkLoad int default 0,
	CHECK (sWorkLoad<=6 and sWorkLoad>=0),
    reviewOrSuggestion int foreign key references reviewsORsuggestions(reviewID)
);
drop table supervisors;
select * from supervisors;

insert into supervisors (supervisorID) values ('hassan.mustafa');
insert into supervisors (supervisorID) values ('urooj.ghani');



create table co_supervisors(
    co_supervisorID varchar(30) foreign key references Faculty(facultyID) unique,
	csWorkLoad int default 0,
	CHECK (csWorkLoad<=6 and csWorkLoad>=0),
    reviewOrSuggestion int foreign key references reviewsORsuggestions(reviewID)
);
drop table co_supervisors;
-- show co_supervisor names with their ids.
select * from co_supervisors;

INSERT INTO co_supervisors (co_supervisorID) values ('noreen.jamil');

-- Query 01
-- see (students registered in FYP I, their group members, supervisors, project details)
create table studentGroup(
    groupID int IDENTITY(1,1) primary key ,
    Member1rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 1
	Member2rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 2
	Member3rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 3
	supervID  varchar(30) foreign key references supervisors(supervisorID) default NULL,
    co_supervID  varchar(30) foreign key references co_supervisors(co_supervisorID) default NULL,
	projectTitle varchar(100) not null,
	projectDetails varchar (500) default NULL
);

drop table studentGroup;
select * from studentGroup;

insert into studentGroup(Member1rollNo,Member2rollNo,supervID,projectTitle) values ('i19-0434','i19-0498','urooj.ghani','Indoor Navigation');

insert into studentGroup(Member1rollNo,Member2rollNo,supervID,projectTitle) values ('i19-0466','i19-0528','urooj.ghani','AI based Physics exp.');

select * from studentGroup; -- Write an query to also show names of the students.




create table FYP1(
     FYP1_ID int IDENTITY(1,1) primary key, 
     groupID int foreign key references studentGroup(groupID),
	 submitedOrnot int default 0,  -- 0 means No, 1 means Yes.
	 evaluatedORnot int default 0,   -- 0 means No, 1 means Yes.
	 grade varchar(10) default NULL,
     reviewOrSuggestion int foreign key references reviewsORsuggestions(reviewID),
);


-- we have rollNO, we need groupNo as string.


drop table FYP1;

UPDATE FYP1
SET reviewOrSuggestion = 1
WHERE FYP1_ID = 1;


insert into FYP1(groupID) values(1);
insert into FYP1(groupID) values(2);

create table deadline(
     D_ID int foreign key references FYP1(FYP1_ID),
	 deadlineTime DATE  
);
drop table deadline;
insert into deadline(D_ID,deadlineTime) values (1,'2022-09-13');
insert into deadline(D_ID,deadlineTime) values (1,'2022-9-14');

SELECT * FROM deadline;
-- considering panel has 3 members.
create table PanelMember(
      PM_ID varchar (30) foreign key references Faculty(facultyID) UNIQUE
);
drop table PanelMember 
Select * from PanelMember;

-- delete from PanelMember;
insert into PanelMember values
('ahmedraza.shahid'),
('hammad.majeed'),
('hassan.mustafa'),
('irum.inayat'),
('muhammad.asim'),
('naveed.ahmed');
insert into PanelMember values ('hammad.majeed');
insert into PanelMember values ('hassan.mustafa');
insert into PanelMember values ('irum.inayat'),
								('muhammad.asim'),
								('naveed.ahmed');

create table panel(
    PanelID int primary key identity(1,1),
    PanelMember1ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 1
	PanelMember2ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 2
	PanelMember3ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 3
    PanelMember4ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 1
	PanelMember5ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 2
	PanelMember6ID varchar(30) foreign key references PanelMember(PM_ID) NOT NULL , -- Panel  member 3
    Group_Assigned int foreign key references studentGroup(groupID) unique
);
drop table panel;
select * from panel;

INSERT INTO panel
(PanelMember1ID,PanelMember2ID,PanelMember3ID,PanelMember4ID,PanelMember5ID,PanelMember6ID,Group_Assigned)
VALUES('ahmedraza.shahid','hammad.majeed','hassan.mustafa','irum.inayat','muhammad.asim','naveed.ahmed',1);

select * from panel;

INSERT INTO PANEL
(PanelID,PanelMember1ID,PanelMember2ID,PanelMember3ID,PanelMember4ID,PanelMember5ID,PanelMember6ID,Group_Assigned)
VALUES('ahmedraza.shahid','hammad.majeed','hassan.mustafa','irum.inayat','muhammad.asim','naveed.ahmed',1);

--  to make a panel, first you take faculty members not in any panel.
--  and you take groups, which does not have any panel assigned.
-- groups, which does not have any panel assigned.  -- (2)
SELECT groupID,projectTitle
FROM studentGroup
WHERE groupID NOT IN
     (SELECT Group_Assigned 
     FROM Panel)

-- Faculty members not in Panel.  -- (2)
SELECT facultyID
FROM Faculty
WHERE facultyID NOT IN
     (SELECT PM_ID 
      FROM PanelMember) and (facultyID!='adnan.tariq') and (facultyID!='aftab.maroof')

-- Faculty members  

--SELECT SYSDATETIME()  
--    ,SYSDATETIMEOFFSET()  
--    ,SYSUTCDATETIME()  
--    ,CURRENT_TIMESTAMP  
--    ,GETDATE()  
--    ,GETUTCDATE();  



insert into FYP1(groupID) values (1);
select * from FYP1;


-- Student details who are regestered in FYP1 and does not have any supervisors.
SELECT SG.groupID,
       SG.Member1rollNo,S1.studentName as 'student1  Name',
	   SG.Member2rollNo, S2.studentName as 'student2 Name',
	   SG.Member3rollNo, S3.studentName as 'Studen3  Name',
	   SG.supervID, SN.facultyName as 'Supervisor Name',
	   SG.co_supervID, CSN.facultyName as 'Co_Supervisor',
	   SG.projectTitle as 'Project Title',
	   SG.projectDetails as 'Project Desc.'
FROM FYP1 FYP1
    LEFT OUTER JOIN studentGroup SG ON FYP1.groupID = SG.groupID 
    LEFT OUTER JOIN supervisors SV ON SG.supervID  = SV.supervisorID
    LEFT OUTER JOIN Faculty SN ON   SG.supervID= SN.facultyID
    LEFT OUTER JOIN Faculty CSN ON   SG.co_supervID= CSN.facultyID
    LEFT OUTER JOIN student S1 ON SG.Member1rollNo  = S1.studentRollNo
    LEFT OUTER JOIN student S2 ON SG.Member2rollNo  = S2.studentRollNo
    LEFT OUTER JOIN student S3 ON SG.Member3rollNo  = S3.studentRollNo
WHERE (SG.supervID is NULL)	


create PROCEDURE ShowStudentsRegesteredInFYP1
AS
BEGIN

SELECT SG.groupID,
       SG.Member1rollNo,S1.studentName as 'student1  Name',
	   SG.Member2rollNo, S2.studentName as 'student2 Name',
	   SG.Member3rollNo, S3.studentName as 'Studen3  Name',
	   SG.supervID, SN.facultyName as 'Supervisor Name',
	   SG.co_supervID, CSN.facultyName as 'Co_Supervisor',
	   SG.projectTitle as 'Project Title',
	   SG.projectDetails as 'Project Desc.'
FROM FYP1 FYP1
    LEFT OUTER JOIN studentGroup SG ON FYP1.groupID = SG.groupID 
    LEFT OUTER JOIN supervisors SV ON SG.supervID  = SV.supervisorID
    LEFT OUTER JOIN Faculty SN ON   SG.supervID= SN.facultyID
    LEFT OUTER JOIN Faculty CSN ON   SG.co_supervID= CSN.facultyID
    LEFT OUTER JOIN student S1 ON SG.Member1rollNo  = S1.studentRollNo
    LEFT OUTER JOIN student S2 ON SG.Member2rollNo  = S2.studentRollNo
    LEFT OUTER JOIN student S3 ON SG.Member3rollNo  = S3.studentRollNo
END


create PROCEDURE FacultyMembersNotInPanel
AS
BEGIN
-- Faculty members not in Panel.  -- (2)
SELECT facultyID,facultyName
FROM Faculty
WHERE facultyID NOT IN
     (SELECT PM_ID 
      FROM PanelMember)
END

--drop procedure FacultyMembersNotInPanel;
--create table studentProjects(
--   projectID varchar(30) primary key
--);


select * from student;
select * from Faculty;
select * from supervisors;
select * from studentGroup;
select * from FYP1;
select * from panel;

select * from student where studentRollNo = 'i19-0434' and studentPassword = 'Malani95@';



create table studentEvaluation(
     E_ID int foreign key references studentGroup(groupID),     
	 c1 int CHECK (c1<=10 and c1>=0),
	 c2 int CHECK (c2<=10 and c2>=0),
	 c3 int CHECK (c3<=10 and c3>=0),
	 c4 int CHECK (c4<=10 and c4>=0),
	 c5 int CHECK (c5<=10 and c5>=0),
	 c6 int CHECK (c6<=10 and c6>=0),
	 c7 int CHECK (c7<=10 and c7>=0),
	 c8 int CHECK (c8<=10 and c8>=0),
	 c9 int CHECK (c9<=10 and c9>=0),
	 c10 int CHECK (c10<=10 and c10>=0),
	 c11 int CHECK (c11<=10 and c11>=0),
	 c12 int CHECK (c12<=10 and c12>=0),
	 c13 int CHECK (c13<=10 and c13>=0),
	 c14 int CHECK (c14<=10 and c14>=0),
	 c15 int CHECK (c15<=10 and c15>=0),
	 reviewOrSuggestion int foreign key references reviewsORsuggestions(reviewID)
);

drop table studentEvaluation;
-- FYPs can have reviews and also supervisors & co-supervisors.

insert into supervisors(supervisorID) values ('urooj.ghani');
-- supervisor available (i.e: whose work load is <6)
select supervisorID
FROM supervisors
Where (sWorkLoad<6)


alter table supervisors

drop table supervisors;

select * from supervisors;


	
-- show sgroup members (with whom student is working on FYP), project title/description (on which project
-- is working), supervisor (who is supervising their project). The students can see the panels to 
-- which they are assigned that panel will evaluate their FYP

-- details of a specific student, registered in FYP.
create procedure getStudentData
@sp varchar(30)
as
SELECT SG.groupID,
       SG.Member1rollNo,S1.studentName as 'Member 1',
	   SG.Member2rollNo, S2.studentName as 'Member 2',
	   SG.Member3rollNo, S3.studentName as 'Member 3',
	   SG.supervID, SN.facultyName as 'Supervisor Name',
	   SG.co_supervID, CSN.facultyName as 'Co_Supervisor',
	   SG.projectTitle as 'Project Title',
	   SG.projectDetails as 'Project Desc.',
	   PA.PanelID as 'Panel ID',
	   D.deadlineTime as 'Deadline'
FROM FYP1 FYP1
    LEFT OUTER JOIN studentGroup SG ON (FYP1.groupID = SG.groupID) 
    LEFT OUTER JOIN supervisors SV ON SG.supervID  = SV.supervisorID
    LEFT OUTER JOIN Faculty SN ON   SG.supervID= SN.facultyID
    LEFT OUTER JOIN Faculty CSN ON   SG.co_supervID= CSN.facultyID
    LEFT OUTER JOIN student S1 ON SG.Member1rollNo  = S1.studentRollNo
    LEFT OUTER JOIN student S2 ON SG.Member2rollNo  = S2.studentRollNo
    LEFT OUTER JOIN student S3 ON SG.Member3rollNo  = S3.studentRollNo
    LEFT OUTER JOIN panel PA ON SG.groupID  = PA.Group_Assigned
    LEFT OUTER JOIN deadline D ON FYP1.FYP1_ID  = D.D_ID

Where Member1rollNo = @sp or Member2rollNo = @sp or Member3rollNo = @sp 
Go


-- Show review of a student, given roll NO
create procedure getStudentReview
@sp varchar(30)
as
select FYP1_ID,projectTitle,review
FROM FYP1 f
INNER JOIN reviewsORsuggestions R ON R.reviewID = F.reviewOrSuggestion
INNER JOIN studentGroup sg ON sg.groupID = f.groupID
Where sg.Member1rollNo = @sp  or sg.Member2rollNo = @sp or sg.Member3rollNo = @sp 
GO

--drop procedure getStudentData
declare @sp varchar(30)
set @sp = 'i19-0434'
exec getStudentData 'i19-0434'