package com.company.dalo;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.Criteria;
import com.company.domain.PageMaker;
import com.company.domain.ProductVO;
import com.company.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Inject
	private ProductService ps;
	/*
	 * @RequestMapping(value="/list", method=RequestMethod.GET) public void
	 * listAll(Model model) throws Exception{ logger.info("모든 글 목록을 다 가져옵니다");
	 * model.addAttribute("list", bs.listAll()); }
	 */
	
	@RequestMapping(value="/read/{bno}", method=RequestMethod.GET)
	public String read(@PathVariable("bno") int bno, Model model) throws Exception{
		model.addAttribute(ps.read(bno));
		return "/product/read";
	}
	
	@RequestMapping(value="/modify/{bno}", method=RequestMethod.GET)
	public String modify(@PathVariable("bno") int bno, Model model) throws Exception{
		model.addAttribute(ps.read(bno));
		return "/product/modify";
	}
	@RequestMapping(value="/modify/{bno}", method=RequestMethod.POST)
	public String modifyPOST(ProductVO board, Model model, RedirectAttributes rttr) {
		logger.info("글 등록 POST 요청입니다");
		logger.info(board.toString());
		try {
			ps.modify(board);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result", "fail");
			model.addAttribute("errorMsg", e.getMessage());
			return "/product/afterPost";
		}
		
		rttr.addAttribute("result", "success");
		return "redirect:/product/listPage";
	}
	
	@RequestMapping(value="/remove/{bno}", method=RequestMethod.GET)
	public String remove(@PathVariable("bno") int bno, Model model) throws Exception{
		ps.remove(bno);
		return "redirect:/product/listPage";
	}
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public String listPage(@ModelAttribute("cri") Criteria cri, Model model, HttpServletRequest request) throws Exception {
		
		logger.info(cri.toString());
		
		model.addAttribute("list", ps.listCriteria(cri));  // 게시판의 글 리스트
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(ps.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);  // 게시판 하단의 페이징 관련, 이전페이지, 페이지 링크 , 다음 페이지
		request.setAttribute("page", pageMaker);
		Criteria criteria = new Criteria();
		request.setAttribute("page2", criteria);
		return "product/listPage";
	}
	
	@RequestMapping(value="/addProduct", method=RequestMethod.GET)
	public void addProductGET() throws Exception{
		logger.info("글 등록 GET 요청입니다");
	}
	
	@RequestMapping(value="/addProduct", method=RequestMethod.POST)
	public String addProductPOST(ProductVO board, Model model, RedirectAttributes rttr) {
		logger.info("글 등록 POST 요청입니다");
		logger.info(board.toString());
		try {
			ps.regist(board);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result", "fail");
			model.addAttribute("errorMsg", e.getMessage());
			return "/product/listPage";
		}
		
		rttr.addAttribute("result", "success");
		return "redirect:/product/listPage";
	}
}