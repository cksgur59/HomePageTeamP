drop table member
drop table NOTICE

CREATE TABLE member(
id VARCHAR2(15) PRIMARY KEY,
password VARCHAR2(15),
name VARCHAR2(15),
email VARCHAR2(30),
phoneNumber VARCHAR2(12),
address VARCHAR2(200),
gender VARCHAR2(10),
profileImgName VARCHAR2(300),
rights VARCHAR2(5)
)

CREATE TABLE NOTICE(
num NUMBER(5) PRIMARY KEY,
menu NUMBER(20) NOT NULL,
author VARCHAR2(15),
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3),
FOREIGN KEY (author) REFERENCES member(id)
)

CREATE TABLE QNA(
num NUMBER(5) PRIMARY KEY,
menu NUMBER(20) NOT NULL,
author VARCHAR2(15),
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3),
FOREIGN KEY (author) REFERENCES member(id)
)

commit

SELECT * FROM member
SELECT * FROM NOTICE
SELECT * FROM QNA

DELETE FROM member where id = 'lch5592'
      
UPDATE member SET rights = 'admin' WHERE id = 'lch559'

UPDATE member SET id = 'lch559' WHERE name = '이찬혁'