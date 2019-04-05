package com.company.dalo;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.DTO.LoginDTO;
import com.company.domain.UserVO;
import com.company.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private UserService service;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET() {
		
	}
	
	@RequestMapping(value="/loginPost", method=RequestMethod.POST)
	public void loginPOST(LoginDTO dto, Model model) throws Exception{
		UserVO vo = service.login(dto);
		if(vo == null) {
			return;
		}
		model.addAttribute("UserVO", vo);
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registerGET() throws Exception{
		logger.info("계정 등록 GET 요청입니다");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerPOST(UserVO user, Model model, RedirectAttributes rttr) {
		logger.info("계정 등록 POST 요청입니다");
		logger.info(user.toString());
		try {
			service.regist(user);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result", "fail");
			model.addAttribute("errorMsg", e.getMessage());
			return "/user/register";
		}
		
		rttr.addAttribute("result", "success");
		return "redirect:/board/list";
	}
	
	//
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		return "user/mypage";
	}
	
	@RequestMapping(value="/updateUser", method=RequestMethod.GET)
	public void updateUserGET() throws Exception{
		logger.info("계정 수정 GET 요청입니다");
	}
	
	@RequestMapping(value="/updateUser", method=RequestMethod.POST)
	public String updatePOST(UserVO user, Model model, RedirectAttributes rttr,HttpSession session) {
		logger.info("계정 수정 POST 요청입니다");
		logger.info(user.toString());
		try {
			service.update(user);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result", "fail");
			model.addAttribute("errorMsg", e.getMessage());
			return "/user/updateUser";
		}
		session.invalidate();
		rttr.addAttribute("result", "success");
		return "redirect:/user/updateOk";
	}
	
	@RequestMapping(value = "/updateOk", method = RequestMethod.GET)
	public String updateOk(Locale locale, Model model) {
		return "user/updateOk";
	}
	
	@RequestMapping(value="/deleteUser", method=RequestMethod.POST)
	public String deletePOST(UserVO user, Model model, RedirectAttributes rttr,HttpSession session) {
		logger.info("계정 삭제 POST 요청입니다");
		logger.info(user.toString());
		try {
			service.delete(user);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result", "fail");
			model.addAttribute("errorMsg", e.getMessage());
			return "/user/mypage";
		}
		session.invalidate();
		rttr.addAttribute("result", "success");
		return "redirect:/";
	}
	
}
