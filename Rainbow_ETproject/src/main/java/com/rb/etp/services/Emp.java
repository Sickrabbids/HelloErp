package com.rb.etp.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.Dao.Iemp;
import com.rb.etp.bean.EmpDto;

@Service
public class Emp {
	
	@Autowired
	Iemp ie;
	
	
	ModelAndView mav;
	
	
	public ModelAndView empList() {
		mav=new ModelAndView();
		List<EmpDto> eList =ie.getEmpList();
		mav.addObject("test", eList);
		return mav;
	}


	public ModelAndView empinsert(EmpDto eDto) {
		mav=new ModelAndView();
		ie.insertemp(eDto);
		return mav;
	}

	
	
}
