package com.bodeum.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;

public interface MyPageMapper {
	
	//김정환
	public List<CartVO> getCartList(String userid);
	public void deleteCartList(@Param("userid")String userid, @Param("itemnum")int itemnum);
	public void updateCartList(@Param("userid")String userid, @Param("itemnum")int itemnum, @Param("itemcnt")int itemcnt);
	public MemberVO getUser(String userid);
	public AddressVO getAddress(String userid);
	public PaymentVO getPayment(String userid);
	public List<OrderListVO> getOrderList(int ordernum);
	public List<CouponVO> getCouponList(String userid);
	public List<ProductVO> getProductList();
	public List<ProductVO> getProduct(int ordernum);
	
	//영준씨
	public MemberVO read(String userid);
	
	public int delete(String userid);
	
	public void update(MemberVO member);

	
}
