package com.bodeum.mapper;

import java.util.List;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;


public interface EduMapper {
	
	//교육상품
	public List<EduVO> getList();
	public List<EduVO> getItemList(int vo);
	public List<EdugroupVO> getGroupList();
	public List<EdugroupVO> getGroupItemList(int vo);
	public List<EdusingleVO> getSingleList();
	public List<EdusingleVO> getSingleItemList(int vo);
	
	//게시판
	public List<EduBoardVO> getEduboardList(Criterial cri);
	public EduBoardVO read(int itemnum);
	public void create(EduBoardVO vo);
	public void update(EduBoardVO vo);
	public void delete(int boardnum);
	public void increaseViewcnt(int boardnum);
	public int countArticle(String searchOption, String keyword);
	public int getEduboardListTotal(Criterial cri);




}
