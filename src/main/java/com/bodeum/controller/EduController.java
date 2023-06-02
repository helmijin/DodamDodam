package com.bodeum.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.service.EduService;
import com.bodeum.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/edu/*")
public class EduController {
	
	@Autowired
	 private EduService service;
	
	@Autowired
	private MemberService mservice;
	
	@GetMapping("/main")
	public void main(HttpSession session) {
	
	}
	
	 
	@GetMapping("/company")
	public String company() {
	
		return "/bodeum/edu/company";
		
	}
	
	@GetMapping("/map")
	public void map() {
	
		
	}
	
	@GetMapping("/video")
	public void video() {
	
	}
	
	@GetMapping("/group")
	public void group() {
		
	}
	
	
	@GetMapping("/single")
	public void single() {
		
	}

	@GetMapping("/edulist")
	public void edulist(Model model) {
		List<EduVO> List = service.getList();
		log.info("edulist==============>"+List);
		
//		int aaa = List.get(0).getEdupic();
//		DecimalFormat df = new DecimalFormat("###,###,###");
//		String bbb = df.format(aaa);
		
		model.addAttribute("edulist", List);
	}
	
	
	
	@GetMapping("/eduitem")
	public String eduitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EduVO> List = service.getItemList(vo);
			

		
		model.addAttribute("eduitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/eduitem";
	}
	
	
	@GetMapping("/edugroup")
	public void edugroup(Model model) {
		List<EdugroupVO> GroupList = service.getEdugroupList();
		log.info("edugrouplist==============>"+GroupList);

		
		model.addAttribute("edugroup", GroupList);
		
	}
	
	
	@GetMapping("/edugroupitem")
	public String edugroupitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EdugroupVO> List = service.getGroupItemList(vo);
			

		
		model.addAttribute("edugroupitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/edugroupitem";
	}
	
	
	
	
	@GetMapping("/edusingle")
	public void edusingle(Model model) {
		List<EdusingleVO> List = service.getSingleList();
		log.info("eduSinglelist==============>"+List);
		

		model.addAttribute("edusingle", List);
	}
	

	@GetMapping("/edusingleitem")
	public String edusingleitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EdusingleVO> List = service.getSingleItemList(vo);
			

		
		model.addAttribute("edusingleitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/edusingleitem";
	}
	
	
	@GetMapping("/join")
	public void join() {
		
	}
	
	
	
	
	
	@PostMapping("/join")
	public String join(HttpServletRequest request) {
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int b_year = Integer.parseInt(request.getParameter("b_year"));
		int b_month = Integer.parseInt(request.getParameter("b_month"));
		int b_day = Integer.parseInt(request.getParameter("b_day"));
		String ph1 =request.getParameter("ph1");
		String ph2 =request.getParameter("ph2");
		String ph3 =request.getParameter("ph3");
		String sms =request.getParameter("sms");
		String mailing =request.getParameter("mailing");
		String email1 =request.getParameter("email1");
		String email2 =request.getParameter("email2");
		String agree1 =request.getParameter("agree1");
		String agree2 = request.getParameter("agree2");
		String agree3 = request.getParameter("agree3");
		
		MemberVO vo = new MemberVO();
		
		vo.setUserid(userid);
		vo.setPasswd(passwd);
		vo.setName(name);
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
		vo.setAgree1(agree1);
		vo.setAgree2(agree2);
		vo.setAgree3(agree3);
		vo.setGrede("일반회원");
		vo.setPoint(0);
			
		mservice.insertMember(vo);
		
		return "redirect:/bodeum/edu/main";
	}
	
	@RequestMapping(value="/idcheck", method= {RequestMethod.GET})
	@ResponseBody
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String userid){
		int result=mservice.idcheck(userid);
		System.out.println("========================"+result);
		return result;
	
		
	}
	
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	
	
	
	@PostMapping("/login")
	public String login(@RequestParam("uid") String userid, @RequestParam("passwd") String passwd, HttpSession session) {
		
		MemberVO vo=new MemberVO();
		vo.setUserid(userid);
		vo.setPasswd(passwd);
		
		MemberVO login=mservice.login(vo);
		if(login!=null) {
			session.setAttribute("user", login);
			
		}
		return "/bodeum/edu/main";
		
	}
	
	
	@GetMapping("/delete")
	public String delete(MemberVO vo, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("user");
		String sessionUserid = member.getUserid();
		String voUserid = vo.getUserid();
		
		if((sessionUserid.equals(voUserid))) {
			mservice.deleteMember(member);
			session.invalidate();
		}
		return "/bodeum/edu/main";
		
		
		
		
	}
	
	@GetMapping("/logout")
	public String delete(HttpSession session) {
		session.invalidate();
	
		return "/bodeum/edu/main";
	}
	

	
	
	@GetMapping("/findid")
	public void findid() {
		
	
	}
	
	
	
	@RequestMapping(value="/searchid", method= {RequestMethod.GET})
	@ResponseBody
	public String search_id(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String name, String email1, String email2){
	
		System.out.println(name+" "+email1+" "+email2);
		MemberVO vo=new MemberVO();
		vo.setName(name);
		vo.setEmail1(email1);
		vo.setEmail2(email2);
		
		
		String userid=mservice.searchid(vo);
		System.out.println("========================"+userid);
		
		return userid;
		
	
	}
	
	
	@RequestMapping(value="/searchid2", method= {RequestMethod.GET})
	@ResponseBody
	public String search_id2(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String name, String ph1, String ph2, String ph3){
	
		System.out.println(name+" "+ph1+" "+ph2+" "+ph3);
		MemberVO vo=new MemberVO();
		vo.setName(name);
		vo.setPh1(ph1);
		vo.setPh2(ph2);
		vo.setPh3(ph3);
		
		String userid=mservice.searchid2(vo);
		System.out.println("========================"+userid);
		return userid;
		
	
	}
	

	@GetMapping("/eduboardlist")
	public void eduboardlist(Criterial cri,  Model model, HttpSession session) {
		log.info("list==============>");
		int total = service.getEduboardListTotal(cri);
		
		
		model.addAttribute("list", service.getEduboardList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	
	@GetMapping("/eduregistert")
	public void eduregistert(Model model, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("user");
		String userid = member.getUserid();
		System.out.println(userid);
		model.addAttribute("userid", userid);
		
	}

	
	
	
	
	
	//게시글 작성처리
	@RequestMapping(value="/eduinsert", method=RequestMethod.POST)
	public String Eduinsert(@ModelAttribute EduBoardVO vo) {
		System.out.println("vo=================: "+vo);
		
		service.Educreate(vo);
	
		System.out.println("서비스==========: "+service);
		return"redirect:/bodeum/edu/eduboardlist";
	}
	
	
	
	//계시글 상세내용 조회
	@RequestMapping(value="/eduboardview", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int boardnum, HttpSession session, MemberVO vo) {
		

		
	//조회수 증가 처리
	service.increaseViewcnt(boardnum, session);
	
	//모델(데이터)+뷰를 함께 전달
	ModelAndView mav=new ModelAndView();
	
	mav.setViewName("/bodeum/edu/Eduboardview");
	
	
	//전달 데이터
	mav.addObject("list",service.read(boardnum));
	return mav;
	
	}
	

	
	//게시글 수정뷰 이동
	@RequestMapping(value="/eduboardmodify", method=RequestMethod.GET)
	public ModelAndView eduboardupdate(@RequestParam int boardnum) {
	
		//모델(데이터)+뷰를 함께 전달
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("/bodeum/edu/eduboardmodify");
		
		
		//전달 데이터
		mav.addObject("list",service.read(boardnum));
		return mav;
		
	}
	
	
	
	//게시글 수정
	@RequestMapping(value="/eduboardupdate", method=RequestMethod.POST)
	public String update(@ModelAttribute EduBoardVO vo) {
		service.update(vo);
		return "redirect:/bodeum/edu/eduboardlist";
	}
	
	
	
	//게시글 삭제
	@RequestMapping("/eduboarddelete")
	public String delete(@RequestParam int boardnum) {
		
		System.out.println("boardunm============:"+boardnum);
		
		service.delete(boardnum);
		return "redirect:/bodeum/edu/eduboardlist";
	}

	

	
	
	
}
