-- VIEWS -- DANIEL
-- list the clients that have reserved rooms with more than 1 water fountain
--  that also have debit cards who have also checked in over 2 pieces
--  of damaged pool equipment
GO
CREATE VIEW View_MultiFountainDebitClients
AS
SELECT C.ClientID, C.ClientFirstName, C.ClientLastName, COUNT(RM_R.RoomReservationID) AS NumReservations, SUB_Q1.NumDamagedEquipment
FROM tblCLIENT C
    JOIN tblCARD CA ON C.CardID = CA.CardID
    JOIN tblCARD_TYPE CA_T ON CA.CardTypeID = CA_T.CardTypeID
    JOIN tblROOM_RESERVATION RM_R ON C.ClientID = RM_R.ClientID
    JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
    JOIN tblROOM_AMENITY RM_A ON RM.RoomID = RM_A.RoomID
    JOIN tblAMENITY A ON RM_A.AmenityID = A.AmenityID
    JOIN (
        SELECT C.ClientID, COUNT(CK.CheckID) AS NumDamagedEquipment
        FROM tblCLIENT C
            JOIN tblCHECK CK ON C.ClientID = CK.ClientID
            JOIN tblCONDITION CD ON CK.ConditionID = CD.ConditionID
            JOIN tblCHECK_TYPE CK_T ON CK.CheckTypeID = CK_T.CheckTypeID
            JOIN tblEQUIPMENT E ON CK.EquipmentID = E.EquipmentID
            JOIN tblEQUIPMENT_TYPE ET on E.EquipmentTypeID = ET.EquipmentTypeID
        WHERE ET.EquipmentTypeName = 'Pool'
            AND CK_T.CheckTypeName = 'In'
            AND CD.ConditionName = 'Damaged'
        GROUP BY C.ClientID
        HAVING COUNT(CK.CheckID) > 2
    ) AS SUB_Q1 ON SUB_Q1.ClientID = C.ClientID
WHERE CA_T.CardTypeName = 'Debit'
    AND A.AmenityName = 'Water Fountain'
    AND RM_A.RoomAmenityQuanity > 1
GROUP BY C.ClientID, C.ClientFirstName, C.ClientLastName, SUB_Q1.NumDamagedEquipment
GO

-- list the clients that have hosted > 1 class in the pool or gymnasium building
--  who have also checked out over 3 pieces of weight equipment
GO
CREATE VIEW View_ClassPoolGymCheckOutWeight
AS
SELECT C.ClientID, C.ClientFirstName, C.ClientLastName, COUNT(CLA_RM_R.ClassRoomReservationID) AS NumClasses, SUB_Q1.NumCheckOuts
FROM tblCLIENT C
    JOIN tblROOM_RESERVATION RM_R ON C.ClientID = RM_R.ClientID
    JOIN tblCLASS_ROOM_RESERVATION CLA_RM_R ON RM_R.RoomReservationID = CLA_RM_R.RoomReservationID
    JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
    JOIN tblBUILDING BLD ON RM.BuildingID = BLD.BuildingID
    JOIN (
        SELECT C.ClientID, COUNT(CK.CheckID) AS NumCheckOuts
        FROM tblCLIENT C
            JOIN tblCHECK CK ON C.ClientID = CK.ClientID
            JOIN tblEQUIPMENT E ON CK.EquipmentID = E.EquipmentID
            JOIN tblEQUIPMENT_TYPE ET ON E.EquipmentTypeID = ET.EquipmentTypeID
            JOIN tblCHECK_TYPE CT ON CK.CheckTypeID = CT.CheckTypeID
        WHERE CT.CheckTypeName = 'Out'
            AND ET.EquipmentTypeName LIKE 'Weight%'
        GROUP BY C.ClientID
        HAVING COUNT(CK.CheckID) > 3
    ) AS SUB_Q1 ON SUB_Q1.ClientID = C.ClientID
WHERE BLD.BuildingName IN ('Gymnasium','Swimming')
GROUP BY C.ClientID, C.ClientFirstName, C.ClientLastName, SUB_Q1.NumCheckOuts
HAVING COUNT(CLA_RM_R.ClassRoomReservationID) > 1
GO


