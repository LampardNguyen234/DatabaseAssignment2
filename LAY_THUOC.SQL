--------------------------------------------------------
--  File created - Monday-May-08-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function LAY_THUOC
--------------------------------------------------------
--INPUT : LAY_THUOC ( mMA_CA IN VARCHAR2, mMA_PHONG IN VARCHAR2, mMA_KHU IN VARCHAR2 ,mMA_NV IN VARCHAR2 )
--OUTPUT: MA_THUOC , MA_BN, LIEU_DUNG
  CREATE OR REPLACE FUNCTION "SYSTEM"."LAY_THUOC" ( mMA_CA IN VARCHAR2, mMA_PHONG IN VARCHAR2, mMA_KHU IN VARCHAR2 ,mMA_NV IN VARCHAR2 )
  RETURN SYS_REFCURSOR
IS
  l_rc SYS_REFCURSOR;
  mBEGIN TIMESTAMP;
  mEND TIMESTAMP;
BEGIN
  SELECT BAT_DAU ,KET_THUC
  INTO mBEGIN , mEND
  FROM CA_PHONG_NGHI
  WHERE MA_CA = mMA_CA AND MA_PHONG = mMA_PHONG AND MA_KHU = mMA_KHU;


  OPEN l_rc
   FOR SELECT mA.MA_THUOC , mA.MA_BN , mA.LIEU_DUNG
         FROM (SELECT mC.MA_DOT, mC.MA_THUOC, mC.MA_BN, mC.LIEU_DUNG FROM KE_THUOC_NOI_TRU mC , GIUONG mD WHERE mD.MA_BN_DANG_NAM = mC.MA_BN AND mD.MA_PHONG = mMA_PHONG AND mD.MA_KHU = mMA_KHU ) mA , DOT_DIEU_TRI mB
         WHERE mA.MA_DOT = mB.MA_DOT AND mBEGIN > mB.BAT_DAU AND mBEGIN < mB.KET_THUC;
  RETURN l_rc;
END;

/
