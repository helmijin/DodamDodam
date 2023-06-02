package com.bodeum.mapper;

import com.bodeum.domain.PetVO;

public interface PetMapper {
	
	public PetVO read(String pet_name, String userid);
	public void insert(PetVO pet);
	public int update(PetVO pet);
	public int delete(String pet_name, String userid);

}
