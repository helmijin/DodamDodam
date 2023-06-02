package com.bodeum.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.CustomerVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;

public interface ShopMapper {
	
	//여기부터 하진
//	public List<BoardVO> getList();
	public List<ReviewVO> getList();
//	public BoardVO read(int rboardnum);
	public ReviewVO read(int rboardnum);
	public void insert(ReviewVO rvo);
	public void insertSelectKey(ReviewVO rvo);
	public int delete(int rboardnum);
	public int update(ReviewVO rvo);
	public List<ReviewVO> getListWithPaging(Criterial cri);
	public int getTotalCount(Criterial cri);
	
	public ProductVO getSpecificList(int itemnum);
	public BoardVO getSpecBoard(int boardnum);
	public ReviewVO getReviewBoard(int rboardnum);	
	public void updateReplyCnt(@Param("boardnum") Long bno, @Param("amount") int amount);
	
	public List<ProductVO> getMenusort1(int catcode);
	public List<ProductVO> getMenusort2(int catcode);
	public List<ProductVO> getMenusort3(int catcode);
	public List<ProductVO> getMenusort4(int catcode);
	
	public List<CustomerVO> getcategory1(String catname);
	public List<CustomerVO> getcategory2(String catname);
	public List<CustomerVO> getcategory3(String catname);
	public List<CustomerVO> getcategory4(String catname);
	public List<CustomerVO> getcategory5(String catname);
	public List<CustomerVO> getcategory6(String catname);

	public void insertBoard(BoardVO bvo);
	public void insertBoardSelectKey(BoardVO bvo);
	
	public CustomerVO getCustomerBoard(String catname);
}