USE PROJ_INFO_330_B7

-- STORED PROCEDURES -- THOMAS
-- sproc for tblCARD : thomas
GO
CREATE PROCEDURE INSERT_CARD
@CardTypeName varchar(30),
@CardNumber char(16),
@CardSecurityCode char(3),
@CardExpirationDate date

AS

DECLARE @CT_ID INT

SET @CT_ID = (SELECT CardTypeID FROM tblCARD_TYPE WHERE CardTypeName = @CardTypeName)

BEGIN TRANSACTION
INSERT INTO tblCARD (CardTypeID, CardNumber, CardSecurityCode, CardExpirationDate)
VALUES (@CT_ID, @CardNumber, @CardSecurityCode, @CardExpirationDate)
COMMIT TRANSACTION
GO


-- sproc for tblCLIENT
GO
CREATE PROCEDURE INSERT_CLIENT
@CardNumber char(16),
@CardSecurityCode char(3),
@CardExpirationDate date,
@ClientFirstName varchar(30),
@ClientLastName varchar(30),
@ClientBirthDate date,
@ClientPhoneNumber char(10)

AS

DECLARE @C_ID INT

SET @C_ID = (SELECT CardID FROM tblCARD WHERE CardNumber = @CardNumber AND CardSecurityCode = @CardSecurityCode AND CardExpirationDate = @CardExpirationDate)

BEGIN TRANSACTION
INSERT INTO tblCLIENT (CardID, ClientFirstName, ClientLastName, ClientBirthDate, ClientPhoneNumber)
VALUES (@C_ID, @ClientFirstName, @ClientLastName, @ClientBirthDate, @ClientPhoneNumber)
COMMIT TRANSACTION
GO


-- STORED PROCEDURES -- ANDREW
-- sproc for tblROOM : andrew
GO
CREATE PROCEDURE INSERT_ROOM
@BuildingName varchar(30),
@RoomTypeName varchar(30),
@RoomName varchar(30),
@RoomCapacity INTEGER,
@RoomDescription varchar(200) = NULL,
@RoomFeePerMinute NUMERIC(5,2)
AS
DECLARE @BuildingID INT, @RoomTypeID INT

SET @BuildingID = (
   SELECT BuildingID
   FROM tblBUILDING
   WHERE BuildingName = @BuildingName
)

SET @RoomTypeID = (
   SELECT RoomTypeID
   FROM tblROOM_TYPE
   WHERE RoomTypeName = @RoomTypeName
)

BEGIN TRANSACTION
INSERT INTO tblROOM (BuildingID, RoomTypeID, RoomName, RoomCapacity, RoomDescription, RoomFeePerMinute)
VALUES (@BuildingID, @RoomTypeID, @RoomName, @RoomCapacity, @RoomDescription, @RoomFeePerMinute)
COMMIT TRANSACTION
GO


-- sproc for tblEQUIPMENT
GO
CREATE PROCEDURE INSERT_EQUIPMENT
@EquipTypeName varchar(30),
@RoomName varchar(30),
@EquipName varchar(30),
@EquipDescription varchar(200) = NULL
AS
DECLARE @EquipmentTypeID INT, @RoomID INT

SET @EquipmentTypeID = (
   SELECT EquipmentTypeID
   FROM tblEQUIPMENT_TYPE
   WHERE EquipmentTypeName = @EquipTypeName
)

SET @RoomID = (
   SELECT RoomID
   FROM tblROOM
   WHERE RoomName = @RoomName
)

BEGIN TRANSACTION
INSERT INTO tblEQUIPMENT (EquipmentTypeID, RoomID, EquipmentName, EquipmentDescription)
VALUES (@EquipmentTypeID, @RoomID, @EquipName, @EquipDescription)
COMMIT TRANSACTION
GO


-- STORED PROCEDURES -- DANIEL
-- sproc for tblROOM_AMENITY : daniel
GO
CREATE PROCEDURE INSERT_ROOM_AMENITY
@RoomName VARCHAR(30),
@AmenityName VARCHAR(30),
@Quantity INTEGER
AS
DECLARE @R_ID INT, @A_ID INT
SET @R_ID = (
    SELECT RoomID FROM tblROOM WHERE RoomName = @RoomName
    )
SET @A_ID = (
    SELECT AmenityID FROM tblAMENITY WHERE AmenityName = @AmenityName
    )
BEGIN TRANSACTION
INSERT INTO tblROOM_AMENITY (RoomID, AmenityID, RoomAmenityQuanity)
VALUES (@R_ID, @A_ID, @Quantity)
COMMIT TRANSACTION
GO


