package com.bodeum.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bodeum.domain.BoardVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.CustomerVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;
import com.bodeum.service.ShopService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/shop/*")
public class ShopController {

	@Autowired
	private ShopService service;

	@GetMapping("/body")
	public String body() {
		return "/bodeum/shop/body";
	}

	// 고객센터
	// @GetMapping("/customer") //required=false 씀으로서 null값 바인드 가능하게 됨.
	// public String customer(@RequestParam(value="catname", required=false) String
	// catname, Model model) {
	//
	// log.info("customer==============>");
	// // CustomerVO cvo = service.getCustomerBoard(catname);
	//
	// model.addAttribute("catname", catname);
	// return "/shop/customer";

	// 고객센터
	@GetMapping("/customer") // required=false 씀으로서 null값 바인드 가능하게 됨.
	public String customer(Model model, @RequestParam(value = "cn", defaultValue = "TOP10") String catname,
			@RequestParam(value = "category", defaultValue = "1") int categories) {
		System.out.println(catname);
		System.out.println(categories);
		// int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		List<CustomerVO> customer = new ArrayList<>();
		// 2차 카테고리 내 상품 분류
		if (categories == 1) { // 상품 나오는 순 분류 => 모든 상품들이 서비스 안에 있는 sql 문장으로 분류가 되어 있는 상태 => 다른 카테고리 값도 같이 나옴
			customer = service.getcategory1(catname); // 매개변수로 2차 카테고리 값을 집어 넣어주어서 분류 되어있는 성품들 중에서 원하는 카테고리 값만 가져옴
		} else if (categories == 2) {
			customer = service.getcategory2(catname);
		} else if (categories == 3) {
			customer = service.getcategory3(catname);
		} else if (categories == 4) {
			customer = service.getcategory4(catname);
		} else if (categories == 5) {
			customer = service.getcategory5(catname);
		} else if (categories == 6) {
			customer = service.getcategory6(catname);
		}

		// System.out.println(customer);
		// System.out.println(customer);
		// System.out.println(customer);

		model.addAttribute("customer", customer);

		return "/bodeum/shop/customer";

	}

	// 카테고리내 메뉴
	@GetMapping("/menu")
	public String menu(Model model, @RequestParam(value = "c", defaultValue = "300") int catcode,
			@RequestParam(value = "search_sort", defaultValue = "1") int sort) {
		System.out.println(catcode);
		System.out.println(sort);
		// int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		List<ProductVO> product = new ArrayList<>();
		// 2차 카테고리 내 상품 분류
		if (sort == 1) { // 상품 나오는 순 분류 => 모든 상품들이 서비스 안에 있는 sql 문장으로 분류가 되어 있는 상태 => 다른 카테고리 값도 같이 나옴
			product = service.getMenusort1(catcode); // 매개변수로 2차 카테고리 값을 집어 넣어주어서 분류 되어있는 성품들 중에서 원하는 카테고리 값만 가져옴
		} else if (sort == 2) {
			product = service.getMenusort2(catcode);
		} else if (sort == 3) {
			product = service.getMenusort3(catcode);
		} else if (sort == 4) {
			product = service.getMenusort4(catcode);
		}

		// System.out.println(product);
		// System.out.println(product);
		// System.out.println(product);

		model.addAttribute("product", product);

		return "/bodeum/shop/menu";
	}

	// 상품 Q&A
	@GetMapping("/specific")
	public void specific(Model model, HttpServletRequest request) {

		int productvo = Integer.parseInt(request.getParameter("itemnum")); // 상세페이지 번호

		// System.out.println(productvo);
		// System.out.println("111111111111111111");
		// System.out.println("111111111"+productvo+"111111111");
		// System.out.println("111111111111111111");

		ProductVO pvo = service.getSpecificList(productvo);
		BoardVO boardvo = service.getSpecBoard(productvo);
		ReviewVO rvo = service.getReviewBoard(productvo);

		// System.out.println(pvo);
		// System.out.println(boardvo);
		// System.out.println(rvo);

		model.addAttribute("item", pvo);
		model.addAttribute("board", boardvo);
		model.addAttribute("rboard", rvo);
	}

	@PostMapping("/specific") // 매개변수 역할 need -> @requestparam으로 받아줌
	public String specific(BoardVO bvo, RedirectAttributes rttr) {

		log.info("Q&A==> " + bvo);
		service.insertBoardSelectKey(bvo);

		rttr.addFlashAttribute("result", bvo.getBoardnum());

		// log.info("register==> " + boardnum);
		// service.getSpecBoard(boardnum);

		// rttr.addFlashAttribute("result", boardnum.getBoardnum());

		return "redirect:/shop/specific";
	}

	@PostMapping("/insertBoard")
	public String insertBoard(BoardVO bvo, RedirectAttributes rttr) {
		log.info("Q&A==> " + bvo);
		service.insertBoardSelectKey(bvo);

		rttr.addFlashAttribute("result", bvo.getBoardnum());

		return "redirect:/shop/specific";
	}

	@GetMapping("/insertBoard")
	public void insertBoard() {

	}

	@GetMapping("/boardlist")
	public void boardlist(Criterial cri, Model model, HttpServletRequest request) {

		log.info("boardlist==============>");
		int total = service.getTotal(cri);

		model.addAttribute("boardlist", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@GetMapping("/footer")
	public String footer() {
		return "/includes/footer";
	}

	@GetMapping("/header")
	public String header() {
		return "/views/includes/header";
	}

	// 리뷰
	@GetMapping("/list")
	public void list(Criterial cri, Model model, HttpServletRequest request) {

		log.info("list==============>");
		//	    int total = service.getTotal(cri);

		model.addAttribute("list", service.getList(cri));
		//		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	// 리뷰
	@GetMapping("/register")
	public void register() {

	}

	@PostMapping("/register")
	public String register(ReviewVO rboard, RedirectAttributes rttr) {
		log.info("register==> " + rboard);
		service.register(rboard);

		rttr.addFlashAttribute("result", rboard.getRboardnum());

		return "redirect:/shop/list";
	}

	/*
	 * 첨부 파일 업로드
	 * 
	 * @PostMapping(value="/uploadAjaxAction", produces =
	 * MediaType.APPLICATION_JSON_VALUE) public ResponseEntity<List<ReviewVO>>
	 * uploadAjaxActionPOST(MultipartFile[] uploadFile) {
	 * 
	 * log.info("uploadAjaxActionPOST..........");
	 * 
	 * 이미지 파일 체크 for(MultipartFile multipartFile: uploadFile) {
	 * 
	 * File checkfile = new File(multipartFile.getOriginalFilename()); String type =
	 * null;
	 * 
	 * try { type = Files.probeContentType(checkfile.toPath());
	 * log.info("MIME TYPE : " + type); } catch (IOException e) {
	 * e.printStackTrace(); }
	 * 
	 * if(!type.startsWith("image")) {
	 * 
	 * List<ReviewVO> rvwlist = null; return new ResponseEntity<>(rvwlist,
	 * HttpStatus.BAD_REQUEST); } }// for
	 * 
	 * String uploadFolder = "C:\\upload";
	 * 
	 * 날짜 폴더 경로 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); Date date
	 * = new Date(); String str = sdf.format(date); String datePath =
	 * str.replace("-", File.separator);
	 * 
	 * 폴더 생성 File uploadPath = new File(uploadFolder, datePath);
	 * 
	 * if(uploadPath.exists() == false) { uploadPath.mkdirs(); } 이미저 정보 담는 객체
	 * List<ReviewVO> rvwlist = new ArrayList<>();
	 * 
	 * // 향상된 for for(MultipartFile multipartFile : uploadFile) {
	 * 
	 * 이미지 정보 객체 ReviewVO rvwvo = new ReviewVO();
	 * 
	 * 파일 이름 String uploadFileName = multipartFile.getOriginalFilename();
	 * rvwvo.setFileName(uploadFileName); rvwvo.setUploadPath(datePath);
	 * 
	 * uuid 적용 파일 이름 String uuid = UUID.randomUUID().toString();
	 * rvwvo.setUuid(uuid);
	 * 
	 * uploadFileName = uuid + "_" + uploadFileName;
	 * 
	 * 파일 위치, 파일 이름을 합친 File 객체 File saveFile = new File(uploadPath,
	 * uploadFileName);
	 * 
	 * 파일 저장 try { multipartFile.transferTo(saveFile);
	 * 
	 * 썸네일 생성(ImageIO) File thumbnailFile = new File(uploadPath, "s_" +
	 * uploadFileName);
	 * 
	 * BufferedImage bo_image = ImageIO.read(saveFile);
	 * 
	 * //비율 double ratio = 3;
	 * 
	 * //넓이 높이 int width = (int) (bo_image.getWidth() / ratio); int height = (int)
	 * (bo_image.getHeight() / ratio);
	 * 
	 * 
	 * Thumbnails.of(saveFile) .size(width, height) .toFile(thumbnailFile);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } rvwlist.add(rvwvo); }
	 * ResponseEntity<List<ReviewVO>> result = new
	 * ResponseEntity<List<ReviewVO>>(rvwlist, HttpStatus.OK);
	 * 
	 * return result; }
	 * 
	 * @GetMapping("/display") public ResponseEntity<byte[]> getImage(String
	 * fileName){
	 * 
	 * File file = new File("c:\\upload\\" + fileName);
	 * 
	 * ResponseEntity<byte[]> result = null;
	 * 
	 * try { HttpHeaders header = new HttpHeaders(); header.add("Content-type",
	 * Files.probeContentType(file.toPath())); result = new
	 * ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
	 * 
	 * }catch (IOException e) { e.printStackTrace(); } return result; }
	 * 
	 * 이미지 파일 삭제
	 * 
	 * @PostMapping("/deleteFile") public ResponseEntity<String> deleteFile(String
	 * fileName){
	 * 
	 * log.info("deleteFile........" + fileName);
	 * 
	 * File file = null;
	 * 
	 * try { 썸네일 파일 삭제 file = new
	 * File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8")); file.delete();
	 * 
	 * 원본 파일 삭제 String originFileName = file.getAbsolutePath().replace("s_", "");
	 * log.info("originFileName : " + originFileName); file = new
	 * File(originFileName); file.delete();
	 * 
	 * } catch(Exception e) { e.printStackTrace();
	 * 
	 * return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED); }
	 * 
	 * return new ResponseEntity<String>("success", HttpStatus.OK); }
	 */

	// 리뷰
	@PostMapping("/modify")
	public String modify(ReviewVO rvo, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) throws Exception {
		log.info("modify===> ");
		log.info("cri===> " + cri.getPageNum());
		if (service.modify(rvo)) {
			rttr.addFlashAttribute("result", "modify");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/list";
	}

	// 리뷰
	@PostMapping("/remove")
	public String remove(int rboardnum, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) {
		log.info("remove===> ");

		if (service.remove(rboardnum)) {
			rttr.addFlashAttribute("result", "delete");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/shop/list";
	}

	//리뷰 - 기존
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("rboardnum") int rboardnum, @ModelAttribute("cri") Criterial cri, Model model) {
		log.info("get or modify ======> ");
		model.addAttribute("rboardnum", service.get(rboardnum));
	}

	//	@GetMapping("/get")
	//	public void get(@RequestParam("rboardnum") int rboardnum, Model model) {
	//		log.info("/get");
	//		model.addAttribute("board", service.get(rboardnum));
	//	}

	@PostMapping("Modify")
	public String modify(ReviewVO rvo, RedirectAttributes rttr) throws Exception {
		log.info("modify:" + rvo);

		if (service.modify(rvo)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/shop/list";
	}

}