-- VIEWS -- ANDREW
-- View: Find all clients between 18 and 35 who are paying with a 'Credit' card
-- type and have reserved a class of type 'HIIT' or 'Kickboxing'
-- who have also: checked out more than 10 equipment of type 'Weight-Freehand'
-- who have also: paid more than $10,000 from reserving rooms of type 'Weight
-- Room' in room reservation fees
GO
CREATE VIEW View_YoungCreditClassEquipment
AS
SELECT tC.ClientID, tC.ClientFirstName, tC.ClientLastName, SubQ1.NumEquipment, SubQ2.TotalFees
FROM tblCLIENT tC
   JOIN tblCARD tCard ON tCard.CardID = tC.CardID
   JOIN tblCARD_TYPE tCardT ON tCardT.CardTypeID = tCard.CardTypeID
   JOIN tblROOM_RESERVATION tRR ON tRR.ClientID = tC.ClientID
   JOIN tblCLASS_ROOM_RESERVATION tCRR ON tCRR.RoomReservationID = tRR.RoomReservationID
   JOIN tblCLASS tClass ON tClass.ClassID = tCRR.ClassID
   JOIN tblCLASS_TYPE tClassT ON tClassT.ClassTypeID = tClass.ClassTypeID
   JOIN (
       SELECT tC.ClientID, tC.ClientFirstName, tC.ClientLastName, COUNT(tE.EquipmentID) AS NumEquipment
       FROM tblCLIENT tC
           JOIN tblCHECK tCheck ON tCheck.ClientID = tC.ClientID
           JOIN tblEQUIPMENT tE ON tE.EquipmentID = tCheck.EquipmentID
           JOIN tblEQUIPMENT_TYPE tET ON tET.EquipmentTypeID = tE.EquipmentTypeID
           JOIN tblCHECK_TYPE tCT ON tCT.CheckTypeID = tCheck.CheckTypeID
       WHERE tET.EquipmentTypeName = 'Weight-Freehand'
           AND tCT.CheckTypeName = 'Out'
       GROUP BY tC.ClientID, tC.ClientFirstName, tC.ClientLastName
       HAVING COUNT(tE.EquipmentID) > 10
   ) AS SubQ1 ON SubQ1.ClientID = tC.ClientID
   JOIN (
       SELECT tC.ClientID, tC.ClientFirstName, tC.ClientLastName, SUM(tRR.RoomReservationFee) AS TotalFees
       FROM tblCLIENT tC
           JOIN tblROOM_RESERVATION tRR ON tRR.ClientID = tC.ClientID
           JOIN tblROOM tR ON tR.RoomID = tRR.RoomID
           JOIN tblROOM_TYPE tRT ON tRT.RoomTypeID = tR.RoomID
       WHERE tRT.RoomTypeName = 'Weight Room'
       GROUP BY tC.ClientID, tC.ClientFirstName, tC.ClientLastName
       HAVING SUM(tRR.RoomReservationFee) > 10000
   ) AS SubQ2 ON SubQ2.ClientID = tC.ClientID
WHERE tC.ClientBirthDate BETWEEN DATEADD(YEAR, -35, GETDATE()) AND DATEADD(YEAR, -18, GETDATE())
   AND tCardT.CardTypeName = 'Credit'
   AND (tClassT.ClassTypeName = 'HIIT' OR tClassT.ClassTypeName = 'Kickboxing')
GROUP BY tC.ClientID, tC.ClientFirstName, tC.ClientLastName, tClassT.ClassTypeName, SubQ1.NumEquipment, SubQ2.TotalFees
GO

-- View: Find all clients older than 21 who have checked out equipments of
-- condition 'New' but have checked in equipments of condition 'Damaged'
-- who have also: have a card of type 'Debit' and reserved either the 'Weight Room' or 'Sauna'
-- who have also: reserved a Yoga class with a start date within the past 20 years
GO
CREATE VIEW View_OldEquipWeightSaunaDebit
AS
SELECT tC.ClientID, tC.ClientFirstName, tC.ClientLastName
FROM tblCLIENT tC
   JOIN tblROOM_RESERVATION tRR ON tRR.ClientID = tC.ClientID
   JOIN tblCLASS_ROOM_RESERVATION tCRR ON tCRR.RoomReservationID = tRR.RoomReservationID
   JOIN tblCLASS tClass ON tClass.ClassID = tCRR.ClassID
   JOIN tblCLASS_TYPE tClassT ON tClassT.ClassTypeID = tClass.ClassTypeID
   JOIN (
       SELECT tC.ClientID, tC.ClientFirstName, tC.ClientLastName
       FROM tblCLIENT tC
           JOIN tblCARD tCard ON tCard.CardID = tC.CardID
           JOIN tblCARD_TYPE tCardT ON tCardT.CardTypeID = tCard.CardTypeID
           JOIN tblROOM_RESERVATION tRR ON tRR.ClientID = tC.ClientID
           JOIN tblROOM tR ON tR.RoomID = tRR.RoomID
           JOIN tblROOM_TYPE tRT ON tRT.RoomTypeID = tR.RoomID
       WHERE tCardT.CardTypeName = 'Debit'
           AND (tRT.RoomTypeName = 'Weight Room' OR tRT.RoomTypeName = 'Sauna')
	   GROUP BY tC.ClientID, tC.ClientFirstName, tC.ClientLastName
   ) AS SubQ1 ON SubQ1.ClientID = tC.ClientID
