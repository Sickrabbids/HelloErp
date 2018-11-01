package com.rb.etp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.Dao.Iemp;
import com.rb.etp.Dao.testt;

@Service
public class Emp {
	
	@Autowired
	Iemp ie;
	
	ModelAndView mav;
	public ModelAndView empList() {

		return mav;
	}

	
	
}
