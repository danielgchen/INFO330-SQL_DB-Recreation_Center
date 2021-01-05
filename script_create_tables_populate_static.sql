-- CREATE DATABASE -- DANIEL
-- make the database
CREATE DATABASE PROJ_INFO_330_B7
USE PROJ_INFO_330_B7

-- CREATE TABLES -- THOMAS
-- make the static tables and populate them
-- make tblCARD_TYPE - thomas
CREATE TABLE tblCARD_TYPE
(CardTypeID INTEGER IDENTITY(1,1) PRIMARY KEY,
 CardTypeName VARCHAR(30) NOT NULL,
 CardTypeDescription VARCHAR(200) NULL)

INSERT INTO tblCARD_TYPE(CardTypeName, CardTypeDescription)
VALUES ('Credit', NULL),
       ('Debit', NULL)

-- make tblCONDITION
CREATE TABLE tblCONDITION
(ConditionID INTEGER IDENTITY(1,1) PRIMARY KEY,
 ConditionName VARCHAR(30) NOT NULL,
 ConditionDescription VARCHAR(200) NULL)

INSERT INTO tblCONDITION(ConditionName, ConditionDescription)
VALUES ('New', 'Usable, completely unused'),
       ('Good', 'Usable, has been used but has little to no sign of usage'),
       ('Worn', 'Usable, has been used as has clear signs of being used'),
       ('Damaged', 'Unusable, needs to be replaced')

-- make tblCHECK_TYPE
CREATE TABLE tblCHECK_TYPE
(CheckTypeID INTEGER IDENTITY(1,1) PRIMARY KEY,
 CheckTypeName VARCHAR(30) NOT NULL,
 CheckTypeDescription VARCHAR(200) NULL)

INSERT INTO tblCHECK_TYPE(CheckTypeName, CheckTypeDescription)
VALUES ('In', 'Checking in equipment'),
       ('Out', 'Checking out equipment')

-- CREATE TABLES -- ANDREW
-- make tblCLASS_TYPE - andrew
CREATE TABLE tblCLASS_TYPE
(ClassTypeID INTEGER IDENTITY (1,1) PRIMARY KEY,
 ClassTypeName VARCHAR(30) NOT NULL,
 ClassTypeDescription VARCHAR(200) NULL)

INSERT INTO tblCLASS_TYPE(ClassTypeName, ClassTypeDescription)
VALUES ('Yoga', 'A relaxing fitness class with a variety of flexibility and breathing exercises'),
       ('Circuit Training', 'An interval-style, fast paced routine with 5 to 6 exercises in a circuit'),
       ('HIIT', 'High-Intensity Interval Training that alternates between short period of intense exercises and active recovery periods'),
       ('Kickboxing', 'A martial-arts style of fitness to push you to your limits and develop strength, balance, flexibility, and agility')

-- make tblBUILDING
CREATE TABLE tblBUILDING
(BuildingID INTEGER IDENTITY (1,1) PRIMARY KEY,
 BuildingName VARCHAR(30) NOT NULL,
 BuildingDescription VARCHAR(200) NULL)

INSERT INTO tblBUILDING(BuildingName, BuildingDescription)
VALUES ('Running Track', 'A building with an indoor running track'),
       ('Gymnasium', 'A building with indoor basketball and volleyball courts'),
       ('Swimming', 'A building with indoor swimming pools'),
       ('Center', 'The main building of the fitness center')

-- make tblROOM_TYPE
CREATE TABLE tblROOM_TYPE
(RoomTypeID INTEGER IDENTITY (1,1) PRIMARY KEY,
 RoomTypeName VARCHAR(30) NOT NULL,
 RoomTypeDescription varchar(200) NULL)

