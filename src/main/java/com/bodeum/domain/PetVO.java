package com.bodeum.domain;

import lombok.Data;

@Data
public class PetVO {

	private String userid;
	private String pet_name;
	private String pet_b_year;
	private String pet_b_month;
	private String pet_b_day;
	private String pet_gender;
	private String pet_kind;
	private String pet_weight;
	private String neutralization;
	private String surgery_date;
	private String report_file;
	private String pet_img;
	private int pet_number;
}
