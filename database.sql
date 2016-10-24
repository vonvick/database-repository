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

CREATE TABLE books (
  id int AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  author varchar(255) NOT NULL,
  description text NOT NULL,
  isbn bigint NOT NULL,
  quantity int NOT NULL,
  PRIMARY KEY (id)
)

CREATE TABLE borrowed (
  id int AUTO_INCREMENT,
  userId int NOT NULL,
  bookId int NOT NULL,
  status varchar(255) NOT NULL DEFAULT 'borrowed',
  time_borrowed date DEFAULT NOW(),
  time_returned date NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (bookId) REFERENCES books(id)
)