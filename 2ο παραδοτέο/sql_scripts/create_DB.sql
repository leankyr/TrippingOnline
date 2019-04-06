DROP DATABASE IF EXISTS `Tripping Online`;

CREATE DATABASE `Tripping Online`;
USE `Tripping Online`;

CREATE TABLE DestinationID
(
  Country VARCHAR(30) NOT NULL,
  City VARCHAR(30) NOT NULL,
  ID Integer AUTO_INCREMENT,
  UNIQUE(Country,City),
  PRIMARY KEY (ID)
);


CREATE TABLE DestinationType
(
  ID Integer,
  Type VARCHAR(20) NOT NULL,
  FOREIGN KEY (ID) REFERENCES DestinationID(ID)
);


CREATE TABLE Events
(
  Name VARCHAR(30) NOT NULL,
  Address VARCHAR(30) NOT NULL,
  EventTime TIME,
  EventDate Date NOT NULL,
  EventID Integer AUTO_INCREMENT,
  DestinationID Integer,

  PRIMARY KEY (EventID),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID)
);

CREATE TABLE Attractions
(
  Name VARCHAR(100) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  OpeningTime TIME,
  ClosingTime TIME,
  Ticket Integer,
  DestinationID Integer,

  PRIMARY KEY (Name),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID)
);

CREATE TABLE Entertainment
(
  Name VARCHAR(30) NOT NULL,
  Address VARCHAR(30) NOT NULL,
  Phone BIGINT,
  Website VARCHAR(100),
  Type VARCHAR(30) NOT NULL,
  EntertainmentID Integer AUTO_INCREMENT,
  DestinationID Integer,

  PRIMARY KEY (EntertainmentID),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID),
  UNIQUE(Phone),
  UNIQUE(Website)
);

-- Guide Related Tables
CREATE TABLE Guide
(
  Name VARCHAR(30) NOT NULL,
  Surname VARCHAR(30) NOT NULL,
  Gender VARCHAR(10) NOT NULL,
  ID Integer AUTO_INCREMENT,
  PRIMARY KEY (ID)
);

CREATE TABLE AvailableLanguages
(
  Language VARCHAR(20),
  PRIMARY KEY (Language)
);

CREATE TABLE Guide_Language
(
  ID Integer,
  Language VARCHAR(20),
  FOREIGN KEY (ID) REFERENCES Guide(ID),
  FOREIGN KEY (Language) REFERENCES AvailableLanguages(Language),
  UNIQUE(ID,Language)
);

CREATE TABLE Specialities
(
  Speciality VARCHAR(50),
  PRIMARY KEY (Speciality)
);

CREATE TABLE Guide_Specialities
(
  ID Integer,
  Speciality  VARCHAR(50),
  FOREIGN KEY (ID) REFERENCES Guide(ID),
  FOREIGN KEY (Speciality) REFERENCES Specialities(Speciality),
  UNIQUE(ID,Speciality)
);

-- Paragwmeno gnwrisma current count !!!
CREATE TABLE Groups
(
  AvailablePositions Integer NOT NULL,
  Price Integer NOT NULL,
  ID Integer AUTO_INCREMENT,
  PRIMARY KEY (ID)
);

CREATE TABLE Group_Destination
(
  DestinationID Integer,
  GroupID Integer,
  start_date Date NOT NULL,
  return_date Date NOT NULL,
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID),
  FOREIGN KEY (GroupID) REFERENCES Groups(ID)
);

CREATE TABLE Group_Guides
(
  GuideID Integer,
  GroupID Integer,
  FOREIGN KEY (GuideID) REFERENCES Guide(ID),
  FOREIGN KEY (GroupID) REFERENCES Groups(ID)
);

-- Transport Related
CREATE TABLE Transport
(
  Type VARCHAR(20) NOT NULL,
  TransportID Integer AUTO_INCREMENT,
  PRIMARY KEY (TransportID)
);

CREATE TABLE Transport_Destination
(
  Price Integer NOT NULL,
  TransportDate Date NOT NULL,
  From_city VARCHAR(20) NOT NULL,
  From_country VARCHAR(20) NOT NULL,
  TransportID Integer,
  DestinationID Integer,
  FOREIGN KEY (TransportID) REFERENCES Transport(TransportID),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID)
);

-- Traveler Related
-- Paragwmeno gnwrisma AGE !!!
CREATE TABLE Traveler
(
  ID Integer AUTO_INCREMENT,
  Name VARCHAR(20) NOT NULL,
  Surname VARCHAR(20) NOT NULL,
  Gender  VARCHAR(10) NOT NULL,
  DateOfBirth Date,
  PRIMARY KEY (ID)
);

CREATE TABLE Traveler_Destination
(
  DestinationID Integer,
  TravelerID Integer,
  TravelDate Date NOT NULL,
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID),
  FOREIGN KEY (TravelerID) REFERENCES Traveler(ID)
);

CREATE TABLE Group_Traveler
(
  GroupID Integer,
  TravelerID Integer,
  FOREIGN KEY (TravelerID) REFERENCES Traveler(ID),
  FOREIGN KEY (GroupID) REFERENCES Groups(ID)
);

CREATE TABLE Hotel
(
  DestinationID Integer,
  ID Integer AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Stars Integer NOT NULL,
  Breakfast Boolean NOT NULL,
  Aircondition Boolean NOT NULL,
  Price Integer NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID),
  UNIQUE(DestinationID,Address)
);

CREATE TABLE Camping
(
  Name VARCHAR(50) NOT NULL,
  DestinationID Integer,
  ID Integer AUTO_INCREMENT,
  Address VARCHAR(50) NOT NULL,
  Organized Boolean NOT NULL,
  Pet_Tolerance Boolean NOT NULL,
  Price Integer NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (DestinationID) REFERENCES DestinationID(ID),
  UNIQUE(DestinationID,Address),
  UNIQUE(DestinationID,Name)
);
