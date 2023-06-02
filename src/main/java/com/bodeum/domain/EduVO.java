package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//CREATE table Edu(
//	    title VARCHAR2(100),
//	    name varchar2(20),
//	    edudate varchar2(20),
//	    type varchar2(20),
//	    content1 varchar2(500),
//	    content2 varchar2(500),
//	    content3 varchar2(500),
//	    edupic number(10),
//	    picdisco number(10),
//	    point number(10)
//	    );


@Getter
@Setter
@ToString
public class EduVO {
	
	private int itemnum;
	private String title;
	private String name;
	private String edudate;
	private String type;
	private String content1;
	private String content2;
	private String content3;
	private int edupic;
	private int picdisco;
	private int point;
	
}
