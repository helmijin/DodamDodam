package com.bodeum.service;

import com.bodeum.domain.PetVO;

public interface PetService {

	public PetVO get(String userid, String pet_name);
	public void register(PetVO vo);
	public boolean modify(PetVO vo);
	public boolean remove(String userid, String pet_name);
}
