USE PROJ_INFO_330_B7

-- COMPUTED COLUMNS -- daniel
-- # of rooms of roomtype Pool that were reserved for each client
GO
CREATE FUNCTION fn_CalcTotalPoolReservationsPerClient(@PK INT)
RETURNS INTEGER
AS
BEGIN
DECLARE @RET INT = (
    SELECT COUNT(RM_R.RoomReservationID)
    FROM tblCLIENT C
        JOIN tblROOM_RESERVATION RM_R ON C.ClientID = RM_R.ClientID
        JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
        JOIN tblROOM_TYPE RM_T ON RM.RoomTypeID = RM_T.RoomTypeID
    WHERE RM_T.RoomTypeName = 'Pool'
        AND C.ClientID = @PK
    )
RETURN @RET
END
GO

ALTER TABLE tblCLIENT
ADD CalcTotalPoolReservationsPerClient
AS (dbo.fn_CalcTotalPoolReservationsPerClient(ClientID))

-- total fees paid per client for rooms with water fountains
GO
CREATE FUNCTION fn_CalcTotalFeesWaterPerClient(@PK INT)
RETURNS INTEGER
AS
BEGIN
DECLARE @RET INT = (
    SELECT SUM(RM_R.RoomReservationFee)
    FROM tblCLIENT C
        JOIN tblROOM_RESERVATION RM_R ON C.ClientID = RM_R.ClientID
        JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
        JOIN (
            SELECT RM.RoomID
            FROM tblROOM RM
                JOIN tblROOM_AMENITY RM_A ON RM.RoomID = RM_A.RoomID
                JOIN tblAMENITY A ON RM_A.AmenityID = A.AmenityID
            WHERE A.AmenityName = 'Water Fountain'
        ) AS SUB_Q1 ON SUB_Q1.RoomID = RM.RoomID
    WHERE C.ClientID = @PK
    )
RETURN @RET
END
GO

ALTER TABLE tblCLIENT
ADD CalcTotalFeesWaterPerClient
AS (dbo.fn_CalcTotalFeesWaterPerClient(ClientID))


-- COMPUTED COLUMNS -- ANDREW
-- Computed Column: What is the total cost for each room reservation?
GO
CREATE FUNCTION fn_CalcTotalCostPerReservation(@PK INT)
RETURNS NUMERIC (15,2)
AS
BEGIN
   DECLARE @RET NUMERIC (15,2) = (
       SELECT tFP.FeePlanFlatAmount + tFP.FeePlanRatePercent * tR.RoomFeePerMinute *
              DATEDIFF(MINUTE,tRR.RoomReservationStartDate,tRR.RoomReservationEndDate)
       FROM tblROOM_RESERVATION tRR
           JOIN tblFEE_PLAN tFP ON tFP.FeePlanID = tRR.FeePlanID
           JOIN tblROOM tR ON tR.RoomID = tRR.RoomID
       WHERE tRR.RoomReservationID = @PK
        AND tRR.RoomReservationEndDate IS NOT NULL
   )
RETURN @RET
END
GO

ALTER TABLE tblROOM_RESERVATION
ADD RoomReservationFee
AS (dbo.fn_CalcTotalCostPerReservation(RoomReservationID))

-- Computed Column: How many equipment checked in were damaged for each client?
GO
CREATE FUNCTION fn_CalcTotalCheckedInDamagedEquipment(@PK INT)
RETURNS INTEGER
AS
BEGIN
   DECLARE @RET INTEGER = (
       SELECT COUNT(tE.EquipmentID)
       FROM tblCLIENT tC
           JOIN tblCHECK tCheck ON tCheck.ClientID = tC.ClientID
           JOIN tblEQUIPMENT tE ON tE.EquipmentID = tCheck.EquipmentID
           JOIN tblCONDITION tCond ON tCond.ConditionID = tCheck.ConditionID
           JOIN tblCHECK_TYPE tCT ON tCT.CheckTypeID = tCheck.CheckTypeID
       WHERE tC.ClientID = @PK
           AND tCond.ConditionName = 'Damaged'
           AND tCT.CheckTypeName = 'In'
   )
RETURN @RET
END
GO

ALTER TABLE tblCLIENT
ADD CalcTotalCheckedInDamagedEquipment
AS (dbo.fn_CalcTotalCheckedInDamagedEquipment(ClientID))


-- COMPUTED COLUMNS -- THOMAS
-- Computed Column for the total number of reservations made by classes for each room type
GO
CREATE FUNCTION fn_CalcClassReservationsPerRoomType(@RoomType INT)
RETURNS INT
AS

BEGIN

DECLARE @RET INT = (SELECT COUNT(CR.ClassRoomReservationID)
	FROM tblCLASS_ROOM_RESERVATION CR
		JOIN tblROOM_RESERVATION RR ON CR.RoomReservationID = RR.RoomReservationID
		JOIN tblROOM R ON RR.RoomID = R.RoomID
		JOIN tblROOM_TYPE RT ON R.RoomTypeID = RT.RoomTypeID
	WHERE RT.RoomTypeID = @RoomType)

RETURN @RET
END
GO

ALTER TABLE tblROOM_TYPE
ADD CalcClassReservationsPerRoomType AS (dbo.fn_CalcClassReservationsPerRoomType(RoomTypeID))

-- Computed column for total check outs of each type of equipment
GO
CREATE FUNCTION fn_CalcCheckOutsPerEquipType(@EquipmentType INT)
RETURNS INT
AS

BEGIN

DECLARE @RET INT = (SELECT COUNT(C.CheckID)
	FROM tblEQUIPMENT_TYPE ET
		JOIN tblEQUIPMENT E ON ET.EquipmentTypeID = E.EquipmentTypeID
		JOIN tblCHECK C ON E.EquipmentID = C.EquipmentID
		JOIN tblCHECK_TYPE CT ON C.CheckTypeID = CT.CheckTypeID
	WHERE CT.CheckTypeName = 'Out'
	AND ET.EquipmentTypeID = @EquipmentType)

RETURN @RET
END
GO

ALTER TABLE tblEQUIPMENT_TYPE
ADD CalcCheckOutsPerEquipType AS (dbo.fn_CalcCheckOutsPerEquipType(EquipmentTypeID))
