package com.bodeum.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bodeum.domain.Criterial;
import com.bodeum.domain.ManagerVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.domain.ProductVO;
import com.bodeum.service.ManagerService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/manager/*")
public class ManagerController {
	
	@Autowired
	private ManagerService service;
	
	//관리자 페이지
	@GetMapping("/manager_list") 
	public void list(Criterial cri, Model model ) {
		log.info("list + cri========>");
		int total=service.getTotalCount(cri); // 총 게시글 갯수

		model.addAttribute("list",service.getList(cri)); 
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}
	
	@GetMapping("/manager_register")
	public void register() {
		
	}
	
	@PostMapping("/manager_register")
	public String register(ProductVO board, RedirectAttributes rttr) { //boardVO board<-요청과 요청한 값도 같이 불러옴
		log.info("register:"+board);
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getItemnum()); //addFlashAttribute 새로고침을 해도 딱 한번만 값을 전달
		return "redirect:/board/list"; //redirect 새로고침을 해도 저장이 안 된다. forword 방식이면 주소창에 남아서 계속 저장이 됨
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("bno")Long bno, @ModelAttribute("cri") Criterial cri, Model model) {
		log.info("get or modify==========>");
		model.addAttribute("board",service.get(bno));
	}
	
	@PostMapping("/manager_modify")
	public String modify(ProductVO board, @ModelAttribute("cri")Criterial cri, RedirectAttributes rttr) {
		log.info("modify====>");
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result","modify");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
//		return "redirect:/board/list" + cri.getListLink();
		return "abc";
		}
	
	@PostMapping("/manager_remove")
	public String remove(@RequestParam("bno")Long bno, @ModelAttribute("cri")Criterial cri, RedirectAttributes rttr) {
		log.info("remove====>");
		
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result","delete");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/list" + cri.getListLink();
		}

}

