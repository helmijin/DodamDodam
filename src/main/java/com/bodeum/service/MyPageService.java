package com.bodeum.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.PetVO;
import com.bodeum.domain.ProductVO;

public interface MyPageService {
	
	//김정환
	public List<CartVO> getCartList(String userid);
	public void deleteCartList(@Param("userid")String userid, @Param("itemnum")int itemnum);
	public void updateCartList(@Param("userid")String userid, @Param("itemnum")int itemnum, @Param("itemcnt")int itemcnt);
	public MemberVO getUser(String userid);
	public AddressVO getAddress(String userid);
	public PaymentVO getPayment(String userid);
	public List<CouponVO> getCouponList(String userid);
	public List<OrderListVO> getOrderList(int itemnum);
	public List<ProductVO> getProductList();
	public List<ProductVO> getProduct(int itemnum);
	
	//성영준
	public MemberVO get(@Param("userid")String userid);
	public void modify(@Param("zxcv1") MemberVO vo);
	public boolean remove(String userid);

}
