USE PROJ_INFO_330_B7

-- populate tblCARD -- daniel
-- cursor method (but it's basically the exact same as if we just ran EXEC so we're not using it
/*
-- create params table
CREATE TABLE tblPARAMS
(ParamsID INTEGER IDENTITY(1,1) PRIMARY KEY,
 CardTypeName VARCHAR(30) NOT NULL,
 CardNumber CHAR(16) NOT NULL,
 CardSecurityCode CHAR(3) NOT NULL,
 CardExpirationDate DATE NOT NULL)
 -- enter in parameters
INSERT INTO tblPARAMS (CardTypeName, CardNumber, CardSecurityCode, CardExpirationDate)
VALUES ('Debit','2304357275405239','855','2023-11-23'),
       ('Credit','4987138475837475','234','2022-04-15'),
       ('Debit','7509387405978230','458','2024-12-31'),
       ('Debit','0120346745765310','012','2021-03-21'),
       ('Credit','3084756010398457','232','2021-02-06'),
       ('Credit','3460349587349750','394','2023-02-17'),
       ('Credit','8751836043958710','398','2022-04-26'),
       ('Credit','7502398463401910','190','2023-05-08'),
       ('Debit','0103984759436310','439','2022-10-30'),
       ('Debit','9455958723049867','234','2021-07-21'),
       ('Debit','0985032498556984','245','2023-07-22'),
       ('Credit','3095718304972487','192','2022-06-19'),
       ('Credit','6023847502834874','805','2021-10-22'),
       ('Credit','6734565892347504','680','2022-09-10'),
       ('Credit','4687023984750283','422','2023-08-28'),
       ('Credit','4750832089127438','576','2024-01-24'),
       ('Debit','2401948573987324','059','2024-08-13')
-- local: changes scope
-- fast_forward: read_only+forward_only
-- open/close: controls access to data
-- deallocate: break cursor and var name connection
DECLARE @CARD_TYPE VARCHAR(20), @CARD_NUM CHAR(16), @CARD_CODE CHAR(3), @CARD_DATE DATE
DECLARE CURS CURSOR FOR
    SELECT CardTypeName,CardNumber,CardSecurityCode,CardExpirationDate FROM tblPARAMS
OPEN CURS
FETCH NEXT FROM CURS INTO @CARD_TYPE,@CARD_NUM,@CARD_CODE,@CARD_DATE
WHILE @@FETCH_STATUS = 0 BEGIN
    EXEC INSERT_CARD @CARD_TYPE,@CARD_NUM,@CARD_CODE,@CARD_DATE
    FETCH NEXT FROM CURS INTO @CARD_TYPE,@CARD_NUM,@CARD_CODE,@CARD_DATE
END
CLOSE CURS
DEALLOCATE CURS
-- clean up
DROP TABLE tblPARAMS
*/
EXEC INSERT_CARD 'Debit','2304357275405239','855','2023-11-23'
EXEC INSERT_CARD 'Credit','4987138475837475','234','2022-04-15'
EXEC INSERT_CARD 'Debit','7509387405978230','458','2024-12-31'
EXEC INSERT_CARD 'Debit','0120346745765310','012','2021-03-21'
EXEC INSERT_CARD 'Credit','3084756010398457','232','2021-02-06'
EXEC INSERT_CARD 'Credit','3460349587349750','394','2023-02-17'
EXEC INSERT_CARD 'Credit','8751836043958710','398','2022-04-26'
EXEC INSERT_CARD 'Credit','7502398463401910','190','2023-05-08'
EXEC INSERT_CARD 'Debit','0103984759436310','439','2022-10-30'
EXEC INSERT_CARD 'Debit','9455958723049867','234','2021-07-21'
EXEC INSERT_CARD 'Debit','0985032498556984','245','2023-07-22'
EXEC INSERT_CARD 'Credit','3095718304972487','192','2022-06-19'
EXEC INSERT_CARD 'Credit','6023847502834874','805','2021-10-22'
EXEC INSERT_CARD 'Credit','6734565892347504','680','2022-09-10'
EXEC INSERT_CARD 'Credit','4687023984750283','422','2023-08-28'
EXEC INSERT_CARD 'Credit','4750832089127438','576','2024-01-24'
EXEC INSERT_CARD 'Debit','2401948573987324','059','2024-08-13'

-- populate tblCLIENT
EXEC INSERT_CLIENT '2304357275405239','855','2023-11-23','Damian','Cramer','1993-01-23','5303992401'
EXEC INSERT_CLIENT '4987138475837475','234','2022-04-15','Heimen','Shwier','1974-05-29','5292431042'  -- dup i
EXEC INSERT_CLIENT '4987138475837475','234','2022-04-15','James','York','1973-02-12','5291240634'  -- dup
EXEC INSERT_CLIENT '4987138475837475','234','2022-04-15','Lauren','York-Shwier','2001-04-19','5297592049'  -- dup
EXEC INSERT_CLIENT '7509387405978230','458','2024-12-31','Fu Rong','Liu','1942-03-25','6301436038'
EXEC INSERT_CLIENT '0120346745765310','012','2021-03-21','George','Monaesco','1954-05-04','5318304845'
EXEC INSERT_CLIENT '3084756010398457','232','2021-02-06','Frank','Pfizilinger','1965-02-18','5310594356'  -- dup i
EXEC INSERT_CLIENT '3084756010398457','232','2021-02-06','Rulima','Hrong','1964-04-07','5310535847'  -- dup
EXEC INSERT_CLIENT '3460349587349750','394','2023-02-17','Cronk','Phozer','1986-07-23','5304952389'
EXEC INSERT_CLIENT '8751836043958710','398','2022-04-26','Grinkle','Jokaniny','1996-02-12','5294306594'
EXEC INSERT_CLIENT '7502398463401910','190','2023-05-08','Twush','Deinkoff','1995-05-16','3439520695'
EXEC INSERT_CLIENT '0103984759436310','439','2022-10-30','Lingol','Dfinsh','1981-01-25','5294392034'  -- dup i
EXEC INSERT_CLIENT '0103984759436310','439','2022-10-30','Shinko','Rachana','1983-02-14','5296738405'  -- dup
EXEC INSERT_CLIENT '9455958723049867','234','2021-07-21','Gupine','Frizner','1995-10-09','5291435968'
EXEC INSERT_CLIENT '0985032498556984','245','2023-07-22','Kaiko','Shinkao','1997-08-10','53068359204'
EXEC INSERT_CLIENT '3095718304972487','192','2022-06-19','Rachael','Kwink','1993-08-29','5294619503'  -- dup i
EXEC INSERT_CLIENT '3095718304972487','192','2022-06-19','Thetos','Glakin','1994-10-20','5295729485'  -- dup
EXEC INSERT_CLIENT '3095718304972487','192','2022-06-19','Shitano','Kwink-Glakin','2020-04-16','5316920683'  -- dup
EXEC INSERT_CLIENT '3095718304972487','192','2022-06-19','Dawen','Kwink-Glakin','2020-04-16','5318969204'  -- dup
EXEC INSERT_CLIENT '6023847502834874','805','2021-10-22','Malon','Rollino','2000-12-30','5307925928'
EXEC INSERT_CLIENT '6734565892347504','680','2022-09-10','Ghinko','Breadle','1999-08-18','5294501958'
EXEC INSERT_CLIENT '4687023984750283','422','2023-08-28','Detna','Larry','1942-06-17','5296057738'
EXEC INSERT_CLIENT '4750832089127438','576','2024-01-24','Harry','Popler','1986-03-24','5310678843'
EXEC INSERT_CLIENT '2401948573987324','059','2024-08-13','Winger','Jonathiol','1995-07-13','5319923043'

-- populate tblCLASS
EXEC INSERT_CLASS 'Yoga','Beginner Yoga','Standard yoga for individuals with minimal experience'
EXEC INSERT_CLASS 'Yoga','Intermediate Yoga','Standard yoga for individuals with experience'
EXEC INSERT_CLASS 'Yoga','Advanced Yoga','Standard yoga for experienced individuals seeking challenges'
EXEC INSERT_CLASS 'Yoga','Hot Yoga',N'Yoga performed in a heated (~40˚) environment'
EXEC INSERT_CLASS 'Yoga','Aqua Yoga','Yoga for all fitness levels performed in an aquatic environment'
EXEC INSERT_CLASS 'HIIT','Aerobic-Spin HIIT','HIIT centered around spin-class-like material'
EXEC INSERT_CLASS 'HIIT','Aerobic-Track HIIT','HIIT centered around track-based material'
EXEC INSERT_CLASS 'HIIT','Bodyweight HIIT','HIIT centered around CrossFit and Tabata like exercises'
EXEC INSERT_CLASS 'Circuit Training','Sport-Based Circuit','Circuit training centered around various sports'
EXEC INSERT_CLASS 'Circuit Training','Strength Circuit','Circuit training centered around weight-bearing exercises'
EXEC INSERT_CLASS 'Circuit Training','Cardio Circuit','Circuit training centered around heart-rate/cardio intensive exercises'
EXEC INSERT_CLASS 'Kickboxing','General Kickboxing','General kickboxing for all fitness levels'
EXEC INSERT_CLASS 'Kickboxing','Self-Defense Kickboxing','Kickboxing centered around teaching self-defense protocols'

-- populate tblROOM
EXEC INSERT_ROOM 'Running Track','Cardio Room','Cardio Room-RA1',50,'Large running track',1.85
EXEC INSERT_ROOM 'Running Track','Cardio Room','Cardio Room-RB1',150,'Large running track',2.10
EXEC INSERT_ROOM 'Running Track','Cardio Room','Cardio Room-RB2',150,'Large running track',2.10
EXEC INSERT_ROOM 'Running Track','Cardio Room','Cardio Room-RB3',150,'Large running track',2.10
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GA1',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GA2',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GA3',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GA4',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB1',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB2',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB3',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB4',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB5',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GB6',30,'Racquetball/Squash court area',1.35
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GC1',80,'Climbing area',2.25
EXEC INSERT_ROOM 'Gymnasium','Sports Room','Sport Room-GC2',80,'Climbing area',2.25
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CA1',10,'Yoga room for individual or small group sessions',0.65
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CA2',10,'Yoga room for individual or small group sessions',0.65
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CA3',10,'Yoga room for individual or small group sessions',0.65
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CA4',10,'Yoga room for individual or small group sessions',0.65
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CA5',10,'Yoga room for individual or small group sessions',0.65
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CB1',30,'Yoga room for large group sessions',1.15
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CB2',30,'Yoga room for large group sessions',1.15
EXEC INSERT_ROOM 'Center','Yoga Room','Yoga Room-CB3',30,'Yoga room for large group sessions',1.15
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CA1',30,'Weight room with benchpress/freeweights only',1.5
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CA2',30,'Weight room with benchpress/freeweights only',1.5
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CA3',30,'Weight room with benchpress/freeweights only',1.5
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CB1',35,'Weight room with benchpress/freeweights and weight machines',1.85
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CB2',35,'Weight room with benchpress/freeweights and weight machines',1.85
EXEC INSERT_ROOM 'Center','Weight Room','Weight Room-CB3',35,'Weight room with benchpress/freeweights and weight machines',1.85
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA1',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA2',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA3',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA4',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA5',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Cardio Room','Cardio Room-CA6',30,'Cardio room with cardio-centric equipment',1.65
EXEC INSERT_ROOM 'Center','Sports Room','Sport Room-CA1',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Center','Sports Room','Sport Room-CA2',200,'General court/event area fitted for basketball/volleyball/badminton use',2.50
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CA1-Men',100,'Locker room for men',2.00
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CB1-Women',100,'Locker room for women',2.00
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CC1-Gender-Neutral',30,'Locker room for anyone',1.50
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CD1-Individual',5,'Locker room for temporary use or an individual',0.50
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CD2-Individual',5,'Locker room for temporary use or an individual',0.50
EXEC INSERT_ROOM 'Center','Locker Room','Locker Room-CD3-Individual',5,'Locker room for temporary use or an individual',0.50
EXEC INSERT_ROOM 'Center','Sauna','Sauna-CC1',40,'Large Sauna',2.50
EXEC INSERT_ROOM 'Center','Sauna','Sauna-CC2',40,'Large Sauna',2.50
EXEC INSERT_ROOM 'Swimming','Pool','Pool-PA1',50,'Standard pool with 3ft-12ft depth',2.50
EXEC INSERT_ROOM 'Swimming','Pool','Pool-PA2',50,'Standard pool with 3ft-12ft depth',2.50
EXEC INSERT_ROOM 'Swimming','Pool','Pool-PA3',50,'Standard pool with 3ft-12ft depth',2.50
EXEC INSERT_ROOM 'Swimming','Pool','Pool-PB1',20,'Small pool with a constant 20ft depth',3.50
EXEC INSERT_ROOM 'Swimming','Pool','Pool-PC1',200,'Olympic sized pool',5.00
EXEC INSERT_ROOM 'Swimming','Locker Room','Locker Room-PA1-Men',50,'Locker room for men',1.00
EXEC INSERT_ROOM 'Swimming','Locker Room','Locker Room-PB1-Women',50,'Locker room for women',1.00
EXEC INSERT_ROOM 'Swimming','Locker Room','Locker Room-PC1-Gender-Neutral',10,'Locker room for anyone',0.50
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PA1',10,'Small sauna',1.25
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PA2',10,'Small sauna',1.25
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PA3',10,'Small sauna',1.25
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PA4',10,'Small sauna',1.25
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PB1',20,'Medium sauna',1.75
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PB2',20,'Medium sauna',1.75
EXEC INSERT_ROOM 'Swimming','Sauna','Sauna-PC1',40,'Large Sauna',2.50

-- populate tblROOM_AMENITY
EXEC INSERT_ROOM_AMENITY 'Weight Room-CA1','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CA1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CA1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CA2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CA3','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CB1','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CB1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CB1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CB2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Weight Room-CB3','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA1','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA2','Towels',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA3','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA4','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA4','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA5','Towels',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA5','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-CA6','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Sport Room-CA1','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-CA1','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-CA2','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-CA2','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CA1-Men','Water Fountain',4
EXEC INSERT_ROOM_AMENITY 'Locker Room-CA1-Men','Vending Machine',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CA1-Men','Towels',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CA1-Men','Lockers',50
EXEC INSERT_ROOM_AMENITY 'Locker Room-CA1-Men','Bathroom',6
EXEC INSERT_ROOM_AMENITY 'Locker Room-CB1-Women','Water Fountain',4
EXEC INSERT_ROOM_AMENITY 'Locker Room-CB1-Women','Vending Machine',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CB1-Women','Towels',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CB1-Women','Lockers',50
EXEC INSERT_ROOM_AMENITY 'Locker Room-CB1-Women','Bathroom',6
EXEC INSERT_ROOM_AMENITY 'Locker Room-CC1-Gender-Neutral','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CC1-Gender-Neutral','Vending Machine',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-CC1-Gender-Neutral','Towels',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-CC1-Gender-Neutral','Lockers',15
EXEC INSERT_ROOM_AMENITY 'Locker Room-CC1-Gender-Neutral','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-CD1-Individual','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-CD2-Individual','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-CD3-Individual','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Sauna-CC1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sauna-CC1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Sauna-CC2','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sauna-CC2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PA1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Pool-PA1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PA2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PA3','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PB1','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Pool-PB1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PC1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Pool-PC1','Vending Machine',1
EXEC INSERT_ROOM_AMENITY 'Pool-PC1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PA1-Men','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-PA1-Men','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-PA1-Men','Towels',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PA1-Men','Lockers',25
EXEC INSERT_ROOM_AMENITY 'Locker Room-PB1-Women','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-PB1-Women','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Locker Room-PB1-Women','Towels',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PB1-Women','Lockers',25
EXEC INSERT_ROOM_AMENITY 'Locker Room-PC1-Gender-Neutral','Bathroom',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PC1-Gender-Neutral','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PC1-Gender-Neutral','Towels',1
EXEC INSERT_ROOM_AMENITY 'Locker Room-PC1-Gender-Neutral','Lockers',5
EXEC INSERT_ROOM_AMENITY 'Sauna-PB1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sauna-PB2','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sauna-PC1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sauna-PC1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RA1','Lockers',20
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RA1','Vending Machine',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RA1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB1','Vending Machine',4
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB1','Towels',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB1','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB1','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB2','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB2','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB3','Bathroom',2
EXEC INSERT_ROOM_AMENITY 'Cardio Room-RB3','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA1','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA1','Vending Machine',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA2','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA3','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA3','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sport Room-GA4','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB1','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB2','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB3','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB4','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB5','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GB6','Lockers',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GC1','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GC1','Vending Machine',1
EXEC INSERT_ROOM_AMENITY 'Sport Room-GC1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Sport Room-GC2','Water Fountain',2
EXEC INSERT_ROOM_AMENITY 'Sport Room-GC2','Towels',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CA1','Lockers',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CA2','Lockers',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CA3','Lockers',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CA4','Lockers',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CA5','Lockers',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CB1','Towels',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CB1','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CB2','Water Fountain',1
EXEC INSERT_ROOM_AMENITY 'Yoga Room-CB3','Water Fountain',1

-- populate tblROOM_RESERVATION
-- SELECT 'EXEC INSERT_ROOM_RESERVATION '''+RoomName+''','''+CONVERT(VARCHAR(10), DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 6939), '2000-01-01'), 111)+'''' FROM tblROOM
-- SELECT ''''+ClientFirstName+''','''+ClientLastName+''','''+CONVERT(VARCHAR(10), ClientBirthDate, 111)+'''' FROM tblCLIENT
-- SELECT CardTypeName FROM tblCLIENT JOIN tblCARD tC ON tblCLIENT.CardID = tC.CardID JOIN tblCARD_TYPE tCT on tC.CardTypeID = tCT.CardTypeID
-- SELECT CONVERT(VARCHAR(10), DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 6939), '2000-01-01'), 111)+'''' FROM sysobjects
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Thetos','Glakin','1994/10/20','LargeDeposit','2009-04-22','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Thetos','Glakin','1994/10/20','LargeDeposit','2002-05-07','2005-07-01'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Shinko','Rachana','1983/02/14','PerHour','2008-02-19','2009-06-02'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Shinko','Rachana','1983/02/14','PerHour','2002-04-21','2002-08-21'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Rachael','Kwink','1993/08/29','LargeDeposit','2001-06-18','2010-02-22'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Rachael','Kwink','1993/08/29','LargeDeposit','2006-10-20','2016-10-17'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Rachael','Kwink','1993/08/29','LargeDeposit','2015-07-22','2017-01-15'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-01-28','2010-05-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-04-08','2003-07-02'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2007-03-25','2011-10-30'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Twush','Deinkoff','1995/05/16','LargeDeposit','2007-02-15','2013-09-03'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Twush','Deinkoff','1995/05/16','LargeDeposit','2004-01-30','2010-01-22'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Twush','Deinkoff','1995/05/16','LargeDeposit','2009-12-29','2013-04-21'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','Twush','Deinkoff','1995/05/16','LargeDeposit','2010-06-01','2013-07-27'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','James','York','1973/02/12','MediumDeposit','2003-05-15','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','James','York','1973/02/12','MediumDeposit','2002-03-08','2008-08-06'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','James','York','1973/02/12','MediumDeposit','2007-08-19','2012-07-14'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB1','James','York','1973/02/12','MediumDeposit','2008-03-12','2009-04-22'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Heimen','Shwier','1974/05/29','LargeDeposit','2011-09-02','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Winger','Jonathiol','1995/07/13','PerHour','2000-07-15','2011-09-19'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Lauren','York-Shwier','2001/04/19','MediumDeposit','2002-08-25','2007-12-28'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Lauren','York-Shwier','2001/04/19','MediumDeposit','2003-07-12','2014-11-02'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','James','York','1973/02/12','SmallDeposit','2003-07-04','2004-11-01'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','James','York','1973/02/12','SmallDeposit','2000-07-12','2016-12-18'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Shinko','Rachana','1983/02/14','PerHour','2007-03-30','2009-08-30'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Shinko','Rachana','1983/02/14','PerHour','2001-01-10','2014-10-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Shinko','Rachana','1983/02/14','PerHour','2000-11-10','2001-04-15'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Damian','Cramer','1993/01/23','PerHour','2001-04-12','2004-09-06'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Damian','Cramer','1993/01/23','PerHour','2018-10-01','2018-12-02'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-RB2','Damian','Cramer','1993/01/23','PerHour','2007-03-25','2013-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2002-02-18','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2011-05-14','2014-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2002-11-06','2009-07-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2002-09-17','2006-06-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2009-06-28','2011-05-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2010-07-16','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2000-06-22','2007-08-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2011-06-06','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974/05/29','LargeDeposit','2008-02-04','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2017-01-14','2017-05-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2006-01-07','2012-10-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2007-10-31','2010-08-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2017-03-21','2017-08-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2005-04-27','2007-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2004-01-17','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2001-02-26','2013-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2012-09-14','2013-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2017-07-26','2018-04-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2003-09-23','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2008-06-23','2009-11-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2006-09-22','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2001-04-03','2014-09-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2006-12-27','2011-12-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2003-10-12','2008-09-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2001-01-11','2014-10-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2001-01-10','2005-03-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2010-04-20','2013-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973/02/12','MediumDeposit','2014-10-19','2017-11-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2001-02-26','2004-06-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2005-03-26','2008-03-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2004-06-19','2011-06-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2002-05-30','2009-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2000-01-29','2005-03-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2008-08-29','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2001-10-08','2004-04-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2001-04-12','2013-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2009-11-04','2016-07-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986/03/24','MediumDeposit','2014-03-01','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2010-02-13','2012-10-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2013-11-16','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2001-04-03','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2002-12-09','2018-06-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2009-07-22','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2002-07-08','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2000-11-19','2005-09-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2003-07-15','2005-05-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2000-11-19','2008-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2001-05-09','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986/07/23','LargeDeposit','2004-09-03','2013-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2007-10-17','2016-12-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2009-04-26','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2015-04-28','2016-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2001-01-13','2003-07-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2000-07-12','2008-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2009-04-30','2015-05-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2002-01-24','2004-01-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2007-07-25','2016-06-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2000-01-27','2004-12-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2001-02-26','2017-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983/02/14','PerHour','2004-09-26','2010-12-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2001-01-13','2010-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2012-09-14','2012-10-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2006-02-06','2017-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2005-03-09','2017-11-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2010-04-24','2016-11-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2000-07-30','2005-06-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2008-08-20','2010-08-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2010-08-03','2016-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2018-08-20','2018-12-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942/06/17','MediumDeposit','2003-07-15','2009-07-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2008-06-24','2013-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2003-07-06','2008-02-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2000-04-01','2003-06-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2003-07-15','2006-02-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2004-04-27','2007-06-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2001-05-09','2016-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2015-12-18','2017-04-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2004-12-05','2014-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2009-04-26','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rachael','Kwink','1993/08/29','LargeDeposit','2003-08-22','2014-04-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2006-10-05','2009-05-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2001-11-17','2006-06-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2004-11-01','2005-05-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2014-09-13','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2012-10-06','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2002-12-03','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2009-05-08','2012-06-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2008-01-15','2010-05-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2006-12-17','2015-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2002-04-15','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981/01/25','PerHour','2009-06-05','2018-02-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2003-10-17','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2002-05-30','2016-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2011-12-30','2012-10-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2000-09-18','2008-04-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2001-08-21','2016-10-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2003-07-15','2017-06-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2008-03-09','2012-10-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2009-12-18','2011-11-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2002-12-02','2017-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2012-01-06','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973/02/12','LargeDeposit','2002-01-23','2004-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2000-01-03','2014-08-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2000-11-15','2017-10-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2001-12-25','2012-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2011-08-11','2016-02-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2004-08-04','2014-10-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2004-01-08','2008-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2005-09-24','2006-06-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2006-10-29','2007-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2005-10-07','2010-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2003-07-12','2006-09-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2005-09-24','2018-06-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964/04/07','LargeDeposit','2006-06-11','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2007-06-11','2011-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2011-09-26','2014-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2010-03-06','2017-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2000-01-27','2002-02-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2016-06-15','2018-08-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2001-12-22','2015-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2003-08-15','2015-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2010-04-04','2013-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2012-03-21','2015-12-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2009-05-08','2014-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2014-09-23','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2001-12-22','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2001-10-21','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2003-10-17','2009-05-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2005-04-02','2012-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2011-06-30','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2002-05-18','2002-10-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2001-08-21','2012-10-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2004-09-03','2015-05-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2003-09-23','2007-09-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2016-10-13','2017-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2009-04-30','2017-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2000-11-10','2002-12-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2010-12-22','2012-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2002-12-30','2013-09-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2012-08-25','2014-10-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2011-05-20','2017-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2006-01-28','2009-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2002-10-18','2010-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2000-04-15','2018-04-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2009-06-18','2012-06-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2007-05-18','2017-05-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2000-06-23','2006-07-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2000-11-19','2017-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2003-11-18','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2004-08-04','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2011-06-30','2011-09-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981/01/25','PerHour','2012-06-12','2016-09-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2001-06-15','2003-09-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2005-06-16','2016-12-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2003-03-23','2015-05-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2002-03-02','2003-05-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2002-11-05','2008-03-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2003-09-15','2011-01-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2009-01-27','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2007-03-18','2013-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2004-01-30','2005-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2010-01-05','2010-11-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2012-01-06','2012-09-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2005-10-26','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2010-01-19','2011-05-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Thetos','Glakin','1994/10/20','LargeDeposit','2001-01-10','2005-01-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2004-08-04','2012-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2018-04-01','2018-07-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2005-06-16','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2013-01-07','2014-12-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2012-10-06','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-01-29','2009-11-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2012-11-24','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2007-12-23','2016-06-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-04-05','2006-07-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2001-08-21','2005-01-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2005-06-05','2015-08-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2005-04-19','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-10-31','2008-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2006-07-01','2017-07-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2005-07-01','2017-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2006-06-21','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2012-11-19','2015-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2011-11-29','2018-07-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2004-09-03','2009-12-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2001-01-10','2016-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2002-10-05','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2003-01-05','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2007-08-11','2018-10-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2005-01-16','2013-01-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2006-01-03','2006-01-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2003-06-22','2008-10-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2006-02-18','2006-06-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2010-01-22','2010-06-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2002-04-08','2015-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2002-02-09','2012-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2005-07-01','2018-08-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2010-09-04','2017-04-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2007-10-25','2011-06-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2006-10-22','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2010-04-04','2018-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2001-11-30','2018-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2000-01-29','2017-02-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2005-01-09','2011-01-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2006-02-06','2013-08-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2002-01-23','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2003-05-15','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2002-06-01','2017-05-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2011-06-07','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA3','Harry','Popler','1986/03/24','MediumDeposit','2017-02-06','2018-12-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Harry','Popler','1986/03/24','LargeDeposit','2000-06-23','2016-11-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Harry','Popler','1986/03/24','LargeDeposit','2004-08-24','2010-05-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Harry','Popler','1986/03/24','LargeDeposit','2005-03-09','2005-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Harry','Popler','1986/03/24','LargeDeposit','2006-05-11','2007-08-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2007-09-08','2018-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-08-09','2007-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2004-04-13','2013-02-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-05-15','2016-02-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Damian','Cramer','1993/01/23','PerHour','2008-04-27','2014-08-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Damian','Cramer','1993/01/23','PerHour','2003-03-23','2010-01-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Damian','Cramer','1993/01/23','PerHour','2000-07-30','2010-07-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Damian','Cramer','1993/01/23','PerHour','2003-08-15','2006-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Damian','Cramer','1993/01/23','PerHour','2008-10-18','2016-05-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Detna','Larry','1942/06/17','LargeDeposit','2009-12-18','2014-10-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Detna','Larry','1942/06/17','LargeDeposit','2014-01-07','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Detna','Larry','1942/06/17','LargeDeposit','2013-09-06','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Detna','Larry','1942/06/17','LargeDeposit','2009-09-11','2014-07-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Detna','Larry','1942/06/17','LargeDeposit','2001-02-26','2011-02-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2001-05-19','2006-07-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2000-01-27','2001-09-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2014-09-23','2018-04-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2006-08-15','2010-01-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2009-08-30','2012-11-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993/08/29','LargeDeposit','2001-01-22','2005-04-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2005-12-10','2008-08-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2017-10-02','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2010-08-02','2012-02-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2002-12-30','2012-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2004-08-04','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GA4','James','York','1973/02/12','SmallDeposit','2008-06-25','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2006-10-20','2016-12-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2006-02-19','2010-09-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2003-10-02','2007-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2009-05-05','2009-06-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2001-05-04','2015-09-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2000-04-01','2009-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Winger','Jonathiol','1995/07/13','PerHour','2006-11-11','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2005-09-24','2018-02-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2005-09-05','2009-06-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2004-06-24','2017-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2014-08-09','2014-10-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2002-09-19','2004-12-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2013-09-03','2014-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974/05/29','LargeDeposit','2004-06-24','2006-05-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2013-02-08','2015-09-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2004-12-05','2006-02-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2007-04-05','2014-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2004-09-21','2016-11-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2016-04-22','2016-11-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2001-05-04','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2004-08-24','2014-08-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2002-12-03','2011-05-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-06-23','2014-10-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-09-04','2018-10-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-03-08','2009-10-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-03-02','2013-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-02-18','2018-12-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-04-15','2004-05-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-11-05','2010-04-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2001-05-04','2014-08-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2007-04-05','2010-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2003-01-05','2011-03-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2002-04-15','2005-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2003-03-23','2012-01-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2004-03-06','2016-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2010-09-28','2012-01-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2007-08-19','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2006-09-04','2014-10-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983/02/14','PerHour','2000-12-01','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2001-04-12','2014-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2004-09-01','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2003-11-18','2007-03-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2003-06-22','2008-10-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2009-03-05','2009-08-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2010-01-22','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2010-07-16','2015-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2005-05-23','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-07-12','2017-08-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-07-04','2012-10-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Fu Rong','Liu','1942/03/25','PerHour','2015-12-18','2016-11-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Kaiko','Shinkao','1997/08/10','PerHour','2002-10-08','2010-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Kaiko','Shinkao','1997/08/10','PerHour','2012-02-17','2017-08-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Gupine','Frizner','1995/10/09','PerHour','2001-10-21','2002-03-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Gupine','Frizner','1995/10/09','PerHour','2007-09-20','2011-06-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Harry','Popler','1986/03/24','MediumDeposit','2003-01-14','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Harry','Popler','1986/03/24','MediumDeposit','2010-02-22','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Harry','Popler','1986/03/24','MediumDeposit','2014-09-17','2018-02-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2000-04-15','2006-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2007-07-25','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2004-04-13','2007-07-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Harry','Popler','1986/03/24','LargeDeposit','2004-04-11','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Harry','Popler','1986/03/24','LargeDeposit','2001-07-18','2001-12-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Harry','Popler','1986/03/24','LargeDeposit','2001-09-21','2014-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Harry','Popler','1986/03/24','LargeDeposit','2010-12-26','2016-11-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Harry','Popler','1986/03/24','LargeDeposit','2002-12-02','2008-10-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Detna','Larry','1942/06/17','MediumDeposit','2009-05-30','2014-08-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Detna','Larry','1942/06/17','MediumDeposit','2005-01-19','2013-02-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Detna','Larry','1942/06/17','MediumDeposit','2004-05-16','2013-07-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Detna','Larry','1942/06/17','MediumDeposit','2010-09-28','2012-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Detna','Larry','1942/06/17','MediumDeposit','2015-10-17','2017-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2010-10-24','2017-08-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2002-09-12','2018-08-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2005-07-01','2018-04-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2002-03-02','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2007-09-05','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2007-02-15','2018-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-11-05','2015-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2012-10-19','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2008-02-11','2009-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2000-03-03','2009-06-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2008-06-25','2016-11-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-09-19','2013-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2007-08-08','2011-06-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2001-09-21','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2016-10-02','2018-04-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2002-02-09','2010-01-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2009-09-11','2018-03-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2016-10-02','2016-11-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986/07/23','SmallDeposit','2015-01-14','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2011-05-16','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2003-07-12','2010-04-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2009-05-12','2016-10-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2000-06-23','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2000-04-01','2017-04-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2009-06-24','2013-07-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB3','Kaiko','Shinkao','1997/08/10','PerHour','2007-05-18','2012-07-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Kaiko','Shinkao','1997/08/10','PerHour','2006-11-09','2009-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Kaiko','Shinkao','1997/08/10','PerHour','2011-05-16','2012-08-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Kaiko','Shinkao','1997/08/10','PerHour','2004-08-04','2012-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Kaiko','Shinkao','1997/08/10','PerHour','2000-09-02','2000-10-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Cronk','Phozer','1986/07/23','MediumDeposit','2006-01-28','2006-06-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Cronk','Phozer','1986/07/23','MediumDeposit','2007-04-05','2018-03-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Cronk','Phozer','1986/07/23','MediumDeposit','2002-10-18','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Cronk','Phozer','1986/07/23','MediumDeposit','2000-01-30','2010-12-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999/08/18','LargeDeposit','2000-10-14','2016-05-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999/08/18','LargeDeposit','2005-09-01','2016-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999/08/18','LargeDeposit','2016-11-13','2018-09-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999/08/18','LargeDeposit','2015-03-13','2018-09-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999/08/18','LargeDeposit','2000-03-25','2006-10-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973/02/12','LargeDeposit','2008-08-09','2016-04-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973/02/12','LargeDeposit','2008-06-23','2010-06-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973/02/12','LargeDeposit','2012-02-02','2018-09-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973/02/12','LargeDeposit','2005-01-19','2010-06-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973/02/12','LargeDeposit','2002-06-01','2002-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2007-06-15','2017-11-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2002-07-12','2004-06-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2007-03-18','2009-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2015-11-30','2018-06-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2007-02-15','2017-02-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Thetos','Glakin','1994/10/20','LargeDeposit','2004-09-21','2013-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2004-01-08','2016-04-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-04-08','2016-05-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2016-07-26','2016-12-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2001-05-09','2012-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2007-10-31','2010-10-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GB5','Twush','Deinkoff','1995/05/16','MediumDeposit','2012-06-19','2012-07-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2003-07-06','2016-12-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2010-01-22','2010-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2014-01-16','2017-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2006-02-18','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2005-07-27','2017-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rulima','Hrong','1964/04/07','LargeDeposit','2002-09-19','2009-08-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2014-09-20','2017-02-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2010-05-06','2016-07-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2001-02-25','2011-03-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2004-04-13','2016-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2014-08-28','2017-07-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Shinko','Rachana','1983/02/14','PerHour','2001-11-30','2002-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2000-03-25','2000-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2006-11-09','2018-10-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2000-07-15','2015-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2002-04-21','2017-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2001-11-17','2002-01-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2002-06-01','2009-06-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981/01/25','PerHour','2005-05-08','2007-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2012-01-25','2013-03-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2005-05-23','2006-02-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2002-10-05','2006-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2007-03-29','2010-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2004-09-01','2010-01-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2004-07-08','2007-08-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Cronk','Phozer','1986/07/23','SmallDeposit','2011-09-02','2012-06-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2008-08-15','2016-12-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2001-03-20','2003-07-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2002-09-04','2016-11-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2017-05-31','2018-12-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2014-10-03','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2004-04-04','2015-11-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2001-02-26','2007-05-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Harry','Popler','1986/03/24','LargeDeposit','2007-02-15','2014-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2008-08-15','2015-08-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2009-12-29','2012-08-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2001-01-11','2012-01-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2002-11-05','2007-06-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2006-10-22','2012-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2007-04-03','2008-06-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2002-01-06','2006-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993/08/29','SmallDeposit','2004-09-06','2013-11-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Shinko','Rachana','1983/02/14','PerHour','2000-10-14','2013-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Shinko','Rachana','1983/02/14','PerHour','2005-03-09','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Shinko','Rachana','1983/02/14','PerHour','2011-06-30','2013-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Shinko','Rachana','1983/02/14','PerHour','2004-08-24','2015-08-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rulima','Hrong','1964/04/07','LargeDeposit','2005-01-19','2006-07-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rulima','Hrong','1964/04/07','LargeDeposit','2007-03-29','2011-11-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rulima','Hrong','1964/04/07','LargeDeposit','2001-04-15','2016-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rulima','Hrong','1964/04/07','LargeDeposit','2008-06-23','2016-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Harry','Popler','1986/03/24','MediumDeposit','2001-06-18','2005-05-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Harry','Popler','1986/03/24','MediumDeposit','2003-08-26','2005-03-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Harry','Popler','1986/03/24','MediumDeposit','2015-11-04','2016-10-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Harry','Popler','1986/03/24','MediumDeposit','2000-04-14','2003-07-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Harry','Popler','1986/03/24','MediumDeposit','2007-04-03','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2002-01-24','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2010-09-20','2013-02-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2007-08-19','2015-05-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2002-03-08','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2011-04-07','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2002-05-18','2009-05-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2003-10-12','2007-07-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2011-05-01','2011-06-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2003-09-23','2010-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2004-04-13','2006-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Rachael','Kwink','1993/08/29','MediumDeposit','2010-05-04','2016-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2007-12-15','2014-10-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2005-04-27','2010-07-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2001-12-25','2011-10-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2006-10-05','2009-11-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2002-10-08','2016-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965/02/18','LargeDeposit','2002-05-07','2016-05-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2015-03-18','2018-10-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2003-09-15','2007-07-25'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2009-04-30','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Twush','Deinkoff','1995/05/16','LargeDeposit','2007-03-29','2015-11-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Twush','Deinkoff','1995/05/16','LargeDeposit','2005-09-24','2009-05-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Twush','Deinkoff','1995/05/16','LargeDeposit','2007-02-15','2013-02-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2004-01-30','2011-03-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2009-12-29','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2007-09-17','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2005-03-27','2016-03-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2011-11-29','2018-07-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2005-03-27','2007-10-31'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2006-10-02','2009-05-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2008-08-20','2008-08-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2002-10-05','2016-02-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2004-12-27','2016-02-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2012-06-12','2018-03-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2010-06-01','2010-11-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2003-03-23','2008-02-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2010-12-22','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2004-12-14','2015-05-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2008-08-09','2016-10-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2008-04-12','2018-12-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2008-04-12','2016-10-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2005-04-25','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2001-11-06','2006-02-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2007-09-05','2012-11-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2015-09-17','2016-02-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2006-02-02','2012-02-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2007-07-07','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2008-03-09','2014-10-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Malon','Rollino','2000/12/30','MediumDeposit','2001-12-22','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2010-11-18','2015-11-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2000-06-23','2004-01-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2008-09-03','2018-10-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2004-06-28','2009-12-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2005-10-26','2008-04-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2010-03-01','2018-03-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2007-09-20','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2000-01-29','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2002-09-19','2018-03-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2001-12-25','2008-02-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2010-01-30','2012-04-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2007-07-02','2008-03-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2001-09-02','2005-03-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2000-01-29','2005-09-24'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2003-06-22','2014-09-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2016-02-24','2016-11-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954/05/04','PerHour','2004-11-01','2011-05-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2002-09-17','2005-04-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2006-01-28','2009-04-22'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2006-10-22','2013-10-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2010-09-28','2017-02-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2005-07-01','2018-02-22'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2012-01-14','2018-04-25'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2012-03-05','2017-08-25'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2008-08-20','2016-12-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2002-09-04','2003-02-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2008-09-25','2016-03-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2002-04-30','2009-12-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2007-10-08','2010-01-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2000-10-14','2002-10-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2002-08-09','2005-03-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2001-01-11','2014-10-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2001-04-03','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2009-06-24','2010-02-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2012-08-03','2014-02-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942/06/17','LargeDeposit','2012-04-15','2012-08-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-09-26','2014-10-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2002-10-04','2008-11-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2006-11-11','2018-08-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2003-07-04','2007-10-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-04-11','2015-04-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2009-11-04','2016-10-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2007-03-29','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2007-09-05','2009-12-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2002-09-19','2004-12-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-01-08','2007-06-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','Heimen','Shwier','1974/05/29','LargeDeposit','2003-05-15','2017-10-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','Rachael','Kwink','1993/08/29','LargeDeposit','2007-10-25','2009-10-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','James','York','1973/02/12','MediumDeposit','2001-11-30','2012-01-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','George','Monaesco','1954/05/04','PerHour','2008-11-03','2012-06-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','Gupine','Frizner','1995/10/09','PerHour','2009-09-11','2014-10-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA3','Rulima','Hrong','1964/04/07','LargeDeposit','2012-10-29','2016-11-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Fu Rong','Liu','1942/03/25','PerHour','2015-01-05','2017-02-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-03-30','2004-09-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Kaiko','Shinkao','1997/08/10','PerHour','2002-01-09','2007-02-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Harry','Popler','1986/03/24','MediumDeposit','2008-02-19','2008-08-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Shinko','Rachana','1983/02/14','PerHour','2011-06-30','2016-06-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA4','Lauren','York-Shwier','2001/04/19','SmallDeposit','2001-05-04','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Grinkle','Jokaniny','1996/02/12','SmallDeposit','2006-06-07','2006-07-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Grinkle','Jokaniny','1996/02/12','SmallDeposit','2008-08-27','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Grinkle','Jokaniny','1996/02/12','SmallDeposit','2002-06-01','2002-12-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Ghinko','Breadle','1999/08/18','LargeDeposit','2011-04-27','2016-07-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Ghinko','Breadle','1999/08/18','LargeDeposit','2001-04-15','2002-10-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-02-18','2006-09-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Shinko','Rachana','1983/02/14','PerHour','2009-09-10','2009-12-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Shinko','Rachana','1983/02/14','PerHour','2012-09-01','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Shinko','Rachana','1983/02/14','PerHour','2004-05-16','2011-04-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Shinko','Rachana','1983/02/14','PerHour','2002-12-30','2010-06-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Winger','Jonathiol','1995/07/13','PerHour','2002-03-08','2002-12-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Winger','Jonathiol','1995/07/13','PerHour','2002-09-04','2015-10-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Winger','Jonathiol','1995/07/13','PerHour','2002-11-05','2015-07-31'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Winger','Jonathiol','1995/07/13','PerHour','2003-08-22','2014-02-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981/01/25','PerHour','2004-12-06','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981/01/25','PerHour','2000-06-23','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981/01/25','PerHour','2008-04-12','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981/01/25','PerHour','2006-07-01','2010-05-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981/01/25','PerHour','2012-08-03','2018-01-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Gupine','Frizner','1995/10/09','PerHour','2007-06-20','2011-11-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Gupine','Frizner','1995/10/09','PerHour','2009-08-21','2014-09-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Gupine','Frizner','1995/10/09','PerHour','2006-02-02','2007-07-07'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Gupine','Frizner','1995/10/09','PerHour','2011-09-02','2013-01-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CA5','Gupine','Frizner','1995/10/09','PerHour','2002-09-19','2011-06-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Lauren','York-Shwier','2001/04/19','SmallDeposit','2003-09-23','2004-08-24'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Damian','Cramer','1993/01/23','PerHour','2002-01-06','2014-08-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Kaiko','Shinkao','1997/08/10','PerHour','2002-03-08','2012-02-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Kaiko','Shinkao','1997/08/10','PerHour','2002-05-30','2018-02-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','James','York','1973/02/12','SmallDeposit','2002-10-04','2012-12-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','James','York','1973/02/12','SmallDeposit','2007-09-20','2009-12-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Frank','Pfizilinger','1965/02/18','LargeDeposit','2005-01-09','2009-05-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Frank','Pfizilinger','1965/02/18','LargeDeposit','2001-03-03','2003-07-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Frank','Pfizilinger','1965/02/18','LargeDeposit','2004-11-01','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Gupine','Frizner','1995/10/09','PerHour','2000-03-25','2002-09-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Gupine','Frizner','1995/10/09','PerHour','2000-01-03','2017-02-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB1','Gupine','Frizner','1995/10/09','PerHour','2017-08-07','2018-01-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2003-07-12','2007-12-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2012-04-02','2013-03-22'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2008-02-11','2017-02-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2006-06-07','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2002-04-08','2002-10-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Fu Rong','Liu','1942/03/25','PerHour','2007-07-02','2009-09-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2004-03-06','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2001-01-10','2015-08-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2003-07-12','2012-10-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2010-06-10','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2000-07-30','2016-12-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954/05/04','PerHour','2009-06-05','2014-05-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2002-12-30','2010-12-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2012-07-09','2015-04-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2004-12-05','2010-06-10'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2006-06-21','2006-07-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2007-07-02','2016-04-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2001-12-25','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974/05/29','LargeDeposit','2007-12-23','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2000-04-01','2004-12-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2010-09-28','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2007-03-20','2009-10-23'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2014-10-02','2016-02-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2007-07-07','2011-08-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2002-10-04','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2004-01-17','2014-03-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2006-04-23','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2007-10-17','2012-07-18'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2002-10-04','2009-07-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2011-09-19','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2004-08-04','2009-01-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2007-10-08','2017-07-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2003-09-23','2012-02-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993/01/23','PerHour','2006-02-06','2018-07-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2004-04-27','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2008-01-15','2010-08-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2006-03-31','2008-10-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2012-01-14','2018-12-27'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2001-05-09','2006-12-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2003-09-15','2005-10-26'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2000-07-15','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB2','Rachael','Kwink','1993/08/29','LargeDeposit','2015-03-01','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2001-04-05','2013-04-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2002-12-09','2017-09-22'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2005-01-23','2015-11-30'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2008-06-25','2009-08-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2004-12-25','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973/02/12','LargeDeposit','2004-06-28','2016-06-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2010-02-02','2012-04-19'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2000-09-18','2001-04-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2012-06-12','2016-04-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2001-04-03','2003-07-02'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2005-09-24','2015-08-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997/08/10','PerHour','2001-05-04','2008-08-09'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2006-10-20','2017-07-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2011-08-28','2018-11-24'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2010-01-30','2016-12-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2004-01-30','2007-09-05'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2005-10-07','2008-03-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2014-10-12','2016-07-31'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986/03/24','LargeDeposit','2002-09-17','2012-06-12'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2000-09-02','2016-07-31'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2011-12-30','2017-05-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2011-09-28','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2001-02-25','2016-06-15'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2011-10-30','2015-11-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2000-03-25','2011-06-04'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000/12/30','LargeDeposit','2002-02-09','2009-06-28'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2016-06-15','2017-01-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2005-04-02','2015-01-14'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2002-10-18','2011-06-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2009-07-23','2016-10-17'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2012-08-03','2018-12-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2005-06-16','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2001-07-18','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974/05/29','MediumDeposit','2005-06-16','2013-07-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2002-02-18','2005-07-01'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2009-04-26','2012-12-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2010-05-04','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2000-07-30','2008-09-08'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2006-12-27','2014-05-11'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2001-10-21','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2005-01-19','2006-02-06'
EXEC INSERT_ROOM_RESERVATION 'Yoga Room-CB3','Cronk','Phozer','1986/07/23','LargeDeposit','2016-11-21','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2004-04-04','2018-12-26'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','James','York','1973/02/12','MediumDeposit','2010-03-01','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Malon','Rollino','2000/12/30','MediumDeposit','2000-07-12','2004-04-04'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Malon','Rollino','2000/12/30','MediumDeposit','2006-01-03','2009-05-12'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2006-06-07','2016-12-26'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2009-12-18','2014-08-28'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Damian','Cramer','1993/01/23','PerHour','2012-12-15','2014-10-12'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Damian','Cramer','1993/01/23','PerHour','2006-04-22','2008-04-27'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Damian','Cramer','1993/01/23','PerHour','2012-03-05','2016-10-17'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Ghinko','Breadle','1999/08/18','LargeDeposit','2012-02-24','2017-11-03'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Ghinko','Breadle','1999/08/18','LargeDeposit','2010-01-19','2012-06-24'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA1','Ghinko','Breadle','1999/08/18','LargeDeposit','2000-01-21','2015-04-28'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Grinkle','Jokaniny','1996/02/12','MediumDeposit','2001-10-08','2017-09-03'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Malon','Rollino','2000/12/30','LargeDeposit','2010-10-24','2010-12-26'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Rachael','Kwink','1993/08/29','LargeDeposit','2014-09-17','2015-08-04'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Cronk','Phozer','1986/07/23','SmallDeposit','2000-01-27','2006-01-07'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Winger','Jonathiol','1995/07/13','PerHour','2012-01-24','2012-11-12'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CA3','Frank','Pfizilinger','1965/02/18','LargeDeposit','2010-05-02','2012-09-01'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Shinko','Rachana','1983/02/14','PerHour','2005-10-26','2009-05-28'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2000-07-15','2001-11-06'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Heimen','Shwier','1974/05/29','MediumDeposit','2000-01-30','2006-11-09'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Ghinko','Breadle','1999/08/18','SmallDeposit','2002-02-18','2005-07-27'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Lauren','York-Shwier','2001/04/19','LargeDeposit','2001-06-18','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Weight Room-CB2','Shitano','Kwink-Glakin','2020/04/16','SmallDeposit','2000-10-14','2002-04-30'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','George','Monaesco','1954/05/04','PerHour','2010-11-20','2014-07-05'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2001-10-21','2004-04-13'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','Fu Rong','Liu','1942/03/25','PerHour','2016-04-08','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','Kaiko','Shinkao','1997/08/10','PerHour','2006-10-22','2016-09-13'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','Gupine','Frizner','1995/10/09','PerHour','2011-01-28','2014-10-19'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA1','Rachael','Kwink','1993/08/29','MediumDeposit','2007-05-18','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','George','Monaesco','1954/05/04','PerHour','2004-09-21','2018-04-25'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Cronk','Phozer','1986/07/23','LargeDeposit','2004-08-04','2010-05-06'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Kaiko','Shinkao','1997/08/10','PerHour','2002-04-30','2009-07-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Kaiko','Shinkao','1997/08/10','PerHour','2003-02-15','2015-10-07'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2009-05-28','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2007-04-05','2008-03-09'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2003-04-05','2003-11-18'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2003-02-15','2008-09-08'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2001-11-30','2004-01-04'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Lingol','Dfinsh','1981/01/25','PerHour','2010-03-01','2015-02-15'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Lingol','Dfinsh','1981/01/25','PerHour','2011-11-29','2012-01-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA2','Lingol','Dfinsh','1981/01/25','PerHour','2008-03-12','2012-08-13'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','George','Monaesco','1954/05/04','PerHour','2008-04-01','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Heimen','Shwier','1974/05/29','LargeDeposit','2002-09-04','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Kaiko','Shinkao','1997/08/10','PerHour','2006-02-19','2015-03-01'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Kaiko','Shinkao','1997/08/10','PerHour','2006-02-06','2006-10-20'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Ghinko','Breadle','1999/08/18','MediumDeposit','2017-01-14','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Ghinko','Breadle','1999/08/18','MediumDeposit','2000-01-21','2016-10-06'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Damian','Cramer','1993/01/23','PerHour','2014-03-21','2015-05-30'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Damian','Cramer','1993/01/23','PerHour','2003-10-02','2017-01-10'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Damian','Cramer','1993/01/23','PerHour','2002-08-25','2008-04-27'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Harry','Popler','1986/03/24','LargeDeposit','2001-03-03','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Harry','Popler','1986/03/24','LargeDeposit','2006-08-15','2011-04-27'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA3','Harry','Popler','1986/03/24','LargeDeposit','2003-06-22','2004-03-06'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','Rachael','Kwink','1993/08/29','LargeDeposit','2002-07-12','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','Kaiko','Shinkao','1997/08/10','PerHour','2008-08-15','2015-07-31'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','Ghinko','Breadle','1999/08/18','SmallDeposit','2003-07-02','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','Gupine','Frizner','1995/10/09','PerHour','2005-05-08','2009-08-30'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','James','York','1973/02/12','LargeDeposit','2004-09-19','2013-01-28'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA4','Winger','Jonathiol','1995/07/13','PerHour','2000-01-29','2018-03-04'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Malon','Rollino','2000/12/30','LargeDeposit','2008-08-29','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Malon','Rollino','2000/12/30','LargeDeposit','2003-07-15','2016-10-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','James','York','1973/02/12','LargeDeposit','2014-07-17','2016-10-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','James','York','1973/02/12','LargeDeposit','2001-01-22','2003-12-09'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Thetos','Glakin','1994/10/20','SmallDeposit','2002-12-30','2010-06-10'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Thetos','Glakin','1994/10/20','SmallDeposit','2000-04-01','2017-10-31'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Thetos','Glakin','1994/10/20','SmallDeposit','2003-09-23','2011-12-01'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','George','Monaesco','1954/05/04','PerHour','2017-04-24','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','George','Monaesco','1954/05/04','PerHour','2011-04-27','2016-06-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','George','Monaesco','1954/05/04','PerHour','2002-12-30','2014-04-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Twush','Deinkoff','1995/05/16','LargeDeposit','2001-09-21','2004-06-19'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Twush','Deinkoff','1995/05/16','LargeDeposit','2000-06-23','2006-12-24'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Twush','Deinkoff','1995/05/16','LargeDeposit','2011-06-30','2013-04-21'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Twush','Deinkoff','1995/05/16','LargeDeposit','2015-02-15','2016-10-23'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2000-04-15','2013-03-22'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2008-06-23','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2007-09-05','2014-03-21'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA5','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-05-18','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','Rachael','Kwink','1993/08/29','MediumDeposit','2012-10-24','2018-06-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','Harry','Popler','1986/03/24','LargeDeposit','2002-10-04','2005-06-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','James','York','1973/02/12','LargeDeposit','2009-08-15','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','Cronk','Phozer','1986/07/23','SmallDeposit','2010-11-20','2011-04-16'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','Damian','Cramer','1993/01/23','PerHour','2001-02-25','2001-06-18'
EXEC INSERT_ROOM_RESERVATION 'Cardio Room-CA6','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-06-05','2016-07-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2002-12-11','2016-02-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2014-10-19','2015-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2012-06-06','2017-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2004-04-13','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2015-02-15','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Rachael','Kwink','1993/08/29','LargeDeposit','2004-09-06','2006-02-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2007-06-11','2008-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2004-06-09','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2002-03-02','2016-11-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2000-06-23','2013-02-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2012-11-16','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Lauren','York-Shwier','2001/04/19','LargeDeposit','2010-04-01','2016-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2013-03-22','2017-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2006-04-24','2006-06-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2000-01-30','2012-11-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2004-08-24','2013-03-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2004-12-14','2015-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2006-08-15','2010-06-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995/07/13','PerHour','2012-08-13','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2003-09-23','2018-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2010-09-04','2017-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2009-05-30','2012-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2003-06-22','2017-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2010-12-26','2015-07-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2002-09-12','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954/05/04','PerHour','2011-04-13','2015-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2002-07-12','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2004-12-06','2017-01-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2002-03-02','2002-08-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2000-11-19','2017-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2005-03-26','2010-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2013-01-28','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2006-07-05','2008-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994/10/20','LargeDeposit','2003-08-15','2011-12-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2008-06-25','2009-01-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2001-11-30','2016-12-14'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2001-01-10','2010-01-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2007-05-07','2010-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2006-04-24','2009-08-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2005-03-09','2017-02-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2000-01-21','2012-11-19'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA1','Shinko','Rachana','1983/02/14','PerHour','2007-06-11','2013-02-17'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-09-01','2016-12-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2010-01-05','2013-03-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2010-11-01','2018-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2001-11-30','2007-10-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2002-04-21','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-12-24','2006-04-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2001-08-21','2016-02-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-09-01','2004-09-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2003-08-26','2004-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Damian','Cramer','1993/01/23','PerHour','2004-04-04','2015-10-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2003-08-26','2017-08-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2005-09-24','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2005-09-01','2008-02-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2015-09-26','2018-03-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2004-08-04','2009-08-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2011-04-27','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2002-09-19','2008-04-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2009-04-22','2011-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2003-10-02','2016-11-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Ghinko','Breadle','1999/08/18','LargeDeposit','2003-09-23','2014-10-16'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2005-01-23','2005-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2000-09-28','2008-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2001-04-15','2006-01-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2014-11-02','2017-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2002-10-04','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2002-10-04','2004-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2008-04-01','2010-04-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2011-03-14','2011-06-07'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2010-04-20','2017-05-31'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2002-12-21','2013-03-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Shinko','Rachana','1983/02/14','PerHour','2002-01-06','2016-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2013-08-28','2017-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2002-05-18','2005-07-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2010-01-05','2010-06-10'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2005-01-10','2014-09-08'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2004-04-10','2004-09-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2013-03-03','2013-06-02'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2000-04-01','2017-11-03'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2002-07-12','2012-07-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2005-07-01','2010-01-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2001-05-04','2017-07-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','George','Monaesco','1954/05/04','PerHour','2007-04-03','2018-01-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2008-10-18','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2003-03-23','2003-11-18'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2010-05-02','2013-01-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2011-07-29','2015-09-26'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2016-05-23','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2012-12-15','2015-02-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2005-01-10','2016-11-01'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2000-03-03','2010-05-06'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2008-10-18','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2003-07-04','2011-06-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2009-07-23','2017-10-23'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995/07/13','PerHour','2002-09-19','2004-08-04'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2006-06-13','2016-03-13'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2008-10-06','2009-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2007-10-21','2018-04-25'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2003-09-15','2010-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2008-03-12','2012-02-27'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2008-02-11','2009-07-21'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2013-01-07','2014-05-11'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2014-10-12','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2008-01-15','2009-04-22'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2012-08-03','2012-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2003-12-09','2008-04-12'
EXEC INSERT_ROOM_RESERVATION 'Sport Room-CA2','Fu Rong','Liu','1942/03/25','PerHour','2001-04-03','2007-05-07'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2001-04-15','2011-03-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2016-06-08','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2001-01-11','2007-12-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2005-01-16','2008-06-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2014-07-05','2015-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Shitano','Kwink-Glakin','2020/04/16','MediumDeposit','2002-04-15','2006-05-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2005-06-16','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2002-09-19','2006-02-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2011-02-08','2012-11-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2013-04-21','2018-06-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2005-01-16','2018-12-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','George','Monaesco','1954/05/04','PerHour','2005-03-26','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2004-08-24','2008-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2002-07-12','2003-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2002-11-05','2011-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2000-04-14','2005-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2008-08-29','2018-10-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2008-02-11','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Fu Rong','Liu','1942/03/25','PerHour','2002-04-21','2003-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2000-07-30','2009-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2011-12-30','2013-06-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-06-19','2010-01-22'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2003-01-05','2013-06-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-04-13','2010-08-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2008-11-03','2017-07-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2012-10-19','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2002-01-06','2012-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2009-07-22','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2006-11-11','2018-02-22'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2006-02-05','2009-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2001-03-03','2018-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2001-05-04','2003-07-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2009-06-24','2013-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','Rachael','Kwink','1993/08/29','LargeDeposit','2006-04-22','2007-07-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2004-09-19','2010-07-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2008-08-15','2015-05-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2007-09-20','2012-09-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2002-10-21','2010-11-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2004-11-01','2016-12-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2011-04-07','2013-01-29'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2012-12-15','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC1','James','York','1973/02/12','LargeDeposit','2003-10-02','2011-05-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','James','York','1973/02/12','LargeDeposit','2004-12-24','2011-06-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','James','York','1973/02/12','LargeDeposit','2002-03-30','2006-12-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','James','York','1973/02/12','LargeDeposit','2012-06-06','2017-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Rulima','Hrong','1964/04/07','LargeDeposit','2002-10-04','2009-10-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Rulima','Hrong','1964/04/07','LargeDeposit','2000-07-30','2016-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Rulima','Hrong','1964/04/07','LargeDeposit','2004-06-24','2007-10-31'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Heimen','Shwier','1974/05/29','MediumDeposit','2000-07-12','2018-06-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Heimen','Shwier','1974/05/29','MediumDeposit','2001-09-02','2002-10-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Heimen','Shwier','1974/05/29','MediumDeposit','2003-10-17','2006-07-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Heimen','Shwier','1974/05/29','MediumDeposit','2004-09-26','2018-04-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Winger','Jonathiol','1995/07/13','PerHour','2002-04-21','2010-05-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Winger','Jonathiol','1995/07/13','PerHour','2007-02-14','2011-09-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Winger','Jonathiol','1995/07/13','PerHour','2009-08-30','2016-12-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Winger','Jonathiol','1995/07/13','PerHour','2001-05-09','2003-07-12'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Lingol','Dfinsh','1981/01/25','PerHour','2002-11-21','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Lingol','Dfinsh','1981/01/25','PerHour','2008-03-12','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Lingol','Dfinsh','1981/01/25','PerHour','2007-06-11','2009-06-28'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Lingol','Dfinsh','1981/01/25','PerHour','2008-04-01','2009-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Lingol','Dfinsh','1981/01/25','PerHour','2001-05-19','2002-09-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2001-08-21','2009-10-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2015-07-31','2015-08-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-11-23','2018-12-07'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-04-27','2004-09-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-CC2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2005-10-26','2012-07-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Harry','Popler','1986/03/24','MediumDeposit','2001-11-17','2002-05-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Harry','Popler','1986/03/24','MediumDeposit','2000-11-19','2003-07-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Harry','Popler','1986/03/24','MediumDeposit','2003-09-23','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2007-07-25','2008-10-10'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2000-04-15','2010-09-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2003-10-17','2014-11-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Heimen','Shwier','1974/05/29','MediumDeposit','2002-12-09','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Heimen','Shwier','1974/05/29','MediumDeposit','2004-09-03','2010-05-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Heimen','Shwier','1974/05/29','MediumDeposit','2001-08-21','2012-09-14'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Heimen','Shwier','1974/05/29','MediumDeposit','2006-12-24','2007-12-19'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2005-09-05','2007-09-05'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2000-01-30','2000-11-19'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2007-06-20','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2003-07-04','2011-02-08'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Winger','Jonathiol','1995/07/13','PerHour','2005-01-19','2017-06-13'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Winger','Jonathiol','1995/07/13','PerHour','2005-12-10','2010-05-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Winger','Jonathiol','1995/07/13','PerHour','2013-01-28','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Winger','Jonathiol','1995/07/13','PerHour','2004-11-01','2014-08-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Winger','Jonathiol','1995/07/13','PerHour','2007-10-25','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Damian','Cramer','1993/01/23','PerHour','2005-12-10','2009-06-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Damian','Cramer','1993/01/23','PerHour','2013-03-22','2013-07-27'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Damian','Cramer','1993/01/23','PerHour','2010-01-22','2012-04-15'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Damian','Cramer','1993/01/23','PerHour','2006-09-22','2007-08-19'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA1','Damian','Cramer','1993/01/23','PerHour','2006-10-05','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2000-06-23','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2011-06-30','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2009-04-26','2014-08-09'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2000-09-02','2007-05-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2014-09-23','2017-04-24'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Winger','Jonathiol','1995/07/13','PerHour','2007-07-30','2018-10-21'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2003-12-09','2005-10-26'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2003-05-18','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2000-08-20','2016-04-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2013-03-20','2014-05-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2009-07-22','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shinko','Rachana','1983/02/14','PerHour','2010-02-22','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2000-04-14','2001-03-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-11-05','2005-05-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2007-03-20','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2006-01-28','2008-06-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2013-11-16','2015-08-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2003-11-18','2006-12-24'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Frank','Pfizilinger','1965/02/18','MediumDeposit','2008-07-29','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2013-03-20','2013-04-09'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2009-08-21','2010-05-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2004-09-21','2008-02-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2007-06-20','2009-04-22'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2005-04-27','2009-05-08'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2002-01-06','2011-04-27'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Gupine','Frizner','1995/10/09','PerHour','2010-04-01','2016-10-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2005-09-05','2017-04-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2004-09-19','2005-06-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2009-03-05','2011-04-07'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2008-06-24','2012-06-12'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2009-10-09','2016-12-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2007-12-19','2011-03-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-04-21','2002-12-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2014-08-23','2018-03-05'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2007-06-15','2011-05-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2017-11-03','2018-03-05'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2003-06-22','2015-09-26'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2005-07-01','2014-11-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2005-09-24','2017-06-29'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2003-07-15','2014-08-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2000-09-28','2010-05-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2012-11-16','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Malon','Rollino','2000/12/30','MediumDeposit','2008-08-29','2011-07-29'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Ghinko','Breadle','1999/08/18','LargeDeposit','2001-09-21','2011-01-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Kaiko','Shinkao','1997/08/10','PerHour','2010-06-10','2014-01-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Kaiko','Shinkao','1997/08/10','PerHour','2002-10-18','2013-11-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Lingol','Dfinsh','1981/01/25','PerHour','2002-06-01','2009-10-09'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Lingol','Dfinsh','1981/01/25','PerHour','2008-11-03','2013-12-27'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2008-06-25','2013-11-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-06-22','2014-09-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-12-02','2004-11-01'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Rulima','Hrong','1964/04/07','SmallDeposit','2004-12-24','2006-02-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Rulima','Hrong','1964/04/07','SmallDeposit','2002-07-08','2011-06-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PA3','Rulima','Hrong','1964/04/07','SmallDeposit','2004-01-04','2013-09-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2015-08-02','2015-09-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2006-02-19','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2004-04-10','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2000-05-28','2009-09-10'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2002-03-02','2010-05-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2010-06-01','2013-02-08'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2000-01-27','2003-09-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2010-06-10','2015-08-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2002-11-15','2008-06-24'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2000-09-18','2010-08-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2005-01-09','2006-10-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Heimen','Shwier','1974/05/29','LargeDeposit','2006-05-23','2009-06-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2001-09-02','2007-10-21'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2012-10-14','2013-01-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2002-09-11','2016-04-22'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2002-07-08','2006-12-05'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2001-09-02','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2007-03-18','2014-09-13'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2010-11-18','2014-07-17'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2008-02-04','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2004-08-04','2010-09-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2006-03-31','2009-05-04'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2008-09-25','2013-09-06'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-01-03','2009-05-12'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-12-30','2015-05-12'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-07-15','2011-12-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2011-04-07','2014-09-13'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2016-04-08','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2004-04-04','2008-11-28'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2016-03-08','2018-10-21'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2001-03-19','2017-11-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2006-10-20','2012-07-09'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2012-08-03','2018-06-16'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Cronk','Phozer','1986/07/23','MediumDeposit','2008-06-25','2011-06-30'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2014-10-16','2015-12-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2010-03-01','2015-05-12'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2012-10-29','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2010-11-01','2014-12-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2001-05-09','2006-07-05'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2000-12-01','2012-07-14'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-10-04','2003-09-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PB1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2013-11-11','2018-12-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','Thetos','Glakin','1994/10/20','LargeDeposit','2003-10-02','2013-06-02'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2006-10-05','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2012-09-04','2017-10-23'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','Winger','Jonathiol','1995/07/13','PerHour','2001-12-01','2012-07-18'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','James','York','1973/02/12','MediumDeposit','2012-09-01','2012-10-24'
EXEC INSERT_ROOM_RESERVATION 'Pool-PC1','George','Monaesco','1954/05/04','PerHour','2002-02-18','2018-04-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Lingol','Dfinsh','1981/01/25','PerHour','2003-08-22','2010-07-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','James','York','1973/02/12','LargeDeposit','2002-12-03','2007-02-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Fu Rong','Liu','1942/03/25','PerHour','2017-09-03','2018-08-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Fu Rong','Liu','1942/03/25','PerHour','2005-01-09','2017-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Thetos','Glakin','1994/10/20','SmallDeposit','2011-09-28','2017-04-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Thetos','Glakin','1994/10/20','SmallDeposit','2002-04-15','2015-12-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shinko','Rachana','1983/02/14','PerHour','2011-12-01','2013-07-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shinko','Rachana','1983/02/14','PerHour','2007-12-19','2017-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shinko','Rachana','1983/02/14','PerHour','2002-09-11','2005-11-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-06-05','2018-09-28'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2007-09-17','2009-10-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA1','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2009-08-17','2016-12-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2002-11-05','2002-11-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2001-04-05','2004-12-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2014-04-21','2015-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2013-03-20','2014-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2006-12-27','2008-10-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-11-05','2007-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2009-08-15','2011-09-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2016-12-26','2018-12-07'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-01-09','2012-06-12'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2002-05-18','2007-05-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2000-01-27','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2007-02-05','2016-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2000-11-15','2015-03-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2016-04-29','2018-08-28'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2007-07-07','2018-11-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','George','Monaesco','1954/05/04','PerHour','2002-11-05','2002-12-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2003-06-22','2007-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2002-05-18','2009-03-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2002-10-04','2010-08-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2006-06-11','2011-09-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2010-02-22','2010-05-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Gupine','Frizner','1995/10/09','PerHour','2011-08-11','2012-08-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2011-05-01','2018-01-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2002-03-02','2014-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2009-06-28','2012-12-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2009-08-30','2015-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2013-07-11','2014-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2011-06-04','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Twush','Deinkoff','1995/05/16','LargeDeposit','2007-02-15','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2007-08-08','2015-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2002-05-07','2016-07-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2002-01-09','2017-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2009-06-18','2017-05-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2005-12-10','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2003-08-26','2008-08-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA2','Dawen','Kwink-Glakin','2020/04/16','MediumDeposit','2009-03-05','2013-02-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2006-08-15','2008-08-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2001-11-17','2009-05-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2008-11-28','2010-05-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2003-08-22','2004-12-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2006-10-20','2012-07-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2001-06-15','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2009-12-05','2017-01-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2005-03-31','2016-11-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2016-02-13','2016-10-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2008-09-25','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2003-01-14','2014-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Lauren','York-Shwier','2001/04/19','LargeDeposit','2008-09-03','2018-03-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2007-09-05','2015-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2000-01-29','2012-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2001-01-10','2012-11-12'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2002-06-01','2014-09-25'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2010-02-22','2018-11-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2006-07-01','2006-09-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Cronk','Phozer','1986/07/23','LargeDeposit','2002-09-19','2011-05-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2011-04-13','2014-09-25'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2016-03-18','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2002-04-15','2012-09-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2010-09-20','2018-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2002-04-08','2012-01-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2018-06-16','2018-12-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Rachael','Kwink','1993/08/29','LargeDeposit','2017-10-02','2017-11-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2015-03-01','2015-08-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2016-12-26','2018-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2004-04-08','2015-08-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2002-09-30','2007-05-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2002-03-08','2017-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2003-07-15','2015-05-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2002-10-18','2016-12-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','James','York','1973/02/12','LargeDeposit','2007-08-19','2017-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2003-04-22','2008-02-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2007-10-08','2013-01-28'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2011-09-28','2016-12-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2004-04-04','2016-11-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2002-09-11','2009-01-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2006-12-05','2018-06-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2006-05-23','2013-01-07'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA3','Heimen','Shwier','1974/05/29','SmallDeposit','2002-01-28','2015-08-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Thetos','Glakin','1994/10/20','LargeDeposit','2004-04-08','2013-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Thetos','Glakin','1994/10/20','LargeDeposit','2002-07-12','2012-04-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Thetos','Glakin','1994/10/20','LargeDeposit','2001-06-15','2008-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2008-04-01','2018-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-09-23','2013-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Twush','Deinkoff','1995/05/16','MediumDeposit','2009-03-05','2017-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Frank','Pfizilinger','1965/02/18','LargeDeposit','2003-08-22','2008-01-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Frank','Pfizilinger','1965/02/18','LargeDeposit','2011-03-14','2016-02-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Frank','Pfizilinger','1965/02/18','LargeDeposit','2005-03-09','2010-06-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Frank','Pfizilinger','1965/02/18','LargeDeposit','2003-07-06','2012-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','James','York','1973/02/12','MediumDeposit','2001-05-04','2009-06-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','James','York','1973/02/12','MediumDeposit','2002-10-21','2017-09-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','James','York','1973/02/12','MediumDeposit','2002-05-18','2012-11-12'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','James','York','1973/02/12','MediumDeposit','2004-11-30','2017-07-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Gupine','Frizner','1995/10/09','PerHour','2008-10-10','2016-05-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Gupine','Frizner','1995/10/09','PerHour','2010-04-02','2017-11-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Gupine','Frizner','1995/10/09','PerHour','2015-12-18','2018-02-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Gupine','Frizner','1995/10/09','PerHour','2002-09-11','2008-10-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Gupine','Frizner','1995/10/09','PerHour','2011-01-02','2012-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Cronk','Phozer','1986/07/23','LargeDeposit','2001-06-15','2016-01-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Cronk','Phozer','1986/07/23','LargeDeposit','2000-01-29','2014-10-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Cronk','Phozer','1986/07/23','LargeDeposit','2006-07-15','2016-07-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Cronk','Phozer','1986/07/23','LargeDeposit','2013-10-01','2015-01-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PA4','Cronk','Phozer','1986/07/23','LargeDeposit','2004-04-10','2007-07-25'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2000-03-03','2010-11-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Grinkle','Jokaniny','1996/02/12','LargeDeposit','2002-12-03','2010-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2002-10-04','2017-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Thetos','Glakin','1994/10/20','LargeDeposit','2007-08-08','2010-04-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Cronk','Phozer','1986/07/23','LargeDeposit','2001-12-01','2003-09-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Cronk','Phozer','1986/07/23','LargeDeposit','2010-08-02','2011-11-29'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Cronk','Phozer','1986/07/23','LargeDeposit','2006-12-05','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Lingol','Dfinsh','1981/01/25','PerHour','2005-01-19','2017-11-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Lingol','Dfinsh','1981/01/25','PerHour','2009-11-30','2016-08-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Lingol','Dfinsh','1981/01/25','PerHour','2001-06-04','2007-09-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Rachael','Kwink','1993/08/29','LargeDeposit','2012-11-19','2016-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Rachael','Kwink','1993/08/29','LargeDeposit','2000-01-27','2005-09-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Rachael','Kwink','1993/08/29','LargeDeposit','2002-01-28','2008-06-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Rachael','Kwink','1993/08/29','LargeDeposit','2011-07-29','2017-11-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2017-06-29','2018-12-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2010-09-04','2015-07-22'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-12-14','2007-09-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB1','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2012-10-24','2013-09-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Harry','Popler','1986/03/24','LargeDeposit','2005-05-08','2017-03-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Harry','Popler','1986/03/24','LargeDeposit','2010-04-02','2018-10-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Thetos','Glakin','1994/10/20','LargeDeposit','2013-09-03','2014-02-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Thetos','Glakin','1994/10/20','LargeDeposit','2005-05-23','2009-06-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2006-12-05','2018-02-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2008-03-09','2010-11-20'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Shitano','Kwink-Glakin','2020/04/16','LargeDeposit','2004-06-28','2018-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2002-11-06','2013-02-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2004-05-16','2009-06-28'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Dawen','Kwink-Glakin','2020/04/16','LargeDeposit','2012-06-06','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Lingol','Dfinsh','1981/01/25','PerHour','2004-04-04','2006-03-31'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Lingol','Dfinsh','1981/01/25','PerHour','2001-01-10','2017-05-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Lingol','Dfinsh','1981/01/25','PerHour','2002-01-28','2012-06-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','Lingol','Dfinsh','1981/01/25','PerHour','2009-05-08','2018-12-26'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','James','York','1973/02/12','LargeDeposit','2001-11-06','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','James','York','1973/02/12','LargeDeposit','2007-10-31','2015-11-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','James','York','1973/02/12','LargeDeposit','2016-10-06','2016-11-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PB2','James','York','1973/02/12','LargeDeposit','2001-11-17','2014-01-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2010-08-03','2017-01-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2012-08-25','2018-12-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2000-11-19','2003-07-12'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2007-02-05','2011-04-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2012-10-24','2017-04-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2001-06-15','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2013-04-27','2014-03-01'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2011-07-29','2013-04-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Rulima','Hrong','1964/04/07','MediumDeposit','2009-07-21','2014-02-25'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2006-01-07','2009-01-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2013-12-27','2016-12-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2010-12-26','2011-03-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2002-12-09','2014-11-02'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2004-09-21','2005-09-10'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2006-12-24','2007-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2001-05-04','2014-01-24'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2017-09-22','2018-10-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','James','York','1973/02/12','LargeDeposit','2001-01-22','2006-01-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2011-09-26','2013-02-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-04-15','2003-02-15'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2015-05-30','2017-05-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-10-04','2016-05-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2016-03-08','2017-05-21'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2010-05-06','2012-11-19'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-12-09','2014-09-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2002-06-05','2017-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2009-08-14','2012-07-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Frank','Pfizilinger','1965/02/18','MediumDeposit','2013-03-03','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2016-07-02','2018-12-13'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2008-10-10','2016-05-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2008-02-11','2017-09-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2014-02-25','2014-10-03'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2014-10-02','2016-12-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2005-03-26','2005-06-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2011-06-30','2014-10-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2012-10-06','2014-08-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2000-06-22','2009-01-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Malon','Rollino','2000/12/30','LargeDeposit','2007-06-15','2009-11-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2001-09-02','2015-05-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-10-05','2015-07-17'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2009-08-15','2010-11-18'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2002-03-30','2002-10-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2006-06-07','2006-11-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2006-12-24','2017-12-05'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2004-01-17','2012-01-23'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2003-03-23','2008-02-04'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2000-09-18','2016-10-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2009-01-09','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','Twush','Deinkoff','1995/05/16','MediumDeposit','2005-05-08','2017-02-09'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2007-05-18','2018-12-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2008-04-01','2013-09-06'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2012-11-16','2016-12-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2015-04-28','2018-06-16'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2004-09-06','2011-03-14'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2010-05-04','2013-07-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2005-11-09','2009-05-30'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2002-01-23','2007-08-11'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2008-02-11','2013-04-27'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2006-09-12','2009-05-08'
EXEC INSERT_ROOM_RESERVATION 'Sauna-PC1','George','Monaesco','1954/05/04','PerHour','2003-09-23','2013-02-17'

-- populate tblCLASS_ROOM_RESERVATION
-- SELECT RM.RoomName,C.ClientFirstName,C.ClientLastName,C.ClientBirthDate,
--        FP.FeePlanName,RM_R.RoomReservationStartDate,RM_R.RoomReservationEndDate
-- FROM tblCLIENT C
--     JOIN tblROOM_RESERVATION RM_R ON C.ClientID = RM_R.ClientID
--     JOIN tblROOM RM ON RM_R.RoomID = RM.RoomID
--     JOIN tblFEE_PLAN FP ON FP.FeePlanID = RM_R.FeePlanID
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Frank','Pfizilinger','1965-02-18','MediumDeposit','2006-10-02','2009-05-30','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA3','James','York','1973-02-12','MediumDeposit','2001-11-30','2012-01-14','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996-02-12','LargeDeposit','2000-06-23','2004-01-08','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Twush','Deinkoff','1995-05-16','LargeDeposit','2007-02-15','2013-02-08','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000-12-30','LargeDeposit','2011-12-30','2017-05-13','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA3','Rulima','Hrong','1964-04-07','LargeDeposit','2012-10-29','2016-11-12','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB1','Kaiko','Shinkao','1997-08-10','PerHour','2002-03-08','2012-02-02','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB1','Frank','Pfizilinger','1965-02-18','LargeDeposit','2004-11-01','2017-06-29','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA5','Grinkle','Jokaniny','1996-02-12','SmallDeposit','2006-06-07','2006-07-15','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993-01-23','PerHour','2002-10-04','2009-07-21','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','George','Monaesco','1954-05-04','PerHour','2000-01-29','2005-09-24','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993-01-23','PerHour','2004-08-04','2009-01-27','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020-04-16','MediumDeposit','2010-09-28','2017-02-13','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000-12-30','LargeDeposit','2001-02-25','2016-06-15','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA5','Shinko','Rachana','1983-02-14','PerHour','2009-09-10','2009-12-18','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA4','Kaiko','Shinkao','1997-08-10','PerHour','2002-01-09','2007-02-15','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Heimen','Shwier','1974-05-29','MediumDeposit','2016-06-15','2017-01-14','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Grinkle','Jokaniny','1996-02-12','LargeDeposit','2010-03-01','2018-03-01','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Detna','Larry','1942-06-17','LargeDeposit','2012-08-03','2014-02-27','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942-03-25','PerHour','2003-03-23','2008-02-18','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','James','York','1973-02-12','LargeDeposit','2005-01-23','2015-11-30','Beginner Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942-03-25','PerHour','2004-12-27','2016-02-26','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Shinko','Rachana','1983-02-14','PerHour','2009-12-29','2013-11-11','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Shitano','Kwink-Glakin','2020-04-16','MediumDeposit','2012-03-05','2017-08-25','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA5','Grinkle','Jokaniny','1996-02-12','SmallDeposit','2002-06-01','2002-12-30','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954-05-04','PerHour','2003-07-12','2012-10-19','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB1','Gupine','Frizner','1995-10-09','PerHour','2017-08-07','2018-01-06','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB1','Gupine','Frizner','1995-10-09','PerHour','2000-01-03','2017-02-06','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Damian','Cramer','1993-01-23','PerHour','2003-09-23','2012-02-17','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Harry','Popler','1986-03-24','LargeDeposit','2014-10-12','2016-07-31','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993-01-23','PerHour','2007-09-05','2009-12-18','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001-04-19','LargeDeposit','2007-07-07','2011-08-28','Intermediate Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974-05-29','LargeDeposit','2002-12-30','2010-12-26','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA2','Damian','Cramer','1993-01-23','PerHour','2003-07-04','2007-10-21','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000-12-30','LargeDeposit','2000-09-02','2016-07-31','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Lauren','York-Shwier','2001-04-19','LargeDeposit','2000-04-01','2004-12-27','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Kaiko','Shinkao','1997-08-10','PerHour','2012-06-12','2016-04-08','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB1','James','York','1973-02-12','SmallDeposit','2002-10-04','2012-12-15','Advanced Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Fu Rong','Liu','1942-03-25','PerHour','2012-06-12','2018-03-04','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','George','Monaesco','1954-05-04','PerHour','2010-06-10','2014-01-16','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB3','Malon','Rollino','2000-12-30','LargeDeposit','2011-10-30','2015-11-11','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA1','Thetos','Glakin','1994-10-20','LargeDeposit','2008-04-12','2018-12-26','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CA5','Lingol','Dfinsh','1981-01-25','PerHour','2004-12-06','2012-10-24','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Yoga Room-CB2','Heimen','Shwier','1974-05-29','LargeDeposit','2006-06-21','2006-07-15','Hot Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Weight Room-CB2','Ghinko','Breadle','1999-08-18','SmallDeposit','2002-02-18','2005-07-27','Bodyweight HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Weight Room-CA3','Rachael','Kwink','1993-08-29','LargeDeposit','2014-09-17','2015-08-04','Bodyweight HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Weight Room-CA1','James','York','1973-02-12','MediumDeposit','2010-03-01','2015-09-17','Strength Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Weight Room-CA3','Cronk','Phozer','1986-07-23','SmallDeposit','2000-01-27','2006-01-07','Strength Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Weight Room-CA1','Damian','Cramer','1993-01-23','PerHour','2012-12-15','2014-10-12','Strength Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020-04-16','LargeDeposit','2002-09-11','2016-04-22','Aqua Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Pool-PB1','Dawen','Kwink-Glakin','2020-04-16','LargeDeposit','2012-10-14','2013-01-28','Aqua Yoga'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981-01-25','PerHour','2006-01-28','2009-06-24','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964-04-07','LargeDeposit','2006-06-11','2015-09-28','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983-02-14','PerHour','2010-09-28','2012-01-24','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB2','Harry','Popler','1986-03-24','MediumDeposit','2003-01-14','2017-02-09','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Shitano','Kwink-Glakin','2020-04-16','MediumDeposit','2002-12-03','2011-05-01','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA1','Thetos','Glakin','1994-10-20','LargeDeposit','2006-07-05','2008-01-15','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986-07-23','LargeDeposit','2002-12-09','2018-06-03','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Twush','Deinkoff','1995-05-16','MediumDeposit','2005-06-05','2015-08-11','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981-01-25','PerHour','2002-10-18','2010-04-02','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001-04-19','LargeDeposit','2005-01-16','2013-01-29','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Ghinko','Breadle','1999-08-18','LargeDeposit','2002-07-12','2017-08-05','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA1','George','Monaesco','1954-05-04','PerHour','2011-04-13','2015-04-02','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','James','York','1973-02-12','MediumDeposit','2001-01-10','2005-03-14','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942-06-17','MediumDeposit','2003-07-15','2009-07-22','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lauren','York-Shwier','2001-04-19','LargeDeposit','2006-02-18','2006-06-21','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983-02-14','PerHour','2007-04-05','2010-02-02','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','Harry','Popler','1986-03-24','MediumDeposit','2002-05-30','2009-08-30','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Twush','Deinkoff','1995-05-16','LargeDeposit','2010-04-04','2013-04-21','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993-08-29','LargeDeposit','2006-08-15','2010-01-19','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Rulima','Hrong','1964-04-07','LargeDeposit','2000-11-15','2017-10-23','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB5','James','York','1973-02-12','LargeDeposit','2008-06-23','2010-06-10','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999-08-18','LargeDeposit','2000-03-25','2006-10-05','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981-01-25','PerHour','2011-06-30','2011-09-19','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995-07-13','PerHour','2002-09-19','2004-08-04','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995-07-13','PerHour','2011-07-29','2015-09-26','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA1','Winger','Jonathiol','1995-07-13','PerHour','2006-04-24','2006-06-13','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Grinkle','Jokaniny','1996-02-12','MediumDeposit','2011-06-30','2013-03-03','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','Shinko','Rachana','1983-02-14','PerHour','2002-01-24','2004-01-17','Sport-Based Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','Cronk','Phozer','1986-07-23','LargeDeposit','2000-11-19','2005-09-05','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB5','Ghinko','Breadle','1999-08-18','LargeDeposit','2000-10-14','2016-05-27','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Lingol','Dfinsh','1981-01-25','PerHour','2009-05-08','2012-06-19','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA4','Twush','Deinkoff','1995-05-16','MediumDeposit','2002-08-09','2007-09-20','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Shinko','Rachana','1983-02-14','PerHour','2006-09-04','2014-10-19','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995-05-16','MediumDeposit','2002-03-08','2009-10-23','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GC2','Grinkle','Jokaniny','1996-02-12','LargeDeposit','2007-08-19','2015-05-12','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA1','Heimen','Shwier','1974-05-29','LargeDeposit','2008-02-04','2014-01-16','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Heimen','Shwier','1974-05-29','LargeDeposit','2002-09-19','2004-12-25','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GC1','Lingol','Dfinsh','1981-01-25','PerHour','2000-07-15','2015-11-11','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA3','Lingol','Dfinsh','1981-01-25','PerHour','2009-06-18','2012-06-06','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB3','Cronk','Phozer','1986-07-23','SmallDeposit','2015-01-14','2015-09-28','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GC2','Frank','Pfizilinger','1965-02-18','LargeDeposit','2002-10-08','2016-08-30','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','Detna','Larry','1942-06-17','MediumDeposit','2001-01-13','2010-04-02','General Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-CA2','Winger','Jonathiol','1995-07-13','PerHour','2008-10-18','2017-06-29','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA4','Rachael','Kwink','1993-08-29','LargeDeposit','2014-09-23','2018-04-06','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB1','Twush','Deinkoff','1995-05-16','MediumDeposit','2001-05-04','2014-08-23','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GA2','James','York','1973-02-12','LargeDeposit','2009-12-18','2011-11-29','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GB3','Shitano','Kwink-Glakin','2020-04-16','SmallDeposit','2005-07-01','2018-04-14','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Sport Room-GC1','Rachael','Kwink','1993-08-29','SmallDeposit','2007-04-03','2008-06-23','Self-Defense Kickboxing'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA2','Lingol','Dfinsh','1981-01-25','PerHour','2011-11-29','2012-01-23','Cardio Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA5','Thetos','Glakin','1994-10-20','SmallDeposit','2000-04-01','2017-10-31','Cardio Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-RB2','Damian','Cramer','1993-01-23','PerHour','2018-10-01','2018-12-02','Cardio Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA6','Ghinko','Breadle','1999-08-18','LargeDeposit','2002-06-05','2016-07-02','Cardio Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA2','Lingol','Dfinsh','1981-01-25','PerHour','2010-03-01','2015-02-15','Cardio Circuit'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-RB2','Damian','Cramer','1993-01-23','PerHour','2001-04-12','2004-09-06','Aerobic-Spin HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA2','Kaiko','Shinkao','1997-08-10','PerHour','2003-02-15','2015-10-07','Aerobic-Spin HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA1','Frank','Pfizilinger','1965-02-18','MediumDeposit','2001-10-21','2004-04-13','Aerobic-Spin HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA3','Harry','Popler','1986-03-24','LargeDeposit','2006-08-15','2011-04-27','Aerobic-Spin HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-RB1','Twush','Deinkoff','1995-05-16','LargeDeposit','2009-12-29','2013-04-21','Aerobic-Spin HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA5','Twush','Deinkoff','1995-05-16','LargeDeposit','2000-06-23','2006-12-24','Aerobic-Track HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-RB1','James','York','1973-02-12','MediumDeposit','2007-08-19','2012-07-14','Aerobic-Track HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-RB2','Heimen','Shwier','1974-05-29','LargeDeposit','2011-09-02','2017-11-04','Aerobic-Track HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA6','James','York','1973-02-12','LargeDeposit','2009-08-15','2016-11-21','Aerobic-Track HIIT'
EXEC INSERT_CLASS_ROOM_RESERVATION 'Cardio Room-CA2','Twush','Deinkoff','1995-05-16','LargeDeposit','2003-04-05','2003-11-18','Aerobic-Track HIIT'

-- populate tblEQUIPMENT
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RA1', 'RA1:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB1', 'RB1:CR-C:Track-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB1', 'RB1:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB1', 'RB1:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB2', 'RB2:CR-C:Track-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB2', 'RB2:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB2', 'RB2:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB3', 'RB3:CR-C:Track-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB3', 'RB3:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-RB3', 'RB3:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA1', 'CA1:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA2', 'CA2:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA3', 'CA3:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA4', 'CA4:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA5', 'CA5:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Elliptical-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-7', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-8', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-9', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Treadmill-10', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-2', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-3', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-4', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-5', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Exercise Bike-6', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Stair Stepper-1', NULL
EXEC INSERT_EQUIPMENT 'Cardio', 'Cardio Room-CA6', 'CA6:CR-C:Stair Stepper-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA1', 'GA1:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA2', 'GA2:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA3', 'GA3:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GA4', 'GA4:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB1', 'GB1:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB2', 'GB2:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB3', 'GB3:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB4', 'GB4:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB5', 'GB5:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racquetball-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racquetball-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racquetball-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racquetball-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Racuqetball-ball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-ball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-ball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-ball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GB6', 'GB6:SR-SP:Squash-ball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Chalk-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-11', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-12', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-13', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-14', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-15', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-16', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-17', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-18', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-19', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Foot-gear-20', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC1', 'GC1:SR-SP:Harness-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Chalk-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-11', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-12', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-13', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-14', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-15', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-16', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-17', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-18', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-19', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Foot-gear-20', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-GC2', 'GC2:SR-SP:Harness-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA1', 'CA1:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Basketball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Volleyball-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-racket-10', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-1', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-2', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-3', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-4', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-5', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-6', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-7', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-8', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-9', NULL
EXEC INSERT_EQUIPMENT 'Sport', 'Sport Room-CA2', 'CA2:SR-SP:Badminton-10', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA1', 'CA1:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA1', 'CA1:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA1', 'CA1:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA2', 'CA2:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA2', 'CA2:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA2', 'CA2:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA3', 'CA3:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA3', 'CA3:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA3', 'CA3:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA4', 'CA4:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA4', 'CA4:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA4', 'CA4:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA5', 'CA5:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA5', 'CA5:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CA5', 'CA5:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-6', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-7', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-8', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-9', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-mat-10', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Foam-cushion-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Foam-cushion-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Foam-cushion-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Foam-cushion-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-block-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-block-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-block-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-block-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB1', 'CB1:YR-ST:Yoga-block-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-6', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-7', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-8', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-9', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-mat-10', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Foam-cushion-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Foam-cushion-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Foam-cushion-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Foam-cushion-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-block-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-block-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-block-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-block-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB2', 'CB2:YR-ST:Yoga-block-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-6', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-7', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-8', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-9', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-mat-10', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Foam-cushion-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Foam-cushion-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Foam-cushion-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Foam-cushion-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Foam-cushion-5', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-block-1', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-block-2', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-block-3', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-block-4', NULL
EXEC INSERT_EQUIPMENT 'Stretching', 'Yoga Room-CB3', 'CB3:YR-ST:Yoga-block-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA1', 'CA1:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA1', 'CA1:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA2', 'CA2:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA2', 'CA2:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CA3', 'CA3:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CA3', 'CA3:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB1', 'CB1:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB1', 'CB1:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Leg-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Leg-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Arm-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Arm-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Back-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB1', 'CB1:WR-WM:Back-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB2', 'CB2:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB2', 'CB2:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Leg-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Leg-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Arm-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Arm-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Back-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB2', 'CB2:WR-WM:Back-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-10lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-20lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-30lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-40lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-50lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-11', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-12', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-13', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-14', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-15', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-16', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-17', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-18', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-19', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Dumbbell-60lb-20', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-40lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-50lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-3', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-4', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-5', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-6', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-7', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-8', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-9', NULL
EXEC INSERT_EQUIPMENT 'Weight-Freehand', 'Weight Room-CB3', 'CB3:WR-WF:Medicine-ball-60lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-45lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-45lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Base-bar-45lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-5lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-10lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-15lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-20lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-25lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-30lb-10', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-1', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-2', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-3', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-4', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-5', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-6', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-7', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-8', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-9', NULL
EXEC INSERT_EQUIPMENT 'Bench Press', 'Weight Room-CB3', 'CB3:WR-BP:Weight-35lb-10', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Leg-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Leg-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Arm-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Arm-press-2', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Back-press-1', NULL
EXEC INSERT_EQUIPMENT 'Weight-Machine', 'Weight Room-CB3', 'CB3:WR-WM:Back-press-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Kickboard-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Kickboard-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Kickboard-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Kickboard-4', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Kickboard-5', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Flippers-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Flippers-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Flippers-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Pull-buoy-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA1', 'PA1:PL-P:Pull-buoy-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Kickboard-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Kickboard-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Kickboard-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Kickboard-4', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Kickboard-5', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Flippers-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Flippers-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Flippers-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Pull-buoy-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA2', 'PA2:PL-P:Pull-buoy-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Kickboard-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Kickboard-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Kickboard-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Kickboard-4', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Kickboard-5', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Flippers-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Flippers-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Flippers-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Pull-buoy-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PA3', 'PA3:PL-P:Pull-buoy-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PB1', 'PB1:PL-P:Flippers-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PB1', 'PB1:PL-P:Flippers-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PB1', 'PB1:PL-P:Snorkel-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PB1', 'PB1:PL-P:Snorkel-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PB1', 'PB1:PL-P:Dive-equipment-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-4', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-5', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-6', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-7', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-8', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-9', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Kickboard-10', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Flippers-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Flippers-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Flippers-3', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Flippers-4', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Flippers-5', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Pull-buoy-1', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Pull-buoy-2', NULL
EXEC INSERT_EQUIPMENT 'Pool', 'Pool-PC1', 'PC1:PL-P:Pull-buoy-3', NULL
