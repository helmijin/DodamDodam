package com.bodeum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.domain.MemberVO;
import com.bodeum.mapper.EduMapper;
import com.bodeum.mapper.MemberMapper;

@Service
public class MemberServiceimp implements MemberService{

	@Autowired
	public MemberMapper mmapper;
	
	
	@Override
	public void insertMember(MemberVO member) {
	
		mmapper.insertMember(member);
	}


	@Override
	public int idcheck(String userid) {
		
		return mmapper.idcheck(userid);
	}


	@Override
	public MemberVO login(MemberVO vo) {
		
		return mmapper.login(vo);
	}


	@Override
	public String deleteMember(MemberVO vo) {
		
		return mmapper.deleteMember(vo);
		
	}


	@Override
	public String searchid(MemberVO vo) {
		
		return mmapper.search_id(vo);
	}


	@Override
	public String searchid2(MemberVO vo) {
		
		return mmapper.search_id2(vo);
	}




	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int delete(String userid) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int update(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	


	


	

}
