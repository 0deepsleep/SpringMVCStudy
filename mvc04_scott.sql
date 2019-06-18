SELECT USER
FROM DUAL;
--==>> SCOTT


--¡Û ½Ç½À Å×ÀÌºí »ý¼º(Áö¿ª : REGION)
CREATE TABLE REGION
( REGIONID     NUMBER          -- Áö¿ª ¾ÆÀÌµð -- PK
, REGIONNAME    VARCHAR2(30)    -- Áö¿ª ¸í
, CONSTRAINT REGION_ID_PK PRIMARY KEY(REGIONID)
);
--==>> Table REGIONÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


--¡Û ½ÃÄö½º »ý¼º(Áö¿ª : REGIONSEQ)
CREATE SEQUENCE REGIONSEQ
NOCACHE;
--==>> Sequence REGIONSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


--¡Û µ¥ÀÌÅÍ ÀÔ·Â(Áö¿ª µ¥ÀÌÅÍ ÀÔ·Â)
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '¼­¿ï');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '°æ±â');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, 'ÀÎÃµ');
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù. * 3

--¡Û µ¥ÀÌÅÍ ÀÔ·Â(Áö¿ª µ¥ÀÌÅÍ Ãß°¡ ÀÔ·Â)
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, 'Á¦ÁÖ');
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù.

--¡Û È®ÀÎ
SELECT REGIONID, REGIONNAME
FROM REGION;
--> ÇÑ ÁÙ ±¸¼º
SELECT REGIONID, REGIONNAME FROM REGION
;

--¡Û Ä¿¹Ô
COMMIT;
--==>> Ä¿¹Ô ¿Ï·á.


--¡Û ½Ç½À Å×ÀÌºí »ý¼º(Á÷À§ : POSITION)
CREATE TABLE POSITION
( POSITIONID    NUMBER          -- Á÷À§ ¾ÆÀÌµð -- PK
, POSITIONNAME  VARCHAR2(30)    -- Á÷À§ ¸í 
, MINBASICPAY   NUMBER          -- ÃÖ¼Ò ±âº»±Þ
, CONSTRAINT POSITION_ID_PK PRIMARY KEY(POSITIONID)
);
--==>> Table POSITIONÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û ½ÃÄö½º »ý¼º(Á÷À§ : POSTIONSEQ)
CREATE SEQUENCE POSITIONSEQ
NOCACHE;
--==>> Sequence POSITIONSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


--¡Û µ¥ÀÌÅÍ ÀÔ·Â(Á÷À§ µ¥ÀÌÅÍ ÀÔ·Â)
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '»ç¿ø', '1000000'); --¹é¸¸
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '´ë¸®', '2000000'); --ÀÌ¹é¸¸
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, 'ºÎÀå', '300000'); --»ï¹é¸¸
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù. * 3


--¡Û µ¥ÀÌÅÍ ÀÔ·Â(Á÷À§ µ¥ÀÌÅÍ Ãß°¡ ÀÔ·Â)
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '»ó¹«', 4000000); --»ç¹é¸¸

--¡Û È®ÀÎ
SELECT POSITIONID, POSITIONNAME, MINBASICPAY 
FROM POSITION;
--> ÇÑ ÁÙ ±¸¼º 
SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK FROM POSITIONVIEW ORDER BY POSITIONID
;

--UPDATE POSITION
--SET MINBASICPAY=4000000
--WHERE POSITIONID=4;

--¡Û Ä¿¹Ô
COMMIT;


--¡Û ½Ç½À Å×ÀÌºí »ý¼º(ºÎ¼­ : DEPARTMENT)
CREATE TABLE DEPARTMENT
( DEPARTMENTID      NUMBER          -- ºÎ¼­ ¾ÆÀÌµð -- PK
, DEPARTMENTNAME    VARCHAR2(30)    -- ºÎ¼­ ¸í
, CONSTRAINT DEPARTMENT_ID_PK PRIMARY KEY(DEPARTMENTID)
);
--==>> Table DEPARTMENTÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û ½ÃÄö½º »ý¼º
CREATE SEQUENCE DEPARTMENTSEQ
NOCACHE; 
--==>> Sequence DEPARTMENTSEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


--¡Û µ¥ÀÌÅÍ ÀÔ·Â(ºÎ¼­ µ¥ÀÌÅÍ ÀÔ·Â)
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '°³¹ßºÎ');
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '¸¶ÄÉÆÃºÎ');
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '¿µ¾÷ºÎ');
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù. * 3

