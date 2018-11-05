package com.rb.etp;


import java.util.HashMap;
import java.util.Hashtable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.bean.EmpDto;
import com.rb.etp.services.Emp;


@Controller
public class H_Controller {
	
	
	ModelAndView mav;
	
	@Autowired
	Emp emp;
	
	
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
		eDto.setE_id("heo");
		System.out.println(eDto.getDept_name());
		mav=emp.empinsert(eDto);
		return mav;
	}
/*	@RequestMapping(value = "/empInfo")
	public  ModelAndView empInfo (HttpServletRequest req) {
		mav=new ModelAndView();
		String test=req.getParameter("e_code");
		mav=emp.empInfo(test);
		return mav;
	}
	*/
	
	@RequestMapping(value = "/ajempInfo")
	public  @ResponseBody String ajempInfo (HttpServletRequest req) {
		mav=new ModelAndView();
		String test=req.getParameter("e_name");
		String json=emp.empInfo(test);
		return test;
	}
	@RequestMapping(value = "/ajempsearchData", produces = "application/json; charset=utf8")
	public  @ResponseBody String ajsearchData (HttpServletRequest req) {
		mav=new ModelAndView();
		String data=req.getParameter("data");
		String type=req.getParameter("type");
		HashMap<String, String> sMap=new HashMap<>();
		sMap.put("data", data);
		sMap.put("type", type);
		String json=emp.empajsearch(sMap);
		return json;
	}
}
