package com.rb.etp;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.bean.EmpDto;
import com.rb.etp.services.Emp;
import com.rb.etp.services.test;


@Controller
public class HomeController {
	
	
	ModelAndView mav;
	
	@Autowired
		test tt;
	
	@Autowired
	Emp emp;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		
		mav=new ModelAndView();
		
		int i=tt.test();
		
		System.out.println("테스트중입니다"+i);
		mav.addObject("test", i);
		mav.setViewName("home");
		return mav;
	}
	
	
}