WHERE tC.ClientBirthDate < DATEADD(YEAR, -21, GETDATE())
    AND tClassT.ClassTypeName = 'Yoga'
    AND tRR.RoomReservationStartDate > DATEADD(YEAR, -20, GETDATE())
GROUP BY tC.ClientID, tC.ClientFirstName, tC.ClientLastName
GO


-- VIEWS -- THOMAS
-- View: Find all clients above the age of 18 who have checked in over 2 damaged
-- pieces of equipment with type 'Bench Press'
-- who have also reserved rooms of type 'Weight Room' at least 2 times
GO
CREATE VIEW View_DamagedEquipClients
AS
SELECT C.ClientID, C.ClientFirstName, C.ClientLastName, COUNT(E.EquipmentID) AS TotalEquipment, subq1.TotalRoomsReserved
FROM tblCLIENT C
	JOIN tblCHECK CH ON C.ClientID = CH.ClientID
	JOIN tblCONDITION CO ON CH.ConditionID = CO.ConditionID
	JOIN tblCHECK_TYPE CT ON CH.CheckTypeID = CT.CheckTypeDescription
	JOIN tblEQUIPMENT E ON CH.EquipmentID = E.EquipmentID
	JOIN tblEQUIPMENT_TYPE ET ON E.EquipmentTypeID = ET.EquipmentTypeID
	JOIN
		(
		SELECT C.ClientID, C.ClientFirstName, C.ClientLastName, COUNT(RR.RoomReservationID) AS TotalRoomsReserved
		FROM tblCLIENT C
			JOIN tblROOM_RESERVATION RR ON C.ClientID = RR.ClientID
			JOIN tblROOM R ON RR.RoomID = R.RoomID
			JOIN tblROOM_TYPE RT ON RT.RoomTypeID = R.RoomTypeID
		WHERE RT.RoomTypeName = 'Weight Room'
		GROUP BY C.ClientID, C.ClientFirstName, C.ClientLastName
		HAVING COUNT(RR.RoomReservationID) >= 2
		) AS subq1 ON C.ClientID = subq1.ClientID
WHERE C.ClientBirthDate < DateAdd(Year, -18, GetDate())
AND ET.EquipmentTypeName = 'Bench Press'
AND CT.CheckTypeName = 'Out'
AND CO.ConditionName = 'Damaged'
GROUP BY C.ClientID, C.ClientFirstName, C.ClientLastName, subq1.TotalRoomsReserved
HAVING COUNT(E.EquipmentID) > 2
GO

-- Find all rooms with at least 1 amenity of type 'Lockers'
-- That also have been used for over 5 times for classes of type 'Yoga'
GO
CREATE VIEW View_LockersYogaRooms
AS
SELECT R.RoomID, R.RoomName, RA.RoomAmenityQuanity, subq1.TotalClassReservations
FROM tblROOM R
	JOIN tblROOM_AMENITY RA ON R.RoomID = RA.RoomID
	JOIN tblAMENITY A ON RA.AmenityID = A.AmenityID
	JOIN
		(
		SELECT R.RoomID, R.RoomName, COUNT(CRR.ClassRoomReservationID) AS TotalClassReservations
		FROM tblROOM R
			JOIN tblROOM_RESERVATION RR ON R.RoomID = RR.RoomID
			JOIN tblCLASS_ROOM_RESERVATION CRR ON RR.RoomReservationID = CRR.RoomReservationID
			JOIN tblCLASS C ON CRR.ClassID = C.ClassID
			JOIN tblCLASS_TYPE CT ON C.ClassTypeID = CT.ClassTypeID
		WHERE CT.ClassTypeName = 'Yoga'
		GROUP BY R.RoomID, R.RoomName
		HAVING COUNT(CRR.ClassRoomReservationID) > 1
		) AS subq1 ON R.RoomID = subq1.RoomID
WHERE AmenityName = 'Lockers'
    AND RoomAmenityQuanity > 1
GO