INSERT INTO tblROOM_TYPE(RoomTypeName, RoomTypeDescription)
VALUES ('Sports Room', 'A room centered around sporting events'),
       ('Yoga Room', 'A room for stretching and mediation/yoga practice'),
       ('Pool', 'A room with a swimming pool'),
       ('Sauna', 'A room with steam and an intense heat to help people relax and increase their blood flow'),
       ('Weight Room', 'A room with a variety of different weights and exercise equipment'),
       ('Cardio Room', 'A room with a variety of cardio-based equipment'),
       ('Locker Room', 'A room to accommodate changing, showering, etc.')

-- CREATE TABLES -- DANIEL
-- make tblAMENITY - daniel
CREATE TABLE tblAMENITY
(AmenityID INTEGER IDENTITY(1,1) PRIMARY KEY,
 AmenityName VARCHAR(30) NOT NULL,
 AmenityDescription VARCHAR(200) NULL)

INSERT INTO tblAMENITY(AmenityName, AmenityDescription)
VALUES ('Water Fountain', 'Station for getting a drink of water/refilling water bottles'),
       ('Towels', 'Station for both returning and getting towels'),
       ('Bathroom', 'Nearby washroom'),
       ('Vending Machine', 'Nearby vending machine'),
       ('Lockers', 'Nearby lockers for item storage')

-- make tblFEE_PLAN
CREATE TABLE tblFEE_PLAN
(FeePlanID INTEGER IDENTITY(1,1) PRIMARY KEY,
 FeePlanName VARCHAR(30) NOT NULL,
 FeePlanDescription VARCHAR(200) NULL,
 FeePlanFlatAmount NUMERIC(5,2) NOT NULL,
 FeePlanRatePercent NUMERIC(3,2) NOT NULL)

INSERT INTO tblFEE_PLAN(FeePlanName, FeePlanDescription, FeePlanFlatAmount, FeePlanRatePercent)
VALUES ('PerHour', 'No deposit paying only by the hour', 0.0, 1.0),
       ('LargeDeposit', 'Paying a high deposit and small percent of the hourly rate', 50.0, 0.2),
       ('MediumDeposit', 'Paying a medium deposit and medium percent of the hourly rate', 25.0, 0.6),
       ('SmallDeposit', 'Paying a small deposit and large percent of the hourly rate', 10.0, 0.8)

-- make tblCONDITION
CREATE TABLE tblEQUIPMENT_TYPE
(EquipmentTypeID INTEGER IDENTITY(1,1) PRIMARY KEY,
 EquipmentTypeName VARCHAR(30) NOT NULL,
 EquipmentTypeDescription VARCHAR(200) NULL)

INSERT INTO tblEQUIPMENT_TYPE(EquipmentTypeName, EquipmentTypeDescription)
VALUES ('Weight-Freehand', 'Dumbbell-like equipment such as kettlebells or medicine balls'),
       ('Weight-Machine', 'Weight-related equipment such as leg presses'),
       ('Bench Press', 'Bench press-related equipment such as the bench press associated weights'),
       ('Pool', 'Pool-related equipment such as kickboards or floaties'),
       ('Cardio', 'Cardio-related machines like treadmills or ellipticals'),
       ('Stretching', 'Cool-down/stretching associated equipment such as mats or yoga-related items'),
       ('Sport','Sport-related equipment')

-- make the tables that contain FKs
-- make tblCARD - daniel
CREATE TABLE tblCARD
(CardID INTEGER IDENTITY(1,1) PRIMARY KEY,
 CardTypeID INTEGER FOREIGN KEY REFERENCES tblCARD_TYPE (CardTypeID) NOT NULL,
 CardNumber CHAR(16) NOT NULL,
 CardSecurityCode CHAR(3) NOT NULL,
 CardExpirationDate DATE NOT NULL)

-- make tblCLIENT
CREATE TABLE tblCLIENT
(ClientID INTEGER IDENTITY(1,1) PRIMARY KEY,
 CardID INTEGER FOREIGN KEY REFERENCES tblCARD (CardID) NOT NULL,
 ClientFirstName VARCHAR(30) NOT NULL,
 ClientLastName VARCHAR(30) NOT NULL,
 ClientBirthDate DATE NOT NULL,
 ClientPhoneNumber CHAR(10) NULL)

