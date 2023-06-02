package com.bodeum.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;



public interface EduService {

	//영상교육
	public List<EduVO> getList();
	
	//영상교육 db값 불러오기
	public List<EduVO> getItemList(int vo);
	
	//그룹 교육 값 가져오기
	public List<EdugroupVO> getEdugroupList();
	
	//그룹 교육 상세보기
	public List<EdugroupVO> getGroupItemList(int vo);
	
	//개인 교육 값 가져오기 
	public List<EdusingleVO> getSingleList();
	
	//개인 교욱 상세보기
	public List<EdusingleVO> getSingleItemList(int vo);
	
	//게시글
	//게시글 전체보기
	public List<EduBoardVO> getEduboardList(Criterial cri);

	//게시글 작성
	public void Educreate(EduBoardVO vo);

	//게시글 상세보기
	public EduBoardVO read(int boardnum);
	
	//게시글 수정
	public void update(EduBoardVO vo);
	
	//게시글 삭제
	public void delete(int boardnum);
	
	//게시글 조회
	public void increaseViewcnt(int boardnum, HttpSession session);

	public int getEduboardListTotal(Criterial cri);
}
