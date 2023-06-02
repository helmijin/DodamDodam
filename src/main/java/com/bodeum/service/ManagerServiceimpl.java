package com.bodeum.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.ManagerVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.mapper.ManagerMapper;

@Service
public class ManagerServiceimpl implements ManagerService {

	@Autowired
	public ManagerMapper boardMapper ;
	
	//김정환
	@Override
	public void register(ProductVO vo) {
		boardMapper.insertSelectKey(vo);
	}

	@Override
	public ProductVO get(Long bno) {
		return boardMapper.read(bno);
	}

	@Override
	public boolean modify(ProductVO vo) {
		return boardMapper.update(vo)==1? true : false;
	}

	@Override
	public boolean remove(Long bno) {
		return boardMapper.delete(bno)==1? true : false;
	}

	@Override
	public List<ProductVO> getList() {
		return boardMapper.getList();
	}

	@Override
	public List<ProductVO> getList(Criterial cri) {
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotalCount(Criterial cri) {
		
		return boardMapper.getTotalCount(cri);
	}

	

}
