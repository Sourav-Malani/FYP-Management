create database FYP_M;
use FYP_M;
create table Faculty(
	facultyName varchar (30) not null,
    facultyID    varchar (30) primary key, -- id is also username
	--facultyDesignation  varchar (15),
  -- facultyUsername  varchar(20) NOT NULL,
    facultypassword  varchar(30) NOT NULL,
	facultyGender varchar(7) default  null
    --isCoordinator varchar(10) default null,
);

-- insert into Faculty values('Hassan Mustafa','hassan.mustafa','Mustafa@123','Male');
select * from Faculty;


create table FYP_Committee_Member(
      M_ID varchar (30) foreign key references Faculty(facultyID),  
);




drop table FYP_Committee_Member;

select * from FYP_Committee_Member;
    --Select distinct W.First_Name, T.Worker_Title
    --from Worker W
    --INNER JOIN Title T
    --ON W.WORKER_ID = T.WORKER_REF-ID
    --AND T.WORKER_TITLE IN ('Manager');

	-- faulty who is also an FYP member
    Select distinct F.facultyName
    from Faculty F
    inner join FYP_Committee_Member C
    ON F.facultyID = C.M_ID
	where F.facultyID = 'hassan.mustafa' and F.facultypassword = 'Mustafa@123';

insert into FYP_Committee_Member values
('hassan.mustafa');

insert into FYP_Committee_Member values
('urooj.ghanI');




create table student(
	studentName      varchar (40) not null,
    studentRollNo    varchar (30) primary key,
    --studentUsername  varchar(20) NOT NULL,
    studentPassword  varchar(30) NOT NULL,
    studentGender    varchar(7) default NULL,
	-- groupId          varchar(10) references studentGroup(groupID),
--	isLeader         int DEFAULT NULL,
    -- createdDtm datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

insert into student values ('Masroor Ahmed','i19-0498','Mas@123','Male');
insert into student values ('Aftab Ali','i19-0466','Aftab@123','Male');

insert into student values ('Nayyar Malik','i19-0528','Nayyar@123','Male');
insert into student values ('Ahsan Qamar','i19-2048','Ahsan@123','Male');

select * from student;


create table supervisors(
    supervisorID varchar(30) foreign key references Faculty(facultyID) unique,
	sWorkLoad int default null,
	CHECK (sWorkLoad<=6 and sWorkLoad>=0)
);

drop table supervisors;
select * from supervisors;

insert into supervisors (supervisorID,sWorkLoad) values ('hassan.mustafa',5);
insert into supervisors values ('urooj.ghani',6);

-- show supervisor names with their ids.
select * from supervisors;

create table co_supervisors(
    co_supervisorID varchar(30) foreign key references Faculty(facultyID) unique,
	csWorkLoad int default null,
	CHECK (csWorkLoad<=6 and csWorkLoad>=0)
);
-- show co_supervisor names with their ids.
select * from co_supervisors;


-- see (students registered in FYP I, their group members, supervisors, project details)

create table studentGroup(
    groupID int IDENTITY(1,1) primary key ,
    Member1rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 1
	Member2rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 2
	Member3rollNo varchar(30) foreign key references student(studentRollNo) default NULL, -- member 3
	supervID  varchar(30) foreign key references supervisors(supervisorID),
    co_supervID  varchar(30) foreign key references co_supervisors(co_supervisorID) default NULL,
	projectTitle varchar(100) not null,
	projectDetails varchar (500) default NULL
);
-- drop table studentGroup;

insert into studentGroup(Member1rollNo,Member2rollNo,supervID,projectTitle) values ('i19-0434','i19-0498','urooj.ghani','Indoor Navigation');

insert into studentGroup(Member1rollNo,Member2rollNo,supervID,projectTitle) values ('i19-0466','i19-0528','urooj.ghani','AI based Physics exp.');

select * from studentGroup; -- Write an query to also show names of the students.



select sg.Member1rollNo,S.studentName,Member2rollNo,S.studentName,sg.Member3rollNo,sg.supervID,sg.projectTitle from student S
inner join studentGroup SG ON S.studentRollNo = SG.Member1rollNo

create table FYP1(
     groupID int foreign key references studentGroup(groupID),
	 submitedOrnot int default 0,  -- 0 means No, 1 means Yes.
	 evaluatedORnot int default 0,   -- 0 means No, 1 means Yes.
	 grade varchar(10) default NULL,
	 deadline SMALLDATETIME
);



drop table FYP1;

create table evaluation(
      
      EgroupID int foreign key references FYP1(groupID)   
);

create table PanelMember(
      P_ID varchar (30) foreign key references Faculty(facultyID), 
	  FYP_Assigned int foreign key references FYP1(groupID)
);



insert into FYP1(groupID) values (1);
select * from FYP1;


-- Student details who are regestered in FYP1
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

--create table studentProjects(
--   projectID varchar(30) primary key
--);


select * from student;
select * from Faculty;
select * from supervisors;
select * from studentGroup;
select * from FYP1;

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
	 reviewOrSuggestions varchar (500),
);

insert into studentEvaluation()
-- panel



	
