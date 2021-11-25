SELECT USER
FROM DUAL;
--==>> SCOTT


SELECT *
FROM TBL_MEMBERLIST;

CREATE TABLE TBL_MEMBERLIST
( ID    VARCHAR2(30)    NOT NULL
, PW    VARCHAR2(20)    NOT NULL
, NAME  VARCHAR2(50)    NOT NULL
, TEL   VARCHAR2(50)    NOT NULL
, EMAIL VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PK PRIMARY KEY(ID)
);
--==>> Table TBL_MEMBERLIST이(가) 생성되었습니다.

--○ 데이터 입력(암호화 패키지 사용)
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '관리자', '010-1234-1234', 'admin@test.com');
--> 한 줄 구성
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL) VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '관리자', '010-1234-1234', 'admin@test.com')
;
--==>> 1 행 이(가) 삽입되었습니다.


--○ 커밋
COMMIT;
--==>> 커밋 완료.


--○ 기본 조회 쿼리문 구성
SELECT ID, NAME, TEL, EMAIL
FROM TBL_MEMBERLIST;
--> 한 줄 구성
SELECT ID, NAME, TEL, EMAIL FROM TBL_MEMBERLIST
;
--==>>
/*
admin	관리자	010-1234-1234	admin@test.com
*/


--○ 데이터 추가 입력(원격 접속 실습을 위한 준비)
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('leedayoung', CRYPTPACK.ENCRYPT('java006$', 'leedayoung'), '이다영', '010-4113-2353', 'dayoung@test.com');
--==>> 1 행 이(가) 삽입되었습니다.


--○ 커밋
COMMIT;
--==>> 커밋 완료.