--¡Û È®ÀÎ
SELECT DEPARTMENTID, DEPARTMENTNAME FROM DEPARTMENT;

------------------------------------------------------------------------------

--¡Û EMPLOYEE Å×ÀÌºí °ü·Ã
CREATE TABLE EMPLOYEE
( EMPLOYEEID    NUMBER                  -- »ç¿ø ¹øÈ£ -- PK
, NAME          VARCHAR2(30)            -- »ç¿ø ¸í
, SSN           VARCHAR2(20)            -- ÁÖ¹Î ¹øÈ£ -- ¾ÏÈ£È­ ±â´É Àû¿ë(TYPE CHECK!!)
, BIRTHDAY      DATE                    -- »ý³â¿ùÀÏ
, LUNAR         NUMBER(1) DEFAULT(0)    -- ¾çÀ½·Â -- ¾ç·Â0, À½·Â1
, TELEPHONE     VARCHAR2(40)            -- ÀüÈ­¹øÈ£
, DEPARTMENTID  NUMBER                  -- ºÎ¼­ ¾ÆÀÌµð
, POSITIONID    NUMBER                  -- Á÷À§ ¾ÆÀÌµð
, REGIONID      NUMBER                  -- Áö¿ª ¾ÆÀÌµð
, BASICPAY      NUMBER                  -- ±âº»±Þ
, EXTRAPAY      NUMBER                  -- ¼ö´ç
, CONSTRAINT EMPLOYEE_ID_PK PRIMARY KEY(EMPLOYEEID)
, CONSTRAINT EMPLOYEE_DEPARTMENT_FK FOREIGN KEY(DEPARTMENTID)       
             REFERENCES DEPARTMENT(DEPARTMENTID)
, CONSTRAINT EMPLOYEE_POSITIONID_FK FOREIGN KEY(POSITIONID)
             REFERENCES POSITION(POSITIONID)
, CONSTRAINT EMPLOYEE_REGIONID_FK FOREIGN KEY(REGIONID)
             REFERENCES REGION(REGIONID)
, CONSTRAINT EMPLOYEE_LUNAR_CK CHECK(LUNAR=0 OR LUNAR=1) 
);
--==>> Table EMPLOYEEÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û ½ÃÄö½º »ý¼º
CREATE SEQUENCE EMPLOYEESEQ 
NOCACHE;
--==>> Sequence EMPLOYEESEQÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û µ¥ÀÌÅÍ ÀÔ·Â(Á÷¿ø µ¥ÀÌÅÍ ÀÔ·Â)
INSERT INTO EMPLOYEE( EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY )
VALUES( EMPLOYEESEQ.NEXTVAL, '°ûÇÑ¾ó', CRYPTPACK.ENCRYPT('9309171234567', '9309171234567'), TO_DATE('1993-09-17', 'YYYY-MM-DD'), 0, 
  '010-1111-1111', 1, 1, 1, 1500000, 150000);
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù.

SELECT EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY FROM EMPLOYEE;
--==>>
/*
1	°ûÇÑ¾ó	???????\?$	93/09/17	0	010-1111-1111	1	1	1	1500000	150000
*/

--¡Û Ä¿¹Ô
COMMIT;
--==>> Ä¿¹Ô ¿Ï·á.

