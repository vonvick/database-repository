// create the database

CREATE DATABASE bookievault;

CREATE TABLE users (
  id int AUTO_INCREMENT,
  firstname varchar(255) NOT NULL,
  lastname varchar(255) NOT NULL,
  email varchar(255) NOT NULL UNIQUE,
  password varchar(255) NOT NULL,
  role varchar(255) NOT NULL DEFAULT 'user',
  imagepath varchar(255) NOT NULL,
  PRIMARY KEY (Id)
)