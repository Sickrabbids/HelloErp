package com.rb.etp;



import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.rb.etp.bean.L_MemberBean;
import com.rb.etp.services.L_memberService;

@Controller
public class L_Controller {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	L_memberService ms;
	
	ModelAndView mav;
	
	//처음페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		
		mav = new ModelAndView();
		mav.setViewName("index");		
		return mav;
	}
	
	//ajax를 이용한 로그인 페이지
	@ResponseBody
	@RequestMapping(value = "/logIn", method = RequestMethod.POST)
	public int logIn(L_MemberBean mb, HttpServletRequest request) {
		
		int mbreturn = ms.logIn(mb, request);
		return mbreturn;
	
	}
	
	//어드민계정 페이지
	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	public ModelAndView adminMain() {
		
		mav = new ModelAndView();
		mav.setViewName("adminMain");		
		return mav;
	}
	
	//erp계정 페이지
	@RequestMapping(value = "/erpMain", method = RequestMethod.GET)
	public ModelAndView erpMain() {
		
		mav = new ModelAndView();
		mav.setViewName("erpmain");		
		return mav;
	}
	
	//로그아웃
	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public ModelAndView logOut(HttpServletRequest request) {
		
		mav = new ModelAndView();
		mav = ms.logOut(request);		
		return mav;
	}
	
	//약관 동의 페이지
	@RequestMapping(value = "/provisionForm", method = RequestMethod.GET)
	public ModelAndView provisionForm() {
		
		mav = new ModelAndView();
		mav.setViewName("provisionForm");		
		return mav;
	}
	
	//회원가입 페이지
		@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
		public ModelAndView joinForm() {
			
			mav = new ModelAndView();
			mav.setViewName("joinForm");		
			return mav;
			
		}
		
		//회원가입 페이지
		@ResponseBody
		@RequestMapping(value = "/L_memberIdMatching_s", method = RequestMethod.POST)
		public int L_memberIdMatching_s(String m_id) {
			
			
			int result = ms.L_memberIdMatching_s(m_id); 
			return result;
			
		}
		
	
}
