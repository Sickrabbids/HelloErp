package com.rb.etp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value = "/employmentList", method = RequestMethod.GET)
	public ModelAndView empList() {
		mav=new ModelAndView();
		mav=emp.empList();
		mav.setViewName("employmentList");
		return mav;
	}
	@RequestMapping(value = "/empinsertForm")
	public ModelAndView empinsertForm() {
		mav=new ModelAndView();
		mav.setViewName("empinsertForm");
		return mav;
	}
	@RequestMapping(value = "/empinsert")
	public  ModelAndView empinsert(EmpDto eDto) {
		mav=new ModelAndView();
		mav=emp.empinsert(eDto);
		return mav;
	}
	@RequestMapping(value = "/empInfo")
	public  ModelAndView empInfo (HttpServletRequest req) {
		mav=new ModelAndView();
		String test=req.getParameter("e_code");
		System.out.println(test);
		mav=emp.empInfo(test);
		return mav;
	}
	
	
}
