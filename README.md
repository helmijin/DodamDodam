# DODAM DODAM
 반려동물의 더 나은 생활을 위한 생활용품과 교육을 하나의 사이트에서 볼 수 있습니다.  
 반려견을 키우는 인구가 점차 증가하면서 애완동물 산업 시장이 급격히 성장하고 있습니다.   
 반려견에 대한 관심과 사랑이 급증하여 좋은 제품을 찾는 소비자들, 반려견을 이해하고 소통하려는 사람들의 욕구를 반영하여 반려견 교육 및 관련 용품 판매 사이트를 선정하였습니다.    
![image](https://github.com/helmijin/DodamDodam/assets/113495471/522bea2f-2ce6-4881-812c-9fa81476e138)


# ⏱ 개발 기간
2023.02.20 ~ 2023.03.13 (22일)

# ⚙ 개발 환경 
![image](https://github.com/helmijin/DodamDodam/assets/113495471/fa5dad71-a37b-4a21-9a5a-7e47c504f253)


# 📺 실행 화면


# DB(Oracle)
/*
CREATE TABLE address(
userid varchar2(30) not null,
zipcode varchar2(30) not null,
address varchar2(30) not null,
address2 varchar2(30) not null
);
 */
 
 /*
CREATE TABLE board(
userid varchar2(30) not null,
tel varchar2(30) not null,
email varchar2(30) not null,
emailchk varchar2(30) not null,
telchk varchar2(30) not null,
secret varchar2(30) not null,
category varchar2(30) not null,
title varchar2(30) not null,
content varchar2(100) not null,
dates varchar2(30) not null,
boardnum varchar2(30) not null,
cnt number(10) not null,
answerchk varchar2(30) not null,
answer varchar2(30) not null
);
 */
 
  /*
CREATE TABLE cart(
userid varchar2(30) not null,
itemnum number(10) not null,
item varchar2(30) not null,
itemprice number(10) not null,
itempic varchar2(30) not null,
itemcnt number(10) not null
);

 /*
CREATE TABLE coupon(
userid varchar2(30) not null,
coupon varchar2(30) not null,
disco varchar2(30) not null,
exp number(30) not null,
itemcat varchar2(30) not null
);
 */
 
  /*
CREATE TABLE eduboard(
boardnum number(30) not null,
userid varchar2(30) not null,
title varchar2(30) not null,
content number(30) not null,
date date(30) not null,
cnt number(10) not null
);
 */
 
 /*CREATE table edugroup(
itemnum number(10) not null,
title VARCHAR2(100) not null,
name varchar2(20) not null,
edudate varchar2(20) not null,
type varchar2(20) not null,
time varchar2(20) not null,
place varchar2(500) not null,
prepare varchar2(500) not null,
recopet varchar2(500) not null,
content1 varchar2(500) not null,
content2 varchar2(500) not null,
content3 varchar2(500) not null,
edupic number(10) not null,	    
point number(10) not null
);
*/

/*
CREATE table edugroup(
itemnum number(10) not null,
title VARCHAR2(100) not null,
name varchar2(20) not null,
edudate varchar2(20) not null,
type varchar2(20) not null,
time varchar2(20) not null,
place varchar2(500) not null,
prepare varchar2(500) not null,
recopet varchar2(500) not null,
content1 varchar2(500) not null,
content2 varchar2(500) not null,
content3 varchar2(500) not null,
edupic number(10) not null,	    
point number(10) not null
);
*/  

/*
CREATE table edu(
title VARCHAR2(100) not null,
name varchar2(20) not null,
edudate varchar2(20) not null,
type varchar2(20) not null,
content1 varchar2(500) not null,
content2 varchar2(500) not null,
content3 varchar2(500) not null,
edupic number(10) not null,
picdisco number(10) not null,
point number(10) not null
);
*/

/*
CREATE table manager(
bno number(10) not null,
title varchar2(20) not null,
content varchar2(200) not null,
writer varchar2(20) not null,
regdate date not null,
updateDate date not null,
);
*/

/*
create table member(
USERID     VARCHAR2(50) not null,
PASSWD     VARCHAR2(20) not null,
NAME       VARCHAR2(20) not null,
GENDER     VARCHAR2(10) not null,
B_YEAR     NUMBER(10)   not null,
B_MONTH    NUMBER(10)   not null,
B_DAY      NUMBER(20)   not null,
PH1        VARCHAR2(50) not null,
PH2        VARCHAR2(50) not null,
PH3        VARCHAR2(50) not null,
EMAIL1     VARCHAR2(50) not null,
EMAIL2     VARCHAR2(50) not null,
SMS        VARCHAR2(50) not null,
MAILING    VARCHAR2(50) not null,
AGREE1     VARCHAR2(50) not null,
AGREE2     VARCHAR2(50) not null,
AGREE3     VARCHAR2(50) not null,
POINT      NUMBER(10)   not null,
GREDE      VARCHAR2(50) not null
);
*/

/*
CREATE TABLE MENUCAT(
CATNAME VARCHAR2(30) NOT NULL,
CATCODE VARCHAR2(30) NOT NULL,
CATCODEREF VARCHAR2(30) NULL,
PRIMARY KEY(CATCODE)
);

/*
create table orderlist(
ORDERNUM      NUMBER(20) NOT NULL,
ITEMNUM       NUMBER(20) NOT NULL,
USERID        VARCHAR2(25) NOT NULL,
ORDERED       VARCHAR2(25) NOT NULL,
ORDERDATE     VARCHAR2(25) NOT NULL,
ORDERPRICE    NUMBER(10)   NOT NULL,
ORDEREDNUM    NUMBER(5)    NOT NULL,
ZIPCODE       VARCHAR2(20) NOT NULL,
ADDRESS       VARCHAR2(20) NOT NULL
);
*/

/*
create table payment(
PAYMENTCODE      VARCHAR2(20) NOT NULL,
ORDEREDNUM       VARCHAR2(20) NOT NULL,
PAYMENTSYS       VARCHAR2(20) NOT NULL,
PAYMENTDATE      DATE         NOT NULL,
PAYMENTMONEY     VARCHAR2(20) NOT NULL,
PAYMENTNAME      VARCHAR2(20) NOT NULL,
PAYMENTBANK      VARCHAR2(20) NOT NULL,
ACCOUNTHOLDER    VARCHAR2(30) NOT NULL,
ACCOUNTNUMBER    VARCHAR2(30) NOT NULL,
USERID           VARCHAR2(30) NOT NULL
);
*/

/*
create table pet(
userid      VARCHAR2(20) NOT NULL,
petname     VARCHAR2(20) NOT NULL,
petweight   VARCHAR2(20) NOT NULL,
petage      number(10)   NOT NULL,
petspec     VARCHAR2(20) NOT NULL,
petpic      VARCHAR2(20) NOT NULL
);
*/

/*
create table product(
ITEMNUM          NUMBER(10)    NOT NULL,
ITEMCAT          VARCHAR2(20)  NOT NULL,
ITEMPIC          VARCHAR2(100) NOT NULL,
ITEM             VARCHAR2(50)  NOT NULL,
OPT1             VARCHAR2(20)  NOT NULL,
OPT2             VARCHAR2(20)  NOT NULL,
OPT3             VARCHAR2(20)  NOT NULL,
OPT4             VARCHAR2(20)  NOT NULL,
OPT5             VARCHAR2(20)  NOT NULL,
OPT6             VARCHAR2(20)  NOT NULL,
OPT7             VARCHAR2(20)  NOT NULL,
ITEMDISCO        NUMBER(10)    NOT NULL,
DISPLAYSTATUS    VARCHAR2(20)  NOT NULL,
SALESSTATUS      VARCHAR2(20)  NOT NULL,
ITEMSELL NUMBER(20) NOT NULL,
ITEMCNT          NUMBER(10) NOT NULL
);
*/

/*
 CREATE TABLE REVIEW(
USERID VARCHAR2(25),
TEL VARCHAR2(20),
EMAIL VARCHAR2(25),
CATEGORY VARCHAR2(25),
RTITLE VARCHAR2(50),
RCONTENT VARCHAR2(300),
RDATES VARCHAR2(50),
RBOARDNUM NUMBER(10),
RCNT NUMBER(5),
ITEMNUM NUMBER(20)
);
 */
