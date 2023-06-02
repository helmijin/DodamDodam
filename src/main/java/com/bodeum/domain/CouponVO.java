package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CouponVO {

	private String userid;
	private String coupon;
	private int disco;
	private String exp;
	private String itemcat;
}
