package com.bodeum.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.CustomerVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;
import com.bodeum.mapper.ShopMapper;

@Service
public class ShopServiceimpl implements ShopService {

	@Autowired
	public ShopMapper boardMapper;

	@Override
	public ProductVO getSpecificList(int itemnum) {
		return boardMapper.getSpecificList(itemnum);
	}
	@Override
	public void register(ReviewVO rvo) {
		boardMapper.insertSelectKey(rvo);
	}

	//	@Override
	//	public BoardVO get(int rboardnum) {
	//		return boardMapper.read(rboardnum);
	//	}

	@Override
	public ReviewVO get(int rboardnum){
		return boardMapper.read(rboardnum);
	}

	@Override
	public boolean modify(ReviewVO rvo) {
		return boardMapper.update(rvo)==1? true : false;
	}

	@Override
	public boolean remove(int rboardnum) {
		return boardMapper.delete(rboardnum)==1? true : false;
	}

	@Override
	public List<ReviewVO> getList(Criterial cri) {
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criterial cri) {
		return boardMapper.getTotalCount(cri);
	}

	//	@Override
	//	public ProductVO getSpecificList() {
	//		return boardMapper.getSpecificList();
	//	}

	@Override
	public BoardVO getSpecBoard(int boardnum) {
		return boardMapper.getSpecBoard(boardnum);
	}

	//	@Override
	//	public QacatVO getQate(String qacatcode) {
	//		return boardMapper.getQacate(qacatcode);
	//	}

	@Override
	public ReviewVO getReviewBoard(int rboardnum) {
		return boardMapper.getReviewBoard(rboardnum);
	}
	@Override
	public List<ProductVO> getMenusort1(int catcode) {
		return boardMapper.getMenusort1(catcode);
	}
	@Override
	public List<ProductVO> getMenusort2(int catcode) {
		return boardMapper.getMenusort2(catcode);
	}
	@Override
	public List<ProductVO> getMenusort3(int catcode) {
		return boardMapper.getMenusort3(catcode);
	}
	@Override
	public List<ProductVO> getMenusort4(int catcode) {
		return boardMapper.getMenusort4(catcode);
	}
	@Override
	public void insertBoard(BoardVO bvo) {
		boardMapper.insertBoard(bvo);

	}
	@Override
	public void insertBoardSelectKey(BoardVO bvo) {
		boardMapper.insertBoardSelectKey(bvo);

	}
	@Override
	public CustomerVO getCustomerBoard(String catname) {
		return boardMapper.getCustomerBoard(catname);
	}
	@Override
	public List<CustomerVO> getcategory1(String catname) {
		return boardMapper.getcategory1(catname);
	}
	@Override
	public List<CustomerVO> getcategory2(String catname) {
		return boardMapper.getcategory2(catname);
	}
	@Override
	public List<CustomerVO> getcategory3(String catname) {
		return boardMapper.getcategory3(catname);
	}
	@Override
	public List<CustomerVO> getcategory4(String catname) {
		return boardMapper.getcategory4(catname);
	}
	@Override
	public List<CustomerVO> getcategory5(String catname) {
		return boardMapper.getcategory5(catname);
	}
	@Override
	public List<CustomerVO> getcategory6(String catname) {
		return boardMapper.getcategory6(catname);
	}
}