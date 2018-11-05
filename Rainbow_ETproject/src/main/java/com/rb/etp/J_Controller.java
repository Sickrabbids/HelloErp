package com.rb.etp;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Service
public class J_Controller {

	
	

	@RequestMapping(value = "materialInfoList", produces = "application/text; charset=utf8")
	public ModelAndView home() {
		
		
		return null;
	}
}
