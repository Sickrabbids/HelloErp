package com.rb.etp;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.rb.etp.bean.L_MemberBean;
import com.rb.etp.services.L_memberService;


@Controller
public class L_Controller {
	
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
	public int logIn(@RequestBody HashMap<String, Object> hm, HttpServletRequest request) {//L_MemberBean mb
		int mbreturn = ms.logIn(hm, request);
		return mbreturn;
	
	}
	
		
	
	//어드민계정 페이지
	@RequestMapping(value = "/adminMain",method = RequestMethod.GET)
	public ModelAndView adminMain() {
		
		mav = new ModelAndView();
		mav.setViewName("adminMain");		
		return mav;
	}
	
/*	@ResponseBody
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public ModelAndView memberList() {
		
		mav = ms.L_memberList_s(); 
		return mav;
		
	}*/
	@ResponseBody
	@RequestMapping(value = "/L_paging", method = RequestMethod.POST)
	public HashMap<String, Object> paging(HttpServletRequest request) {
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm = ms.L_paging_s(request); 
		return hm;
		
	}
	
	//가입한 회원 목록
	
	/*
	public HashMap<String, Object> memberList(HttpServletRequest request, String page) {
		HashMap<String, Object> hm = new HashMap<String, Object>();
		 String paging =request.getParameter("paging");
		System.out.println("아니이것은?");
		System.out.println("아니이것은?"+page);
		hm = ms.L_memberList_s(request, paging); 
		
		
		return hm;
		
	}*/
	
	

	
	//erp계정 페이지
	@RequestMapping(value = "/erpmain", method = RequestMethod.GET)
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
		
		//회원가입메소드
		@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
		public ModelAndView memberJoin(L_MemberBean mb) {
			
			mav = new ModelAndView();
			mav=ms.L_memberJoin_s(mb);		
			return mav;
		}
		
		//회원가입 페이지
		@ResponseBody
		@RequestMapping(value = "/L_memberIdMatching_s", method = RequestMethod.POST)
		public int L_memberIdMatching_s(String m_id) {
			
			
			int result = ms.L_memberIdMatching_s(m_id); 
			return result;
			
		}
		
		//가입한 회원 정보
		@ResponseBody
		@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
		public ModelAndView memberInfo(String m_id, HttpServletRequest request) {
			/*L_MemberBean mb = new L_MemberBean();*/
			System.out.println("안넘어오냐?"+m_id);
			mav = ms.L_memberInfo_s(m_id, request); 
			return mav;
			
		}
		
		//가입한 회원 정보 창
		@RequestMapping(value = "/memberInfoForm", method = RequestMethod.GET)
		public ModelAndView memberInfoForm(String m_id, HttpServletRequest request) {
			mav = new ModelAndView();
			mav.setViewName("memberInfoForm");		
			return mav;
			
		}
		
	/*	//가입한 회원 정보 수정 메서드
		@RequestMapping(value = "/L_memberUpdate_s", method = RequestMethod.POST)
		public ModelAndView memberUpdate(L_MemberBean mb, HttpServletRequest request) {
			
			mav = new ModelAndView();
			mav = ms.L_memberUpdate_s(mb, request);
			return mav;
			
		}*/
		
		//가입한 회원 정보 수정 메서드
		@ResponseBody
		@RequestMapping(value = "/L_memberUpdate_s", method = RequestMethod.POST)
		public boolean memberUpdate(@RequestBody HashMap<String, Object> hm, HttpServletRequest request) {
		
			boolean update = ms.L_memberUpdate_s(hm, request);
			return update;
			
		}
		
		@RequestMapping(value = "/memberLeaveForm", method = RequestMethod.GET)
		public ModelAndView memberLeaveForm() {
			// TODO Auto-generated method stub
			mav = new ModelAndView();
			mav.setViewName("memberLeaveForm");
			return mav;
		}
		
		@RequestMapping(value = "/L_memberLeave_s", method = RequestMethod.GET)
		public ModelAndView L_memberLeave_s(HttpServletRequest request) {
			// TODO Auto-generated method stub
			mav = new ModelAndView();
			mav = ms.L_memberLeave_s(request);
			return mav;
		}
		
		
	
}
