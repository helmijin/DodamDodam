package com.bodeum.domain;
//Q&A 게시판
/*CREATE TABLE BOARD(
USERID VARCHAR2(25),
TEL VARCHAR2(20),
EMAIL VARCHAR2(25),
EMAILCHK VARCHAR2 (10),
TELCHK VARCHAR2 (10),
SECRET VARCHAR2 (10),
CATEGORY VARCHAR2(25),
TITLE VARCHAR2(50),
CONTENT VARCHAR2(300),
DATES VARCHAR2(50),
BOARDNUM NUMBER(10),
CNT NUMBER(5),
ANSWERCHK VARCHAR2(30),
ANSWER VARVHAR2(500)
);*/
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
@Getter
@Setter
public class BoardVO {
	private String userid; //writer -> userid, PK
	private String tel;
	private String email;
	private String emailchk;
	private String telchk;
	private String secret;
	private String category; 
	private String title; 
	private String content; 
	private String dates; 
	private Long boardnum; //번호 (bno -> boardnnum)
	private int cnt; // Q&A 개수
	private String answerchk;
	private String answer;
}