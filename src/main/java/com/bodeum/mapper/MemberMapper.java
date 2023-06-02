package com.bodeum.mapper;

import java.util.List;

import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.domain.MemberVO;


public interface MemberMapper {

	public void insertMember(MemberVO member);

	public int idcheck(String userid);

	public MemberVO login(MemberVO vo);
	
	public String deleteMember(MemberVO member);

	public String search_id(MemberVO vo);

	public String search_id2(MemberVO vo);

	public void eduregistert(EduBoardVO vo);
	

	
}
