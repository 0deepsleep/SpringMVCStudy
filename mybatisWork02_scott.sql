SELECT USER
FROM DUAL;
--==>> SCOTT


--○ 기존 테이블 제거
DROP TABLE TBL_MEMBERLIST;
--==>> Table TBL_MEMBERLIST이(가) 삭제되었습니다.


--○ 실습 대상 테이블 구성
CREATE TABLE TBL_MEMBERLIST
( MID       NUMBER
, NAME      VARCHAR2(30)
, TELEPHONE VARCHAR2(40)
, CONSTRAINT MEMBERLIST_MID_PK PRIMARY KEY(MID)
);
--==>> Table TBL_MEMBERLIST이(가) 생성되었습니다.


--○ 기존 시퀀스 제거
DROP SEQUENCE MEMBERLISTSEQ;

--○ 실습 대상 시퀀스 구성
CREATE SEQUENCE MEMBERLISTSEQ 
NOCACHE;
--==>> Sequence MEMBERLISTSEQ이(가) 생성되었습니다.


--○ 데이터 입력
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '조수연', '010-9999-9999');
--==>> 1 행 이(가) 삽입되었습니다.


--○ 확인
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
ORDER BY MID;
--==>> 1	조수연	010-9999-9999

--○ 아이디 검색
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
WHERE MID=1
;


--○ 수정
UPDATE TBL_MEMBERLIST
SET NAME='조수영', TELEPHONE='010-2222-2222'
WHERE MID=1;

--○ 삭제
DELETE 
FROM TBL_MEMBERLIST
WHERE MID=2;

--○ 커밋
COMMIT;
--==>> 커밋 완료.


--○ 인원 수 확인
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBERLIST;
--==>> 1



--○ 데이터 추가 입력
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '최은상', '010-1111-1111');
--==>> 1 행 이(가) 삽입되었습니다.


--○ 커밋
COMMIT;
--==>> 커밋 완료.


select * from tbl_memberlist;
rollback;