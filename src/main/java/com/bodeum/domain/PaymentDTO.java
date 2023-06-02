package com.bodeum.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class PaymentDTO {

	private int sumitemprice;

	public int sumitemprice(List<OrderListVO> vo) {

		for (OrderListVO sitemprice : vo) {

			sumitemprice += sitemprice.getOrderprice() * sitemprice.getOrderednum();

		}

		return sumitemprice;
	}

	public int itemdeliveryfee(List<OrderListVO> vo) {

		for (OrderListVO sitemprice : vo) {

			sumitemprice += sitemprice.getOrderprice() * sitemprice.getOrderednum();

		}
		
		if(sumitemprice>50000) {
			
			return 0;
			
		}
		else return 3000;
	}
	
}
