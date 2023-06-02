package com.bodeum.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
 create table product(
    itemnum number(10),
    itempic varchar2(200),
    itemdate date,
    itemprice varchar2(50),
    itemsell number(30),
    item varchar2(200),
    opt1 varchar2(100),
    opt2 varchar2(100),
    opt3 varchar2(100),
    opt4 varchar2(100),
    opt5 varchar2(100),
    opt6 varchar2(100),
    opt7 varchar2(100),
    itemdisco number(10),
    catname varchar2(70),
	catcode number(10), 
	catcoderef number(10), 
	point varchar2(30),
    displaystatus  varchar2(70),
	salesstatus  varchar2(70)
    );
 */

@Getter
@Setter
@ToString
public class ProductVO {

	private int itemnum;
	private String itempic;
	private Date itemdate;
	private String itemprice;
	private int itemsell;
	private String item;
	private String opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	private String opt5;
	private String opt6;
	private String opt7;
	private int itemdisco;
	private String catname;
	private int catcode;
	private int catcoderef;
	private String point;
	private String displaystatus;
	private String salesstatus;
	private int itemcnt;
}
