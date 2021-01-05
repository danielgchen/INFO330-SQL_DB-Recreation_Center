USE PROJ_INFO_330_B7

-- BUSINESS RULES -- DANIEL
-- rule: debit-card carrying clients cannot check-out pool equipment
-- implementation: clients of cardtype "debit" cannot have check of checktype "out" for
--                 equipment of type "Pool"
-- alters: tblCHECK
GO
CREATE FUNCTION fn_Limit_Debit_Pool_Equip()
RETURNS INTEGER
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS (
    SELECT *
    FROM tblCARD_TYPE CA_T
        JOIN tblCARD CA ON CA_T.CardTypeID = CA.CardTypeID
        JOIN tblCLIENT CL ON CA.CardID = CL.CardID
        JOIN tblCHECK CK ON CL.ClientID = CK.ClientID
        JOIN tblCHECK_TYPE CK_T ON CK.CheckTypeID = CK_T.CheckTypeID
        JOIN tblEQUIPMENT EQ ON CK.EquipmentID = EQ.EquipmentID
        JOIN tblEQUIPMENT_TYPE EQ_T ON EQ.EquipmentTypeID = EQ_T.EquipmentTypeID
    WHERE CA_T.CardTypeName = 'Debit'
        AND CK_T.CheckTypeName = 'Out'
        AND EQ_T.EquipmentTypeName = 'Pool'
    ) SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblCHECK WITH NOCHECK
ADD CONSTRAINT CK_No_Debit_Pool_Equip
CHECK (dbo.fn_Limit_Debit_Pool_Equip() = 0)


-- rule: pools cannot have any type of weights
-- implementation: equipment of equipmenttype LIKE "%weight%" cannot be in room
--                 of roomtype "pool"
-- alters: tblEQUIPMENT
GO
CREATE FUNCTION fn_Limit_Weight_Pool_Room()
RETURNS INTEGER
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS (
    SELECT *
    FROM tblEQUIPMENT_TYPE E_T
        JOIN tblEQUIPMENT E ON E_T.EquipmentTypeID = E.EquipmentTypeID
        JOIN tblROOM R ON E.RoomID = R.RoomID
        JOIN tblROOM_TYPE R_T ON R.RoomTypeID = R_T.RoomTypeID
    WHERE R_T.RoomTypeName = 'Pool'
        AND E_T.EquipmentTypeName LIKE 'Weight%'
    ) SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblEQUIPMENT WITH NOCHECK
ADD CONSTRAINT CK_No_Weight_Pool_Room
CHECK (dbo.fn_Limit_Weight_Pool_Room() = 0)


-- BUSINESS RULES -- THOMAS
-- rule: free-hand weights cannot be brought into the locker room
-- implementation: equipment of equipmenttype "weight-freehand" cannot be in
--                 room of roomtype "locker-room"
-- alters: tblEQUIPMENT
GO
CREATE FUNCTION fn_Limit_Weights_Locker()
RETURNS INTEGER
AS
BEGIN

DECLARE @RET INT = 0
	IF EXISTS (SELECT *
		FROM tblEQUIPMENT E
			JOIN tblEQUIPMENT_TYPE ET ON E.EquipmentTypeID = ET.EquipmentTypeID
			JOIN tblROOM R ON E.RoomID = R.RoomID
			JOIN tblROOM_TYPE RT ON R.RoomTypeID = RT.RoomTypeID
		WHERE ET.EquipmentTypeName = 'Weight-Freehand'
		AND RT.RoomTypeName = 'Locker Room') SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblEQUIPMENT WITH NOCHECK
ADD CONSTRAINT CK_No_Weights_In_Locker
CHECK (dbo.fn_Limit_Weights_Locker() = 0)


-- rule: clients cannot check-out damaged equipment
-- implementation: equipment whose most recent (tblCHECK.CheckDate) check of check-type
--                 "in" with condition "damaged" cannot have a check of check-out
-- alters: tblCHECK
-- free-hand weights cannot be brought into the locker room
GO
CREATE FUNCTION fn_Limit_CheckOut_Damaged()
RETURNS INTEGER
AS
BEGIN

DECLARE @RET INT = 0
	IF EXISTS (SELECT *
		FROM tblCHECK C
			JOIN tblCHECK_TYPE CT ON C.CheckTypeID = CT.CheckTypeID
			JOIN tblCONDITION CD ON C.ConditionID = CD.ConditionID
		WHERE CT.CheckTypeName = 'Out'
		AND CD.ConditionName = 'Damaged') SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblEQUIPMENT WITH NOCHECK
ADD CONSTRAINT CK_No_CheckOut_Damaged
CHECK (dbo.fn_Limit_CheckOut_Damaged() = 0)


-- BUSINESS RULES -- ANDREW
-- rule: clients over 60 may not reserve the sauna or for a kickboxing class
-- implementation: a roomreservation cannot have a client with birthdate > 60
--                 years in the past while either reserving a class for
--                 classtype "kickboxing" or reserving a room of roomtype
--                 "sauna"
-- alters: tblROOM_RESERVATION
GO
CREATE FUNCTION fn_Limit_Clients_Reservation()
RETURNS INTEGER
AS
BEGIN

DECLARE @RET INT = 0
    IF EXISTS (
        SELECT *
        FROM tblROOM_RESERVATION tRR
            JOIN tblCLIENT tC ON tC.ClientID = tRR.ClientID
            JOIN tblCLASS_ROOM_RESERVATION tCRR ON tCRR.RoomReservationID = tRR.RoomReservationID
            JOIN tblCLASS tClass ON tClass.ClassID = tCRR.ClassID
            JOIN tblCLASS_TYPE tCT ON tCT.ClassTypeID = tClass.ClassTypeID
            JOIN tblROOM tR ON tR.RoomID = tRR.RoomID
            JOIN tblROOM_TYPE tRT ON tRT.RoomTypeID = tR.RoomTypeID
        WHERE tC.ClientBirthDate < DATEADD(YEAR, -60, GetDate())
            AND (tCT.ClassTypeName = 'Kickboxing' OR tRT.RoomTypeName = 'Sauna')
    )
    SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblROOM_RESERVATION WITH NOCHECK
ADD CONSTRAINT CK_No_Seniors_Kickboxing_Or_In_Sauna
CHECK (dbo.fn_Limit_Clients_Reservation() = 0)


-- rule: clients using a debit card must pay by the hour
-- implementation: a roomreservation cannot have a client with card of
-- 			 cardtype "debit" while having a feeplan that is not
-- 			 'perhour'
-- alters: tblROOM_RESERVATION

GO
CREATE FUNCTION fn_Limit_Debit_Card_Payment()
RETURNS INTEGER
AS
BEGIN

DECLARE @RET INT = 0
   IF EXISTS (
       SELECT *
       FROM tblROOM_RESERVATION tRR
           JOIN tblCLIENT tC ON tC.ClientID = tRR.ClientID
           JOIN tblCARD tCard ON tCard.CardID = tC.CardID
           JOIN tblCARD_TYPE tCT ON tCT.CardTypeID = tCard.CardTypeID
           JOIN tblFEE_PLAN tFP ON tFP.FeePlanID = tRR.FeePlanID
       WHERE tCT.CardTypeName = 'Debit'
           AND tFP.FeePlanName <> 'PerHour'
   )
   SET @RET = 1
RETURN @RET
END
GO

ALTER TABLE tblROOM_RESERVATION WITH NOCHECK
ADD CONSTRAINT CK_Only_Per_Hour_For_Debit
CHECK (dbo.fn_Limit_Debit_Card_Payment() = 0)
