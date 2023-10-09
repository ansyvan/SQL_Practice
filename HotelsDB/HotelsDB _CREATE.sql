create Database HotelsDB;
use HotelsDB;

CREATE TABLE Cities (
cityID int primary key not null auto_increment,
cityName varchar(20)
);

CREATE TABLE Hotels (
hotelID int primary key not null auto_increment,
hotelName varchar(20),
starsCount int not null,
creationDate date,
cityID int,
foreign key (cityID) references Cities (cityID)
);

CREATE TABLE Rooms (
roomID int primary key not null auto_increment,
comfortLevel varchar(20),
hotelID int,
foreign key (hotelID) references Hotels(hotelID)
);

CREATE TABLE Clients (
clientID int primary key not null auto_increment,
clientName varchar(50),
clientNumber long
);

CREATE TABLE Orders (
orderID int primary key not null auto_increment,
clientID int,
roomID int,
foreign key (clientID) references Clients(clientID),
foreign key (roomID) references Rooms(roomID)
);