package com.bodeum.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.ManagerVO;
import com.bodeum.domain.ProductVO;


public interface ManagerMapper {
	
	//김정환 - 관리자 페이지
	public List<ProductVO> getList();
	public ProductVO read(Long bno);
	public void insert(ProductVO board);
	public void insertSelectKey(ProductVO board);
	public int delete(Long bno);
	public int update(ProductVO board);
	public List<ProductVO> getListWithPaging(Criterial cri);
	public int getTotalCount(Criterial cri);
	
	
	
	
	
	
	
	
}
