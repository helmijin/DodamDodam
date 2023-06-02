package com.bodeum.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

public class CartDTO {

	private int sumitemprice;

	public int sumitemprice(List<CartVO> vo) {

		for (CartVO sitemprice : vo) {

			sumitemprice += sitemprice.getItemprice() * sitemprice.getItemcnt();

		}

		return sumitemprice;
	}

	public int itemdeliveryfee(List<CartVO> vo) {

		for (CartVO sitemprice : vo) {

			sumitemprice += sitemprice.getItemprice() * sitemprice.getItemcnt();

		}
		
		if(sumitemprice>50000) {
			
			return 0;
			
		}
		else return 3000;
	}
	
}
