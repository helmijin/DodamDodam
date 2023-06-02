package com.bodeum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bodeum.domain.PetVO;
import com.bodeum.mapper.MemberMapper;
import com.bodeum.mapper.PetMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class PetServiceimpl implements PetService{
	
	@Autowired
	private PetMapper mapper;

	@Override
	public PetVO get(String userid, String pet_name) {
		return mapper.read(pet_name, userid);
	}

	@Override
	public void register(PetVO vo) {
		mapper.insert(vo);
	}

	@Override
	public boolean modify(PetVO vo) {
		return mapper.update(vo) == 1;
	}

	@Override
	public boolean remove(String userid, String pet_name) {
		return mapper.delete(pet_name, userid) == 1;
	}




}
