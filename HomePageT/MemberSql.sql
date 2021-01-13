drop table member

CREATE table aa(
id VARCHAR2(6) PRIMARY KEY,
name VARCHAR2(30) NOT NULL
)


RENAME member TO mmm1

CREATE TABLE member(
id VARCHAR2(10) PRIMARY KEY,
password VARCHAR2(15),
name VARCHAR2(15),
email VARCHAR2(30),
phoneNumber VARCHAR2(12),
address VARCHAR2(200),
gender VARCHAR2(10),
profileImgName VARCHAR2(300),
rights VARCHAR2(5)
)


commit

SELECT * FROM member

DELETE FROM member where id = 'lch5592'

UPDATE member SET rights = 'admin' WHERE id = 'lch559'