package com.bodeum.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.mapper.MyPageMapper;

@Service
public class MyPageServiceimpl implements MyPageService {
	
	@Autowired
	public MyPageMapper mapper;
	
	//김정환
	@Override
	public List<CartVO> getCartList(String userid) {
		return mapper.getCartList(userid);
	}
	
	@Override
	public void deleteCartList(@Param("userid")String userid, @Param("itemnum")int itemnum) {
		mapper.deleteCartList(userid, itemnum);
	}
	
	@Override
	public void updateCartList(@Param("userid")String userid, @Param("itemnum")int itemnum, @Param("itemcnt")int itemcnt) {
		mapper.updateCartList(userid, itemnum, itemcnt);	
	}

	@Override
	public List<OrderListVO> getOrderList(int ordernum) {
		return mapper.getOrderList(ordernum);
	}

	@Override
	public List<CouponVO> getCouponList(String userid) {
		return mapper.getCouponList(userid);
	}

	@Override
	public MemberVO getUser(String userid) {
		return mapper.getUser(userid);
	}

	@Override
	public AddressVO getAddress(String userid) {
		return mapper.getAddress(userid);
	}

	@Override
	public PaymentVO getPayment(String userid) {
		return mapper.getPayment(userid);
	}

	@Override
	public List<ProductVO> getProduct(int itemnum) {
		return mapper.getProduct(itemnum);
	}

	@Override
	public List<ProductVO> getProductList() {
		return mapper.getProductList();
	}
	
	//성영준
	
	@Override
	public MemberVO get(@Param("userid")String userid) {
		return mapper.read(userid);
	}

	@Override
	public void modify(@Param("zxcv1")MemberVO vo) {
		mapper.update(vo);
	}

	@Override
	public boolean remove(String userid) {
		return mapper.delete(userid) ==1;
	}

}
