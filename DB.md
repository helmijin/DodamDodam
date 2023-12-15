# DB(Oracle)

CREATE TABLE address( 
userid varchar2(30) not null, 
zipcode varchar2(30) not null, 
address varchar2(30) not null, 
address2 varchar2(30) not null );

CREATE TABLE board( userid varchar2(30) not null, 
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
answer varchar2(30) not null );

CREATE TABLE cart( 
userid varchar2(30) not null, 
itemnum number(10) not null, 
item varchar2(30) not null, 
itemprice number(10) not null, 
itempic varchar2(30) not null, 
listnum varchar2(30) not null,
itemcnt number(10) not null );

CREATE TABLE coupon( 
userid varchar2(30) not null, 
coupon varchar2(30) not null, 
disco varchar2(30) not null, 
exp number(30) not null, 
itemcat varchar2(30) not null );

CREATE TABLE eduboard(
boardnum number(30) not null, 
userid varchar2(30) not null, 
title varchar2(30) not null, 
content number(30) not null, 
bdate date not null, 
cnt number(10) not null );

CREATE TABLE edusingle( 
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
countpp number(10) not null,
edupic number(10) not null,
point number(10) not null );

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
countpp number(10) not null,
edupic number(10) not null,
point number(10) not null );

CREATE table edu( 
itemnum number(20),
title VARCHAR2(100) not null, 
name varchar2(20) not null, 
edudate varchar2(20) not null, 
type varchar2(20) not null, 
content1 varchar2(500) not null, 
content2 varchar2(500) not null, 
content3 varchar2(500) not null, 
edupic number(10) not null, 
picdisco number(10) not null, 
point number(10) not null );

create table customer(
catname varchar2(30) not null,
Q varchar2(50) not null,
A varchar2(100) not null);

CREATE table manager( 
bno number(10) not null, 
title varchar2(20) not null, 
content varchar2(200) not null, 
writer varchar2(20) not null, 
regdate date not null, 
updateDate date not null );

create table member( 
USERID VARCHAR2(50) not null, 
PASSWD VARCHAR2(20) not null, 
NAME VARCHAR2(20) not null, 
GENDER VARCHAR2(10) not null, 
B_YEAR NUMBER(10) not null, 
B_MONTH NUMBER(10) not null, 
B_DAY NUMBER(20) not null, 
PH1 VARCHAR2(50) not null, 
PH2 VARCHAR2(50) not null, 
PH3 VARCHAR2(50) not null, 
EMAIL1 VARCHAR2(50) not null, 
EMAIL2 VARCHAR2(50) not null, 
SMS VARCHAR2(50) not null, 
MAILING VARCHAR2(50) not null, 
AGREE1 VARCHAR2(50) not null, 
AGREE2 VARCHAR2(50) not null, 
AGREE3 VARCHAR2(50) not null, 
POINT NUMBER(10) not null, 
GREDE VARCHAR2(50) not null );

CREATE TABLE MENUCAT( 
CATNAME VARCHAR2(30) NOT NULL, 
CATCODE VARCHAR2(30) NOT NULL, 
CATCODEREF VARCHAR2(30) NULL, 
PRIMARY KEY(CATCODE) );

create table orderlist( 
ORDERNUM NUMBER(20) NOT NULL, 
ITEMNUM NUMBER(20) NOT NULL, 
USERID VARCHAR2(25) NOT NULL, 
ORDERED VARCHAR2(25) NOT NULL, 
ORDERDATE VARCHAR2(25) NOT NULL, 
ORDERPRICE NUMBER(10) NOT NULL, 
ORDEREDNUM NUMBER(5) NOT NULL, 
ZIPCODE VARCHAR2(20) NOT NULL, 
ADDRESS VARCHAR2(20) NOT NULL );

create table payment( 
PAYMENTCODE VARCHAR2(20) NOT NULL, 
ORDEREDNUM VARCHAR2(20) NOT NULL, 
PAYMENTSYS VARCHAR2(20) NOT NULL, 
PAYMENTDATE DATE NOT NULL, 
PAYMENTMONEY VARCHAR2(20) NOT NULL, 
PAYMENTNAME VARCHAR2(20) NOT NULL, 
PAYMENTBANK VARCHAR2(20) NOT NULL, 
ACCOUNTHOLDER VARCHAR2(30) NOT NULL,
ACCOUNTNUMBER VARCHAR2(30) NOT NULL, 
USERID VARCHAR2(30) NOT NULL );

create table pet( 
userid VARCHAR2(20) NOT NULL,
pet_name VARCHAR2(20) NOT NULL, 
pet_b_year varchar2(20) not null,
pet_b_month varchar2(20) not null,
pet_b_day varchar2(20) not null,
pet_gender varchar2(10) not null,
pet_kind varchar2(20) not null,
pet_weight VARCHAR2(20) NOT NULL,
neutralization VARCHAR2(20) NOT NULL,
surgery_date varchar2(10) not null,
report_file VARCHAR2(20) NOT NULL,
pet_img VARCHAR2(20) NOT NULL, 
pet_number number(20) NOT NULL );

create table product( 
ITEMNUM NUMBER(10) NOT NULL, 
ITEMPIC VARCHAR2(100) NOT NULL, 
ITEMDATE DATE NOT NULL, 
ITEMPRICE VARCHAR2(30) NOT NULL, 
ITEMSELL NUMBER(20) NOT NULL, 
ITEM VARCHAR2(50) NOT NULL, 
OPT1 VARCHAR2(20) NOT NULL, 
OPT2 VARCHAR2(20) NOT NULL, 
OPT3 VARCHAR2(20) NOT NULL, 
OPT4 VARCHAR2(20) NOT NULL, 
OPT5 VARCHAR2(20) NOT NULL, 
OPT6 VARCHAR2(20) NOT NULL, 
OPT7 VARCHAR2(20) NOT NULL, 
ITEMDISCO NUMBER(10) NOT NULL, 
CATNAME VARCHAR2(20) NOT NULL, 
CATCODE NUMBER(20) NOT NULL, 
CATCODEREF NUMBER(20) NOT NULL, 
POINT NUMBER(20) NOT NULL, 
DISPLAYSTATUS VARCHAR2(20) NOT NULL, 
SALESSTATUS VARCHAR2(20) NOT NULL,  
ITEMCNT NUMBER(10) NOT NULL );

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
ITEMNUM NUMBER(20) );

