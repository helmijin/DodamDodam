package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaymentVO {
	private String paymentcode; 
	private String orderednum; 
	private String paymentsys; 
	private String paymentdate;
	private String paymentmoney; 
	private String paymentname; 
	private String paymentbank;
	private String accountholder;
	private String acoountnumber;
	private String userid;
	
}
