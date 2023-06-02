package com.bodeum.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MemberVO {

	private String userid;
	private String passwd;
	private String name;
	private String gender;
	private int b_year;
	private int b_month;
	private int b_day;
	private String ph1;
	private String ph2;
	private String ph3;
	private String sms;
	private String mailing;
	private String email1;
	private String email2;
	private String agree1;
	private String agree2;
	private String agree3;
	private String grede;
	private int point;
}
