package com.bodeum.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.domain.MemberVO;



public interface MemberService {

	//최영태
	public void insertMember(MemberVO member);

	public int idcheck(String userid);

	public MemberVO login(MemberVO vo);

	public String deleteMember(MemberVO vo);

	public String searchid(MemberVO vo);

	public String searchid2(MemberVO vo);

	//성영준
	public MemberVO read(String userid);
	public int delete(String userid);
	public int update(MemberVO member);

	

}
