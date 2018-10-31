package com.rb.etp.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rb.etp.Dao.testt;

@Service
public class test {

	@Autowired
	testt t;
	
	@Autowired
	 HttpServletRequest request;
	
	public int test() {
		System.out.println("test");
		int test=t.heha();
		request.setAttribute("test", test);
		return test;
	}

}
