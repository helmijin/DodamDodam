package com.bodeum.service;

import java.util.List;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.ManagerVO;
import com.bodeum.domain.ProductVO;

public interface ManagerService {
	
	//김정환 - 관리자 페이지
	public void register(ProductVO vo);
	public ProductVO get(Long bno);
	public boolean modify(ProductVO vo);
	public boolean remove(Long bno);
	public List<ProductVO> getList();
	public List<ProductVO> getList(Criterial cri);
	public int getTotalCount(Criterial cri);
	
}