-- sproc for tblROOM_RESERVATION
GO
CREATE PROCEDURE INSERT_ROOM_RESERVATION
@RoomName VARCHAR(30),
@ClientFirstName VARCHAR(30),
@ClientLastName VARCHAR(30),
@ClientBirthDate DATE,
@FeePlanName VARCHAR(30),
@StartDate DATE,
@EndDate DATE
AS
DECLARE @C_ID INT, @F_ID INT, @R_ID INT
SET @C_ID = (
    SELECT ClientID FROM tblCLIENT
    WHERE ClientFirstName = @ClientFirstName
        AND ClientLastName = @ClientLastName
        AND ClientBirthDate = @ClientBirthDate
    )
SET @F_ID = (
    SELECT FeePlanID FROM tblFEE_PLAN WHERE FeePlanName = @FeePlanName
    )
SET @R_ID = (
    SELECT RoomID FROM tblROOM WHERE RoomName = @RoomName
    )
BEGIN TRANSACTION
INSERT INTO tblROOM_RESERVATION (ClientID, RoomID, FeePlanID, RoomReservationStartDate, RoomReservationEndDate)
VALUES (@C_ID, @R_ID, @F_ID, @StartDate, @EndDate)
COMMIT TRANSACTION
GO


-- sproc for tblCLASS
GO
CREATE PROCEDURE INSERT_CLASS
@ClassTypeName VARCHAR(30),
@ClassName VARCHAR(30),
@ClassDescription VARCHAR(200) = NULL
AS
DECLARE @CT_ID INT
SET @CT_ID = (
    SELECT ClassTypeID FROM tblCLASS_TYPE WHERE ClassTypeName = @ClassTypeName
    )
BEGIN TRANSACTION
INSERT INTO tblCLASS (ClassTypeID, ClassName, ClassDescription)
VALUES (@CT_ID, @ClassName, @ClassDescription)
COMMIT TRANSACTION
GO


-- sproc for tblCLASS_ROOM_RESERVATION
GO
CREATE PROCEDURE INSERT_CLASS_ROOM_RESERVATION
@RoomName VARCHAR(30),
@ClientFirstName VARCHAR(30),
@ClientLastName VARCHAR(30),
@ClientBirthDate DATE,
@FeePlanName VARCHAR(30),
@StartDate DATE,
@EndDate DATE,
@ClassName VARCHAR(30)
AS
DECLARE @R_ID INT, @C_ID INT
SET @R_ID = (
    SELECT RR.RoomReservationID
    FROM tblROOM_RESERVATION RR
        JOIN tblCLIENT CL ON RR.ClientID = CL.ClientID
        JOIN tblROOM RM ON RR.RoomID = RM.RoomID
        JOIN tblFEE_PLAN FP ON RR.FeePlanID = FP.FeePlanID
    WHERE CL.ClientFirstName = @ClientFirstName
        AND CL.ClientLastName = @ClientLastName
        AND CL.ClientBirthDate = @ClientBirthDate
        AND RM.RoomName = @RoomName
        AND FP.FeePlanName = @FeePlanName
        AND RR.RoomReservationStartDate = @StartDate
        AND RR.RoomReservationEndDate = @EndDate
    )
SET @C_ID = (
    SELECT ClassID FROM tblCLASS WHERE ClassName = @ClassName
    )
BEGIN TRANSACTION
INSERT INTO tblCLASS_ROOM_RESERVATION (ClassID, RoomReservationID)
VALUES (@C_ID, @R_ID)
COMMIT TRANSACTION
GO


-- sproc for tblCHECK
GO
CREATE PROCEDURE INSERT_CHECK
@ClientFirstName VARCHAR(30),
@ClientLastName VARCHAR(30),
@ClientBirthDate DATE,
@EquipmentName VARCHAR(30),
@CheckTypeName VARCHAR(30),
@ConditionName VARCHAR(30),
@CheckDate DATE
AS
DECLARE @CL_ID INT, @EQ_ID INT, @CO_ID INT, @CT_ID INT
SET @CL_ID = (
    SELECT ClientID FROM tblCLIENT
    WHERE ClientFirstName = @ClientFirstName
        AND ClientLastName = @ClientLastName
        AND ClientBirthDate = @ClientBirthDate
    )
SET @EQ_ID = (
    SELECT EquipmentID FROM tblEQUIPMENT WHERE EquipmentName = @EquipmentName
    )
SET @CO_ID = (
    SELECT ConditionID FROM tblCONDITION WHERE ConditionName = @ConditionName
    )
SET @CT_ID = (
    SELECT CheckTypeID FROM tblCHECK_TYPE WHERE CheckTypeName = @CheckTypeName
    )
BEGIN TRANSACTION
INSERT INTO tblCHECK (ClientID, EquipmentID, CheckTypeID, ConditionID, CheckDate)
VALUES (@CL_ID, @EQ_ID, @CT_ID, @CO_ID, @CheckDate)
COMMIT TRANSACTION
GO
