package com.bodeum.service;

import java.util.List;

import com.bodeum.domain.BoardVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.CustomerVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;

public interface ShopService {
	//하진
		public ProductVO getSpecificList(int itemnum);
		public BoardVO getSpecBoard(int boardnum);
//		public QacatVO getQacate(String qacatcode);
		public ReviewVO getReviewBoard(int rboardnum);
		public CustomerVO getCustomerBoard(String catname);

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
		
		public void register(ReviewVO rvo);
//		public BoardVO get(int rboardnum);
		public ReviewVO get(int rboardnum);
		public boolean modify(ReviewVO rvo) throws Exception;
		public boolean remove(int rboardnum);
		public List<ReviewVO> getList(Criterial cri);
		public int getTotal(Criterial cri);
		
		public void insertBoard(BoardVO bvo);
		public void insertBoardSelectKey(BoardVO bvo);
		
	}