-- make tblROOM
CREATE TABLE tblROOM
(RoomID INTEGER IDENTITY(1,1) PRIMARY KEY,
 BuildingID INTEGER FOREIGN KEY REFERENCES tblBUILDING (BuildingID) NOT NULL,
 RoomTypeID INTEGER FOREIGN KEY REFERENCES tblROOM_TYPE (RoomTypeID) NOT NULL,
 RoomName VARCHAR(30) NOT NULL,
 RoomCapacity INTEGER NOT NULL,
 RoomFeePerMinute NUMERIC(5,2) NOT NULL,
 RoomDescription VARCHAR(200) NULL)

-- make tblEQUIPMENT
CREATE TABLE tblEQUIPMENT
(EquipmentID INTEGER IDENTITY(1,1) PRIMARY KEY,
 EquipmentTypeID INTEGER FOREIGN KEY REFERENCES tblEQUIPMENT_TYPE (EquipmentTypeID) NOT NULL,
 RoomID INTEGER FOREIGN KEY REFERENCES tblROOM (RoomID) NOT NULL,
 EquipmentName VARCHAR(30) NOT NULL,
 EquipmentDescription VARCHAR(200) NULL)

-- make tblCHECK
CREATE TABLE tblCHECK
(CheckID INTEGER IDENTITY(1,1) PRIMARY KEY,
 ClientID INTEGER FOREIGN KEY REFERENCES tblCLIENT (ClientID) NOT NULL,
 EquipmentID INTEGER FOREIGN KEY REFERENCES tblEQUIPMENT (EquipmentID) NOT NULL,
 CheckTypeID INTEGER FOREIGN KEY REFERENCES tblCHECK_TYPE (CheckTypeID) NOT NULL,
 ConditionID INTEGER FOREIGN KEY REFERENCES tblCONDITION (ConditionID) NOT NULL,
 CheckDate DATE NOT NULL)

-- make tblROOM_AMENITY
CREATE TABLE tblROOM_AMENITY
(RoomAmenityID INTEGER IDENTITY(1,1) NOT NULL,
 RoomID INTEGER FOREIGN KEY REFERENCES tblROOM (RoomID) NOT NULL,
 AmenityID INTEGER FOREIGN KEY REFERENCES tblAMENITY (AmenityID) NOT NULL,
 RoomAmenityQuanity INTEGER NOT NULL)

-- make tblROOM_RESERVATION
CREATE TABLE tblROOM_RESERVATION
(RoomReservationID INTEGER IDENTITY(1,1) PRIMARY KEY,
 ClientID INTEGER FOREIGN KEY REFERENCES tblCLIENT (ClientID) NOT NULL,
 RoomID INTEGER FOREIGN KEY REFERENCES tblROOM (RoomID) NOT NULL,
 FeePlanID INTEGER FOREIGN KEY REFERENCES tblFEE_PLAN (FeePlanID) NOT NULL,
 RoomReservationStartDate DATE NOT NULL,
 RoomReservationEndDate DATE NOT NULL)

-- make tblCLASS
CREATE TABLE tblCLASS
(ClassID INTEGER IDENTITY(1,1) PRIMARY KEY,
 ClassTypeID INTEGER FOREIGN KEY REFERENCES tblCLASS_TYPE (ClassTypeID) NOT NULL,
 ClassName VARCHAR(30) NOT NULL,
 ClassDescription VARCHAR(200) NULL)

-- make tblCLASS_ROOM_RESERVATION
CREATE TABLE tblCLASS_ROOM_RESERVATION
(ClassRoomReservationID INTEGER IDENTITY(1,1) PRIMARY KEY,
 ClassID INTEGER FOREIGN KEY REFERENCES tblCLASS (ClassID) NOT NULL,
 RoomReservationID INTEGER FOREIGN KEY REFERENCES tblROOM_RESERVATION (RoomReservationID) NOT NULL)
