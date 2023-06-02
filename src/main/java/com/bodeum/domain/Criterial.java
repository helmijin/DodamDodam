package com.bodeum.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criterial { // 페이지 번호 계산에 필요

	private int pageNum;
	private int amount;
	private String type;  //제목(T) 내용(C) 저자(W)
	private String keyword; //검색 키워드
	
	public Criterial() {
		this(1,12);
	}
	
	public Criterial(int pageNum, int amount) {
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
	public String[] getTypeArr() {
		return type==null? new String[] {}:type.split("");
	}
	
	public String getListLink() {
		
		UriComponentsBuilder builder=UriComponentsBuilder.fromPath("")
		.queryParam("pageNum", this.pageNum)
		.queryParam("amount", this.getAmount())
		.queryParam("type", this.getType())
		.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();
		
		
	}
}
