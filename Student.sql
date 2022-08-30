/* Creating our database*/

CREATE DATABASE StudentPortal;

/* Creating a new user */

CREATE USER 'Admin' IDENTIFIED BY 'Admin12345';

/* Granting all privileges on our database */

GRANT ALL ON StudentPortal.* TO 'Admin';

/* Creating our tables */

Use StudentPortal;

CREATE TABLE Student(
student_id int PRIMARY KEY auto_increment,
student_name varchar(50) not null,
student_address varchar(50) not null,
student_email varchar(50) not null,
student_password varchar(20) not null
);

INSERT INTO Student(student_name, student_address, student_email, student_password)
VALUES('Gabriel','6474 Pine Street','example@domain.com','apple_bees'),
('James','6474 Pine Street','example2@domain.com','secure123'),
('Gomez','6474 Pine Street','example3@domain.com','ice_cream'),
('Theo','6474 Pine Street','example4@domain.com','pop_tart');

CREATE TABLE Administrator(
admin_id int PRIMARY KEY auto_increment,
admin_name varchar(50) not null,
password varchar(50) not null,
contact varchar(20) not null
);

INSERT INTO Administrator(admin_name,password,contact)
VALUES('jake','password','082343435345'),
('mike','password','082343435345'),
('lopez','password','082343435345'),
('anthony','password','082343435345');

CREATE TABLE Register(
register_id int PRIMARY KEY auto_increment,
student_name varchar(50) not null,
student_address varchar(50) not null,
student_email varchar(50) not null,
student_password varchar(20) not null,
course_name varchar(20) not null
);

INSERT INTO Register(student_name, student_address, student_email, student_password, course_name)
VALUES('Gabriel','6474 Pine Street','example@domain.com','apple_bees','PRG 3x1'),
('James','6474 Pine Street','example2@domain.com','secure123','DBD 3x1'),
('Gomez','6474 Pine Street','example3@domain.com','ice_cream','WPR 3x1'),
('Theo','6474 Pine Street','example4@domain.com','pop_tart','SEN 3x1');

CREATE TABLE Users(
user_id int primary key AUTO_INCREMENT,
username varchar(50) unique not null,
password varchar(50) not null,
disabled boolean default false,
account_expired boolean default false,
account_locked boolean default false,
credentials_expired boolean default false
);

INSERT INTO Users(username,password)
VALUES ('example@domain.com','apple_bees'),
('example2@domain.com','secure123'),
('example3@domain.com','ice_cream'),
('example4@domain.com','pop_tart'),
('jake','password'),
('mike','password'),
('lopez','password'),
('anthony','password');

CREATE TABLE Role (
role_id integer primary key AUTO_INCREMENT,
role_name varchar(50)
);

INSERT INTO Role (role_name) values('ADMIN'),
('User');

CREATE TABLE User_Role (
user_role_id integer primary key AUTO_INCREMENT,
user_id integer references users(user_id),
role_id integer references role(role_id)
);

INSERT INTO User_Role (user_id, role_id) values(1,2),
(2,2), (3,2), (4,2), (5,1), (6,1), (7,1), (8,1);