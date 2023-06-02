package com.bodeum.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString
@NoArgsConstructor
public class EdusingleVO {
	
	private int itemnum;
	private String title;
	private String name;
	private String edudate;
	private String type;
	private String time;
	private String place;
	private String prepare;
	private String recopet;
	private String content1;
	private String content2;
	private String content3;
	private int countpp;
	private int edupic;
	private int point;
}
//CREATE table Edugroup(
//itemnum number(10),
//title VARCHAR2(100),
//name varchar2(20),
//edudate varchar2(20),
//type varchar2(20),
//time varchar2(20),
//place varchar2(500),
//prepare varchar2(500),
//recopet varchar2(500),
//content1 varchar2(500),
//content2 varchar2(500),
//content3 varchar2(500),
//edupic number(10),	    
//point number(10)
//);  
