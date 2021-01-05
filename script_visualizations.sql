USE PROJ_INFO_330_B7

-- QUERY FOR VISUALIZATION -- DANIEL
-- Which fee plan, room type, building is used the most
SELECT RM_R.RoomReservationID, RM_T.RoomTypeName, FP.FeePlanName, BLD.BuildingName
FROM tblROOM_RESERVATION RM_R
    JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
    JOIN tblROOM_TYPE RM_T ON RM.RoomTypeID = RM_T.RoomTypeID
    JOIN tblFEE_PLAN FP ON RM_R.FeePlanID = FP.FeePlanID
    JOIN tblBUILDING BLD ON RM.BuildingID = BLD.BuildingID