--¡Û Á÷¿ø Á¶È¸ ºä »ý¼º
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
SELECT E.EMPLOYEEID, E.NAME, E.SSN, TO_CHAR(E.BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY
       , E.LUNAR, DECODE(E.LUNAR, 0, '¾ç·Â', 1, 'À½·Â') AS LUNARNAME
       , E.TELEPHONE, E.DEPARTMENTID
       , (SELECT DEPARTMENTNAME 
          FROM DEPARTMENT 
          WHERE DEPARTMENTID = E.DEPARTMENTID) AS DEPARTMENTNAME
       , E.POSITIONID
       , (SELECT POSITIONNAME
          FROM POSITION
          WHERE POSITIONID=E.POSITIONID) AS POSITIONNAME
       , E.REGIONID
       , (SELECT REGIONNAME 
          FROM REGION
          WHERE REGIONID = E.REGIONID) AS REGIONNAME 
       , E.BASICPAY
       , E.EXTRAPAY
       , NVL(E.BASICPAY, 0) + NVL(E.EXTRAPAY, 0) AS PAY
    FROM EMPLOYEE E
    ORDER BY E.EMPLOYEEID;
--==>> View EMPLOYEEVIEWÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.


--¡Û Áö¿ª µ¥ÀÌÅÍ Á¶È¸ Äõ¸®¹® ±¸¼º(Áö¿ª µ¥ÀÌÅÍ »èÁ¦ °¡´É¿©ºÎ È®ÀÎ)
SELECT R.REGIONID, R.REGIONNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE REGIONID = R.REGIONID) AS DELCHECK
FROM REGION R;
--==>>
/*
           DELCHECK
           -------
1	¼­¿ï	1
2	°æ±â	0
3	ÀÎÃµ	0
4	Á¦ÁÖ	0
*/
--> ¡º¼­¿ï¡»ÀÇ Áö¿ª µ¥ÀÌÅÍ´Â »èÁ¦°¡ ºÒ°¡´ÉÇÑ »óÈ²ÀÌ¸ç,
--  ¡º°æ±â¡», ¡ºÀÎÃµ¡», ¡ºÁ¦ÁÖ¡»ÀÇ Áö¿ª µ¥ÀÌÅÍ´Â »èÁ¦°¡ °¡´ÉÇÑ »óÈ²ÀÓÀ»
--  ÆÇº°ÇÒ ¼ö ÀÖ´Â Äõ¸®¹®

--¡Û ºä »ý¼º(REGIONVIEW)
CREATE OR REPLACE VIEW REGIONVIEW 
AS
SELECT R.REGIONID, R.REGIONNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE REGIONID = R.REGIONID) AS DELCHECK
FROM REGION R;
--==>> View REGIONVIEWÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û Áö¿ª ¸®½ºÆ® ÀüÃ¼ Á¶È¸ Äõ¸®¹® ±¸¼º
SELECT REGIONID, REGIONNAME, DELCHECK FROM REGIONVIEW ORDER BY REGIONID
;

--¡Û Á÷À§ µ¥ÀÌÅÍ Á¶È¸ Äõ¸®¹® ±¸¼º(Á÷À§ µ¥ÀÌÅÍ »èÁ¦ °¡´É¿©ºÎ È®ÀÎ)
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE POSITIONID = P.POSITIONID) AS DELCHECK
FROM POSITION P;
--==>>
/*
           DELCHECK
           -------
1	»ç¿ø	1
2	´ë¸®	0
3	ºÎÀå	0
4	»ó¹«	0
*/


--¡Û ºä »ý¼º(POSITIONVIEW)
CREATE OR REPLACE VIEW POSITIONVIEW 
AS
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE POSITIONID = P.POSITIONID) AS DELCHECK
FROM POSITION P;
--==>> View POSITIONVIEWÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û ºÎ¼­ µ¥ÀÌÅÍ Á¶È¸ Äõ¸®¹® ±¸¼º(ºÎ¼­ µ¥ÀÌÅÍ »èÁ¦ °¡´É¿©ºÎ È®ÀÎ)
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE DEPARTMENTID = D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
--==>>
/*
             DELCHECK
             -------
1	°³¹ßºÎ	    1
2	¸¶ÄÉÆÃºÎ 	0
3	¿µ¾÷ºÎ	    0
*/


--¡Û ºä »ý¼º(DEPARTMENTVIEW)
CREATE OR REPLACE VIEW DEPARTMENTVIEW 
AS
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE DEPARTMENTID = D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
--==>> View DEPARTMENTVIEWÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

--¡Û Á÷¿øº° ÃÖ¼Ò ±âº»±Þ °Ë»ö Äõ¸®¹® ±¸¼º
SELECT MINBASICPAY
FROM POSITION
WHERE POSITIONID=1; -- »ç¿ø
--> ÇÑ ÁÙ ±¸¼º
SELECT MINBASICPAY FROM POSITION WHERE POSITIONID=1
;
--==>> 1000000

--¡Û ºÎ¼­ ºä Á¶È¸ Äõ¸®¹®
SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK FROM DEPARTMENTVIEW ORDER BY DEPARTMENTID;

-----------------------------------------------------------------------------------------


--¡Û ·Î±×ÀÎ, ·Î±×¾Æ¿ô °úÁ¤ Ãß°¡

