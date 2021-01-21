drop table member
drop table NOTICE
CREATE table aa(
id VARCHAR2(6) PRIMARY KEY,
name VARCHAR2(30) NOT NULL
)


RENAME member TO mmm1

CREATE TABLE member(
id VARCHAR2(10),
password VARCHAR2(15),
name VARCHAR2(15),
email VARCHAR2(30),
phoneNumber VARCHAR2(12),
address VARCHAR2(200),
gender VARCHAR2(10),
profileImgName VARCHAR2(300),
rights VARCHAR2(5),
num VARCHAR2(500) PRIMARY KEY
)

CREATE TABLE NOTICE(
num NUMBER(5) PRIMARY KEY,
author VARCHAR2(500),
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3),
FOREIGN KEY (author) REFERENCES member(num)
)

commit

SELECT * FROM member
SELECT * FROM NOTICE
DELETE FROM member where id = 'lch5592'

UPDATE member SET rights = 'admin' WHERE id = 'lch559'


INSERT INTO member VALUES ('m012','123123','m012','m012@naver.com','01022674410','경기도','m','','user',2)
INSERT INTO member VALUES ('m013','123123','m013','m013@naver.com','01022674411','경기도','w','','user',3)
INSERT INTO member VALUES ('m014','123123','m014','m014@naver.com','01022674412','경기도','w','','user',4)
INSERT INTO member VALUES ('m015','123123','m015','m015@naver.com','01022674413','경기도','w','','user',5)
INSERT INTO member VALUES ('m016','123123','m016','m016@naver.com','01022674414','경기도','m','','user',6)
INSERT INTO member VALUES ('m017','123123','m017','m017@naver.com','01022674415','경기도','m','','user',7)


UPDATE member SET name = '이정칠' WHERE id = 'm001'
SELECT name FROM member WHERE id = 'm001'

UPDATE member SET name = '이정칠' WHERE id = 'm001'

SELECT id FROM member WHERE id = 'wjdclf'