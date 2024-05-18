--1. Student
create table student(
    id serial primary key,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    dateOfBirth integer not null,
    enrolledDate integer not null,
    gender varchar(50) not null,
    nationalIdNumber integer not null,
    studentCardNumber integer not null
); 

--2. Teacher
create table teacher(
    id serial primary key,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    dateOfBirth integer not null,
    academicRank integer not null,
    hireDate integer not null
);

--3. Grade Details
create table gradeDetails(
    id serial primary key,
    gradeId integer not null,
    achievementTypeId integer not null,
    achievementPoints integer not null,
    achievementMaxPoints integer not null,
    achievementDate integer not null
);

--4. Course 
create table course(
    id serial primary key,
    name varchar(50) not null,
    credit integer not null,
    academicYear integer not null,
    smestar integer not null
);

--5. Grade
create table course(
    id serial primary key,
    studentId integer not null,
    courseId integer not null,
    teacherId integer not null,
    grade integer not null,
    comment varchar(100) not null,
    createdDate integer not null
);

--6. Acievement Type
create table achievementType(
    id serial primary key,
    name varchar(100) not null,
    description varchar(100) not null,
    participationRate integer not null
);