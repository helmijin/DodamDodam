package com.bodeum.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.CartDTO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.domain.PaymentDTO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.PetVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;
import com.bodeum.service.MyPageService;
import com.bodeum.service.PetService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/mypage/*")
public class MyPageController {

	@Autowired
	private MyPageService service;
	@Autowired
	private PetService pservice;
	
	@GetMapping("/cart") //장바구니
	public void cart(@RequestParam(value="mode", defaultValue="read") String mode, HttpServletRequest request, Model model) {
		String userid = "human111";
		int itemnum;
		int itemcnt;
		List<CartVO> cart = new ArrayList<>();
		CartDTO cartdto = new CartDTO();
		
		//RUD(읽기,업데이트,삭제)
		if(mode.equals("cart_del")) {
			System.out.println("222222222222222222222");
			itemnum = Integer.parseInt(request.getParameter("cart_del_idx"));
			System.out.println("delete"+itemnum);
			System.out.println("delete"+itemnum);
			service.deleteCartList(userid, itemnum);
		}
		else if(mode.equals("change_cnt")) {
			System.out.println("333333333333333333333333");
			System.out.println("update"+Integer.parseInt(request.getParameter("cart_edit_idx")));
			System.out.println("update"+Integer.parseInt(request.getParameter("goods_cnt")));
			itemnum = Integer.parseInt(request.getParameter("cart_edit_idx"));
			itemcnt = Integer.parseInt(request.getParameter("goods_cnt"));
			service.updateCartList(userid, itemnum, itemcnt);
		}
		
		cart = service.getCartList(userid);
		
		
		model.addAttribute("cartList",cart);
		model.addAttribute("sumprice",cartdto.sumitemprice(cart));
		model.addAttribute("deliveryfee",cartdto.itemdeliveryfee(cart));

	}
	
	@PostMapping("/cart")  // 장바구니
	public void postcart(@RequestParam(value="mode", defaultValue="read") String mode, HttpServletRequest request, Model model) {
		String userid = "human111";
		int itemnum;
		int itemcnt;
		List<CartVO> cart = new ArrayList<>();
		CartDTO cartdto = new CartDTO();
		
		//RUD(읽기,업데이트,삭제)
		if(mode.equals("cart_del")) {
			System.out.println("222222222222222222222");
			itemnum = Integer.parseInt(request.getParameter("cart_del_idx"));
			service.deleteCartList(userid, itemnum);
		}
		else if(mode.equals("change_cnt")) {
			System.out.println("333333333333333333333333");
			System.out.println("update"+Integer.parseInt(request.getParameter("cart_edit_idx")));
			System.out.println("update"+Integer.parseInt(request.getParameter("goods_cnt")));
			itemnum = Integer.parseInt(request.getParameter("cart_edit_idx"));
			itemcnt = Integer.parseInt(request.getParameter("goods_cnt"));
			service.updateCartList(userid, itemnum, itemcnt);
		}
		
		cart = service.getCartList(userid); 
		
		
		model.addAttribute("cartList",cart);
		model.addAttribute("sumprice",cartdto.sumitemprice(cart));
		model.addAttribute("deliveryfee",cartdto.itemdeliveryfee(cart));

	}
	
	@GetMapping("/payment")  //결제페이지
	public void payment(String userid, Model model) {
		int ordernum = 1234567890;	
		int itemnum = 1234567;
		userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		List<ProductVO> product = service.getProduct(itemnum);
		System.out.println(product.get(0).getItem());
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("product", product);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
		

	}

	@GetMapping("/order_complete") // 결제 완료 페이지
	public void order_complete(Model model) {
		int ordernum = 1234567890;
		String userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
		
	}

	@GetMapping("/orderList") // 결제 내역 페이지
	public void orderList(HttpServletRequest request, Model model) {
		int ordernum = 1234567890;
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		String userid = request.getParameter("userid");

		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
	}

	@GetMapping("/orderDetail")  // 결제 내역 상세 페이지
	public void orderDetail(Model model) {
		int ordernum = 1234567890;
		String userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
	}

	@GetMapping("/manager") // 관리자 페이지
	public void manager(Model model) {
		List<ProductVO> product = service.getProductList();
		
		model.addAttribute("product", product);
	}
	
	@GetMapping({"/main", "/mypage_modify"})
	public void main(Model model, HttpSession session) {
		
		MemberVO session_userid = (MemberVO)session.getAttribute("user");
		String login_userid = session_userid.getUserid();
		model.addAttribute("member", service.get(login_userid));
		
		
	}
	
	@GetMapping("/point")
	public String point(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/point";
	}
	
	@GetMapping("/coupon")
	public String coupon(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/coupon";
	}
	
	@GetMapping("/orderlist")
	public String orderlist() {
		
		return "/bodeum/mypage/orderlist";
	}	
	@GetMapping("/myinq")
	public String myinq(Model model) {
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/myinq";
	}	
	@GetMapping("/inqregister")
	public String inqregister(Model model) {
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/inqregister";
	}
	@PostMapping("/mypage_modify")
	public String mypage_modify(Model model, HttpServletRequest request, HttpSession session, @RequestParam(value="sms", defaultValue="N")String sms, @RequestParam(value="mailing", defaultValue="N")String mailing) {
		
		MemberVO session_userid = (MemberVO)session.getAttribute("user");
		String login_userid = session_userid.getUserid();

		String passwd = request.getParameter("passwd");
		String gender = request.getParameter("gender");
		int b_year = Integer.parseInt(request.getParameter("b_year"));
		int b_month = Integer.parseInt(request.getParameter("b_month"));
		int b_day = Integer.parseInt(request.getParameter("b_day"));
		String ph1 =request.getParameter("ph1");
		String ph2 =request.getParameter("ph2");
		String ph3 =request.getParameter("ph3");
//		String sms =request.getParameter("sms");
//		String mailing =request.getParameter("mailing");
		String email1 =request.getParameter("email1");
		String email2 =request.getParameter("email2");
		MemberVO vo=new MemberVO();
		vo.setUserid(login_userid);
		vo.setPasswd(passwd);
		vo.setGender(gender);
		vo.setB_year(b_year);
		vo.setB_month(b_month);
		vo.setB_day(b_day);
		vo.setPh1(ph1);
		vo.setPh2(ph2);
		vo.setPh3(ph3);
		vo.setSms(sms);
		vo.setMailing(mailing);
		vo.setEmail1(email1);
		vo.setEmail2(email2);
			
		service.modify(vo);
		service.get(login_userid);
		return "redirect:/bodeum/mypage/main";
	}
	
	
//	@GetMapping("/mypage_modify")
//	public String mypage_modify(Model model) {
//		
//		model.addAttribute("member", service.get("aaaa"));
//		
//		return "/bodeum/mypage/mypage_modify";
//	}
	@GetMapping("/mylesson")
	public String mylesson(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/mylesson";
	}
	@GetMapping("/lessonstatus")
	public String lessonstatus(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/lessonstatus";
	}
	@GetMapping("/lessonstatus_past")
	public String lessonstatus_past(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/lessonstatus_past";
	}
	@GetMapping("/reviewlist")
	public String reviewlist(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/reviewlist";
	}
	@GetMapping("/pet_register")
	public String pet_register(Model model, HttpSession session) {
			
		MemberVO session_userid = (MemberVO)session.getAttribute("user");
		String login_userid = session_userid.getUserid();
		model.addAttribute("member", service.get(login_userid));
		
		return "/bodeum/mypage/pet_register";
		}
	@PostMapping({"pet_register", "pet_modify"})
	public String pet_register(Model model, HttpServletRequest request, HttpSession session, @RequestParam(value="report_file", defaultValue="N")String report_file, @RequestParam(value="pet_img", defaultValue="N")String pet_img){
		
		MemberVO session_userid = (MemberVO)session.getAttribute("user");
		String login_userid = session_userid.getUserid();
		model.addAttribute("member", service.get(login_userid));
		
		String pet_name = request.getParameter("pet_name");
		System.out.println(pet_name);
		String pet_gender = request.getParameter("pet_gender");
		System.out.println(pet_gender);
		String pet_b_year = request.getParameter("pet_b_year");
		System.out.println(pet_b_year);
		String pet_b_month = request.getParameter("pet_b_month");
		System.out.println(pet_b_month);
		String pet_b_day = request.getParameter("pet_b_day");
		System.out.println(pet_b_day);
		String pet_kind = request.getParameter("pet_kind");
		System.out.println(pet_kind);
		String pet_weight = request.getParameter("pet_weight");
		System.out.println(pet_weight);
		String neutralization = request.getParameter("neutralization");
		System.out.println(neutralization);
		String surgery_date = request.getParameter("surgery_date");
		System.out.println(surgery_date);
		System.out.println(report_file);
		System.out.println(pet_img);
		System.out.println(login_userid);
//		String report_file = request.getParameter("report_file");
//		String pet_img = request.getParameter("pet_img");
		
		
		PetVO vo=new PetVO();
		vo.setUserid(login_userid);
		vo.setPet_name(pet_name);
		vo.setPet_gender(pet_gender);
		vo.setPet_b_year(pet_b_year);
		vo.setPet_b_month(pet_b_month);
		vo.setPet_b_day(pet_b_day);
		vo.setPet_kind(pet_kind);
		vo.setPet_weight(pet_weight);
		vo.setNeutralization(neutralization);
		vo.setSurgery_date(surgery_date);
		vo.setReport_file("file");
		vo.setPet_img("img");
			
		System.out.println("33333333333333333333333333333");
		pservice.register(vo);
		System.out.println("111111111111111111112222222222");
		return "redirect:/bodeum/mypage/main";
	}
//	@GetMapping("/pet_modify")
//	public void pet_get(@RequestParam("pet_number") int pno, Model model, HttpSession session) {
//		
//		MemberVO session_userid = (MemberVO)session.getAttribute("user");
//		String login_userid = session_userid.getUserid();
//		model.addAttribute("member", service.get(login_userid));
//		model.addAttribute("pet", pservice.get(login_userid, pno));
//	
//	}
	@GetMapping("/pet_modify")
	public void pet_get(Model model, HttpSession session) {
//		List<PetVO> vo = new ArrayList<>();
		MemberVO session_userid = (MemberVO)session.getAttribute("user");
		String login_userid = session_userid.getUserid();
//		String login_userid2 = session_userid2.getUserid();
		model.addAttribute("member", service.get(login_userid));
		model.addAttribute("pet", pservice.get(login_userid));
		
	}
}
