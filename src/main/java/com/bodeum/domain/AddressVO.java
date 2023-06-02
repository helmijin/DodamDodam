package com.bodeum.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddressVO {

	private String userid; // 유저 아이디
	private String zipcode; // 우편 번호
	private String address; // 주소
	private String address2; // 상세 주소
	
}
