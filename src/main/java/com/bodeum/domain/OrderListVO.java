package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderListVO {
	private String userid;
	private int ordernum;
	private int itemnum;
	private String ordered;
	private String orderdate;
	private int orderprice;
	private int orderednum;
	private String zipcode;
	private String address;
}
