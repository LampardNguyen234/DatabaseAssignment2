--------------------------------------------------------
--  File created - Tuesday-May-09-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger BEFORE_CUOC_PT_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SYSTEM"."BEFORE_CUOC_PT_INSERT" 
AFTER INSERT OR UPDATE ON CUOC_PT_DIEN_RA
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
    pragma autonomous_transaction;

     dCount INT;
     cCount INT;
     mBAT_DAU TIMESTAMP;
     mTHOI_GIAN INT;
BEGIN
  SELECT BAT_DAU
  INTO mBAT_DAU
  FROM CUOC_PHAU_THUAT
  WHERE MA_CUOC_PT = :NEW.MA_CUOC_PT AND MA_DOT = :NEW.MA_DOT AND MA_BN = :NEW.MA_BN;

  SELECT THOI_GIAN
  INTO mTHOI_GIAN
  FROM CUOC_PHAU_THUAT
  WHERE MA_CUOC_PT = :NEW.MA_CUOC_PT AND MA_DOT = :NEW.MA_DOT AND MA_BN = :NEW.MA_BN;

  SELECT COUNT(*)
  INTO dCount
  FROM CUOC_PT_DIEN_RA mA , CUOC_PHAU_THUAT mB
  WHERE mA.MA_CUOC_PT = mB.MA_CUOC_PT AND mA.MA_PHONG = :NEW.MA_PHONG AND mA.MA_KHU = :NEW.MA_KHU AND (mBAT_DAU >mB.BAT_DAU AND (mBAT_DAU)<(mB.BAT_DAU+mB.THOI_GIAN/24)); 

  SELECT COUNT(*)
  INTO cCount
  FROM CUOC_PT_DIEN_RA mA , CUOC_PHAU_THUAT mB
  WHERE mA.MA_CUOC_PT = mB.MA_CUOC_PT AND mA.MA_PHONG = :NEW.MA_PHONG AND mA.MA_KHU = :NEW.MA_KHU AND ((mBAT_DAU+mTHOI_GIAN/24) >mB.BAT_DAU AND (mBAT_DAU+mTHOI_GIAN/24)<(mB.BAT_DAU+mB.THOI_GIAN/24));

  IF(dCount > 0 or cCount >0) THEN
         RAISE_APPLICATION_ERROR (-20500,'PHONG PHAU THUAT KHONG TRONG');
         --INSERT INTO LOG_CUOC_PT_DIEN_RA
         --VALUES(:NEW.MA_CUOC_PT,:NEW.MA_BN,:NEW.MA_CA, :NEW.MA_PHONG, :NEW.MA_KHU);
  END IF;


END;
/
ALTER TRIGGER "SYSTEM"."BEFORE_CUOC_PT_INSERT" ENABLE;
