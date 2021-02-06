DROP DATABASE IF EXISTS emptr_db;

CREATE DATABASE emptr_db;

USE emptr_db;

CREATE TABLE department(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(30),
PRIMARY KEY (id)
);
CREATE TABLE role(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30),
salary DECIMAL(10,2) NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE employee(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT,
manager_id INT,
PRIMARY KEY (id)

);



INSERT INTO department (name)
VALUES ('');

INSERT INTO role (title, salary, department_id)
VALUE ('');

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUE ('');

-- SELECT * FROM employee



