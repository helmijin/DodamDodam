package com.bodeum.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

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
@Data
@Getter
@Setter
public class ReviewVO {
	private String userid;
	private String tel;
	private String email;
	private String category;
	private String rtitle;
	private String rcontent;
	private String rdates;
	private int rboardnum;
	private int rcnt;
	private int itemnum;
}
