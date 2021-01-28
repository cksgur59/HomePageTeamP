CREATE TABLE NOTICE(
num NUMBER(5) PRIMARY KEY,
author VARCHAR2(20) NOT NULL,
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3)
)

CREATE TABLE FREEBOARD(
num NUMBER(5) PRIMARY KEY,
author VARCHAR2(20) NOT NULL,
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3)
)

CREATE TABLE QNA(
num NUMBER(5) PRIMARY KEY,
author VARCHAR2(20) NOT NULL,
title VARCHAR2(200) NOT NULL,
content VARCHAR2(2000) NOT NULL,
writeday DATE DEFAULT SYSDATE,
readcnt NUMBER(8) DEFAULT 0,
reproot NUMBER(5),
repstep NUMBER(5),
repindent number(3)
)

drop table QNA

CREATE TABLE menu1(
id VARCHAR2(6) PRIMARY KEY,
name VARCHAR2(30) NOT NULL
)

SELECT MAX(NUM) FROM NOTICE
SELECT MAX(NUM) FROM FREEBOARD
SELECT MAX(NUM) FROM QNA

SELECT NVL2(MAX(num), MAX(num)+1, 1) FROM NOTICE
SELECT NVL2(MAX(num), MAX(num)+1, 1) FROM FREEBOARD
SELECT NVL2(MAX(num), MAX(num)+1, 1) FROM QNA

SELECT * FROM NOTICE
SELECT * FROM FREEBOARD
SELECT * FROM QNA

SELECT COUNT(num) FROM NOTICE
SELECT COUNT(num) FROM FREEBOARD
SELECT COUNT(num) FROM QNA

SELECT * FROM NOTICE order by repRoot desc, repStep asc
SELECT * FROM FREEBOARD order by repRoot desc, repStep asc
SELECT * FROM QNA order by repRoot desc, repStep asc

SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM NOTICE order by repRoot desc, repStep asc)
SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM FREEBOARD order by repRoot desc, repStep asc)
SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM QNA order by repRoot desc, repStep asc)

SELECT * FROM (SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM NOTICE order by repRoot desc, repStep asc)) WHERE rnum >= ? AND rnum <= ?
SELECT * FROM (SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM FREEBOARD order by repRoot desc, repStep asc)) WHERE rnum >= ? AND rnum <= ?
SELECT * FROM (SELECT ROWNUM rnum, num, title, author, writeday, readcnt, repindent from(SELECT * FROM QNA order by repRoot desc, repStep asc)) WHERE rnum >= ? AND rnum <= ?