-- ID ¿Í PW ÄÃ·³ µ¥ÀÌÅÍ¸¦ ´ã°í ÀÖ´Â Å×ÀÌºíÀÌ º°µµ·Î Á¸ÀçÇÏÁö ¾Ê´Â »óÈ²ÀÌ´Ù.
-- ÀÌ¿Í °ü·ÃÇÏ¿© EMPLOYEEID(»ç¿ø ¾ÆÀÌµð) ¿Í SSN(ÁÖ¹Î¹øÈ£) µÞÀÚ¸® 
-- 7ÀÚ¸®ÀÇ ¼ýÀÚ¸¦ ÀÌ¿ëÇÒ ¼ö ÀÖµµ·Ï ±¸¼ºÇÑ´Ù.

--¡Ø ±âÁ¸ Å×ÀÌºí ±¸Á¶ º¯°æ
--¨ç 
-- EMPLOYEE(Á÷¿ø Å×ÀÌºí)ÀÇ SSN(ÁÖ¹Î¹øÈ£) ÄÃ·³À» ºÐ¸®ÇÑ´Ù.
-- SSN -----------> SSN1, SSN2
-- SSN1 ¡æ ÁÖ¹Î¹øÈ£ ¾Õ 6ÀÚ¸®
-- SSN2 ¡æ ÁÖ¹Î¹øÈ£ µÞ 7ÀÚ¸® ¡æ ¾ÏÈ£È­ Àû¿ë

--¨è 
-- EMPLOYEE(Á÷¿ø Å×ÀÌºí)¿¡ GRADE(µî±Þ) ÄÃ·³À» Ãß°¡ÇÑ´Ù.
-- GRADE ¡æ °ü¸®ÀÚ0, ÀÏ¹Ý»ç¿ø1


--¡Û ÄÃ·³ ºÐÇÒ SSN ¡æ SSN1, SSN2 

-- ÄÃ·³ Ãß°¡
ALTER TABLE EMPLOYEE
ADD(SSN1 CHAR(6), SSN2 VARCHAR2(50));
--==>> Table EMPLOYEEÀÌ(°¡) º¯°æµÇ¾ú½À´Ï´Ù.

SELECT *
FROM EMPLOYEE;

UPDATE EMPLOYEE
SET SSN1 = SUBSTR( CRYPTPACK.DECRYPT(SSN, '9309171234567'), 1, 6 )
  , SSN2 = CRYPTPACK.ENCRYPT( SUBSTR( CRYPTPACK.DECRYPT( SSN, '9309171234567'), 7, 7)
                            , SUBSTR( CRYPTPACK.DECRYPT( SSN, '9309171234567'), 7, 7) );
--==>> 1 Çà ÀÌ(°¡) ¾÷µ¥ÀÌÆ®µÇ¾ú½À´Ï´Ù.

-- ±âÁ¸ ÁÖ¹Î¹øÈ£ ÄÃ·³(SSN) Á¦°Å
ALTER TABLE EMPLOYEE
DROP COLUMN SSN;
--==>> Table EMPLOYEEÀÌ(°¡) º¯°æµÇ¾ú½À´Ï´Ù.

SELECT*
FROM EMPLOYEE;


-- ÄÃ·³ Ãß°¡ ¡æ GRADE - ±âº»°ªÀ» 1(ÀÏ¹Ý »ç¿ø)·Î ±¸¼º
ALTER TABLE EMPLOYEE
ADD GRADE NUMBER(1) DEFAULT 1;
--==>> Table EMPLOYEEÀÌ(°¡) º¯°æµÇ¾ú½À´Ï´Ù.

SELECT *
FROM EMPLOYEE;

-- °ûÇÑ¾ó »ç¿øÀ» °ü¸®ÀÚ·Î ÀÓ¸í
UPDATE EMPLOYEE
SET GRADE=0
WHERE EMPLOYEEID=1;
--==>> 1 Çà ÀÌ(°¡) ¾÷µ¥ÀÌÆ®µÇ¾ú½À´Ï´Ù.

SELECT *
FROM EMPLOYEE;

--¡Û Ä¿¹Ô
COMMIT;
--==>> Ä¿¹Ô ¿Ï·á.


--¡Ø Å×ÀÌºíÀÇ ±¸Á¶¸¦ º¯°æÇß±â ¶§¹®¿¡
--   ÀÌ¿Í °ü·ÃÇÑ ºä(VIEW)ÀÇ ³»¿ëÀ» »õ·Î ÀÛ¼º(¼öÁ¤)

