package com.bodeum.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
create table customer(
catname varchar2(70),
Q varchar2(1000),
A varchar2(4000)
);
*/

@Data
@ToString
@Getter
@Setter
public class CustomerVO {

	private String catname;
	private String Q;
	private String A;
	
}
