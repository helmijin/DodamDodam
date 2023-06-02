package com.bodeum.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.mapper.EduMapper;

@Service
public class EduServiceimpl implements EduService{

	@Autowired
	public EduMapper EduMapper ;
	
	
	
	@Override
	public List<EduVO> getList() {
		
		return EduMapper.getList();
	}



	@Override
	public List<EduVO> getItemList(int vo) {
		
		return EduMapper.getItemList(vo);
	}



	@Override
	public List<EdugroupVO> getEdugroupList() {
		
		return EduMapper.getGroupList();
	}



	@Override
	public List<EdugroupVO> getGroupItemList(int vo) {
		
		return EduMapper.getGroupItemList(vo);
	}



	@Override
	public List<EdusingleVO> getSingleList() {
		
		return EduMapper.getSingleList();
	}



	@Override
	public List<EdusingleVO> getSingleItemList(int vo) {
		
		return EduMapper.getSingleItemList(vo);
	}

	@Override
	public List<EduBoardVO> getEduboardList(Criterial cri) {
		
		return EduMapper.getEduboardList(cri);
	}


	@Override
	public void Educreate(EduBoardVO vo) {
	String title = vo.getTitle();
	String content = vo.getContent();
	String userid = vo.getUserid();
	//(a,b) a를 b로 변경
	title=title.replace("<", "&lt;");
	title=title.replace("<", "&gt;");
	userid=userid.replace("<", "&lt;");
	userid=userid.replace("<", "&gt;");
	
	//공백처리
	title=title.replace(" ",  "&nbsp;&nbsp;");
	userid=userid.replace(" ",  "&nbsp;&nbsp;");
	
	//줄바꿈 처리
	content=content.replace("\n", "<br>");
	vo.setTitle(title);
	vo.setContent(content);
	vo.setUserid(userid);
	
	EduMapper.create(vo);		
	}


	@Override
	public EduBoardVO read(int boardnum) {
		
		return EduMapper.read(boardnum);
	}



	@Override
	public void update(EduBoardVO vo) {
		
		EduMapper.update(vo);
		
	}



	@Override
	public void delete(int boardnum) {
		
		EduMapper.delete(boardnum);
		
	}



	@Override
	public void increaseViewcnt(int boardnum, HttpSession session) {
		long update_time=0;
		
		//최초 조회시 세션에 저장된 값이 없기 때문에if문 실행x
		if(session.getAttribute("update_time_"+boardnum)!=null) {
								//세션에서 가져옴
			update_time=(long)session.getAttribute("update_time_"+boardnum);
		}
		
		//현재 시간 저장
		long current_time=System.currentTimeMillis();
		if(current_time - update_time>5*1000) {
			EduMapper.increaseViewcnt(boardnum);
			session.setAttribute("update_time_"+boardnum, current_time);
		}
	}



	@Override
	public int getEduboardListTotal(Criterial cri) {
		
		return EduMapper.getEduboardListTotal(cri);
	}












}



	