--¡Û Á÷¿ø Á¶È¸ ºä »ý¼º
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
SELECT E.EMPLOYEEID AS EMPLOYEEID
     , E.NAME AS NAME
     , E.SSN1 AS SSN
     , TO_CHAR(E.BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR, DECODE(E.LUNAR, 0, '¾ç·Â', 1, 'À½·Â') AS LUNARNAME
     , E.TELEPHONE AS TELEPHONE
     , E.DEPARTMENTID AS DEPARTMENTID
     , (SELECT DEPARTMENTNAME 
        FROM DEPARTMENT 
        WHERE DEPARTMENTID = E.DEPARTMENTID) AS DEPARTMENTNAME
     , E.POSITIONID AS POSITIONID
     , (SELECT POSITIONNAME
        FROM POSITION
        WHERE POSITIONID=E.POSITIONID) AS POSITIONNAME
     , E.REGIONID AS REGIONID
     , (SELECT REGIONNAME 
          FROM REGION
          WHERE REGIONID = E.REGIONID) AS REGIONNAME 
     , E.BASICPAY AS BASICPAY
     , E.EXTRAPAY AS EXTRAPAY
     , NVL(E.BASICPAY, 0) + NVL(E.EXTRAPAY, 0) AS PAY
     , E.GRADE AS GRADE
    FROM EMPLOYEE E
    ORDER BY E.EMPLOYEEID;
--==>> View EMPLOYEEVIEWÀÌ(°¡) »ý¼ºµÇ¾ú½À´Ï´Ù.

DESC EMPLOYEEVIEW;
--==>>
/*
ÀÌ¸§             ³Î?       À¯Çü           
-------------- -------- ------------ 
EMPLOYEEID     NOT NULL NUMBER       
NAME                    VARCHAR2(30) 
SSN                     CHAR(6)      
BIRTHDAY                VARCHAR2(10) 
LUNAR                   NUMBER(1)    
LUNARNAME               VARCHAR2(6)  
TELEPHONE               VARCHAR2(40) 
DEPARTMENTID            NUMBER       
DEPARTMENTNAME          VARCHAR2(30) 
POSITIONID              NUMBER       
POSITIONNAME            VARCHAR2(30) 
REGIONID                NUMBER       
REGIONNAME              VARCHAR2(30) 
BASICPAY                NUMBER       
EXTRAPAY                NUMBER       
PAY                     NUMBER       
GRADE                   NUMBER(1)
*/


--¡Û Á÷¿ø µ¥ÀÌÅÍ ÀÔ·Â Äõ¸®¹® ±¸¼º(¼öÁ¤µÈ ³»¿ë)
INSERT INTO EMPLOYEE( EMPLOYEEID, NAME, SSN1, SSN2, BIRTHDAY, LUNAR
                    , TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID
                    , BASICPAY, EXTRAPAY)
VALUES( EMPLOYEESEQ.NEXTVAL, '±ÇÈ«ºñ', '950410', CRYPTPACK.ENCRYPT('2323234', '2323234') 
      , TO_DATE('1995-04-10', 'YYYY-MM-DD'), 0, '010-9962-9626', 1, 1, 1, 1500000, 150000 ); -- ¹é¿À½É¸¸, ½Ê¿À¸¸
--==>> 1 Çà ÀÌ(°¡) »ðÀÔµÇ¾ú½À´Ï´Ù.


SELECT *
FROM EMPLOYEE;
--==>>
/*
1	°ûÇÑ¾ó	93/09/17	0	010-1111-1111	1	1	1	1500000	150000	930917	=o??	0
2	±ÇÈ«ºñ	95/04/10	0	010-9962-9626	1	1	1	1500000	150000	950410	?P4?	1
*/

SELECT *
FROM EMPLOYEEVIEW;

--¡Û ÀÏ¹Ý »ç¿ø ·Î±×ÀÎ Äõ¸®¹® ±¸¼º(ID ¡æ EMPLOYEEID, PW ¡æ SSN2)
SELECT NAME
FROM EMPLOYEE
WHERE EMPOYEEID='ID¹®ÀÚ¿­'
  AND SSN2=(SELECT SSN2 
            FROM EMPLOYEE
            WHERE EMPLOYEEID='ID¹®ÀÚ¿­');

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2=(SELECT SSN2 
            FROM EMPLOYEE
            WHERE EMPLOYEEID=2);
--==>> ±ÇÈ«ºñ

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2 
       FROM EMPLOYEE
       WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('2323232', '2323232');
--==>> Á¶È¸ °á°ú ¾øÀ½ ¡æ ·Î±×ÀÎ ½ÇÆÐ

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2 
       FROM EMPLOYEE
       WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('2323234', '2323234');
--==>> ±ÇÈ«ºñ ¡æ ·Î±×ÀÎ ¼º°ø

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2 = CRYPTPACK.ENCRYPT('2323234', '2323234');
--==>> ±ÇÈ«ºñ ¡æ ·Î±×ÀÎ ¼º°ø
--> ÀÏ¹Ý »ç¿ø ·Î±×ÀÎ Äõ¸®¹® ÇÑ ÁÙ ±¸¼º
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID='ID¹®ÀÚ¿­' AND SSN2 = CRYPTPACK.ENCRYPT('PW¹®ÀÚ¿­', 'PW¹®ÀÚ¿­');


--¡Û °ü¸®ÀÚ ·Î±×ÀÎ Äõ¸®¹® ±¸¼º(ID ¡æ EMPLOYEEID, PW ¡æ SSN2)
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID = 2
  AND SSN2 = CRYPTPACK.ENCRYPT('2323234', '2323234')
  AND GRADE = 0;
--==>> Á¶È¸ °á°ú ¾øÀ½ ¡æ ·Î±×ÀÎ ½ÇÆÐ

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID = 1
  AND SSN2 = CRYPTPACK.ENCRYPT('1234567', '1234567')
  AND GRADE = 0;
--==>> °ûÇÑ¾ó ¡æ ·Î±×ÀÎ ¼º°ø

--> °ü¸®ÀÚ ·Î±×ÀÎ Äõ¸®¹® ÇÑ ÁÙ ±¸¼º
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID='ID ¹®ÀÚ¿­' AND SSN2 = CRYPTPACK.ENCRYPT('')


--¡Û Á÷¿ø µ¥ÀÌÅÍ »èÁ¦ ¹¹¸®¹® ±¸¼º
DELETE
FROM EMPLOYEE
WHERE EMPLOYEEID=2;
--> ÇÑ ÁÙ ±¸¼º
DELETE FROM EMPLOYEE WHERE EMPLOYEEID=2
;

--¡Û ºÎ¼­ µ¥ÀÌÅÍ »èÁ¦ Äõ¸®¹® ±¸¼º
DELETE FROM DEPARTMENT WHERE DEPARTMENTID=2
;


--¡Û Áö¿ª µ¥ÀÌÅÍ »èÁ¦ Äõ¸®¹® ±¸¼º
DELETE FROM REGION WHERE REGIONID=2
;

--¡Û ºÎ¼­ µ¥ÀÌÅÍ ¼öÁ¤ Äõ¸®¹® ±¸¼º
UPDATE DEPARTMENT SET DEPARTMENTNAME='ÃÑ¹«ºÎ' WHERE DEPARTMENTID=1
;

--¡Û Á÷À§ µ¥ÀÌÅÍ ¼öÁ¤ Äõ¸®¹® ±¸¼º
UPDATE POSITION SET POSITIONNAME='»ç¿ø', MINBASICPAY=10000 WHERE POSITIONID=1
;

--¡Û Á÷À§ µ¥ÀÌÅÍ »èÁ¦ Äõ¸®¹® ±¸¼º
DELETE FROM POSITION WHERE POSITIONID=2
;

--¡Û Áö¿ª µ¥ÀÌÅÍ ¼öÁ¤ Äõ¸®¹® ±¸¼º
UPDATE REGION SET REGIONNAME='Á¦ÁÖ' WHERE REGIONID=1
;

ROLLBACK;


--¡Û Á÷¿ø µ¥ÀÌÅÍ ¼öÁ¤ Äõ¸®¹® ±¸¼º
UPDATE EMPLOYEE
SET NAME='°ûÇÑ¾ó'
  , BIRTHDAY=TO_DATE('2001-01-01', 'YYYY-MM-DD')
  , LUNAR=0
  , TELEPHONE='010-1111-2222'
  , DEPARTMENTID=2
  , POSITIONID=2
  , REGIONID=2
  , BASICPAY=2000000  -- ÀÌ¹é¸¸
  , EXTRAPAY=200000   -- ÀÌ½Ê¸¸
  , SSN1='010101'
  , SSN2=CRYPTPACK.ENCRYPT('3234567', '3234567')
  , GRADE=1
WHERE EMPLOYEEID=1;
--==>> 1 Çà ÀÌ(°¡) ¾÷µ¥ÀÌÆ®µÇ¾ú½À´Ï´Ù.
   
            
ROLLBACK;
--==>> ·Ñ¹é ¿Ï·á.







