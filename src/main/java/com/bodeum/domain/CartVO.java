package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {

	private String userid;
	private int itemnum;
	private String item;
	private int itemprice;
	private String itempic;
	private String listnum;
	private int itemcnt;
}
