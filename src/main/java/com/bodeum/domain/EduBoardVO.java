package com.bodeum.domain;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
public class EduBoardVO {

	private int boardnum;
	private String userid;
	private String title;
	private String content;
	private Date bdate;
	private int cnt;
		
	
	
}
