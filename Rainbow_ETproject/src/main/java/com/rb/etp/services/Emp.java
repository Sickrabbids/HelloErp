package com.rb.etp.services;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.rb.etp.Dao.Iemp;
import com.rb.etp.bean.EmpDto;

@Service
public class Emp {

	@Autowired
	Iemp ie;

	ModelAndView mav;

	public ModelAndView empList() {
		mav = new ModelAndView();
		List<EmpDto> eList = ie.getEmpList();
		mav.addObject("test", eList);
		return mav;
	}

	public ModelAndView empinsert(EmpDto eDto) {
		mav = new ModelAndView();
		ie.insertemp(eDto);
		return mav;
	}

	public ModelAndView empInfo(String test) {
		mav = new ModelAndView();
		EmpDto eDto = ie.empInfo(test);
		mav.addObject("emp", eDto);
		mav.setViewName("empInfo");
		return mav;
	}

	public String empajsearch(HashMap<String, String> sMap) {
		List<EmpDto> eList = null;
		if (sMap.get("type").equals("name")) {
			String name = sMap.get("data");
			eList = ie.empajnamesearch(name);
		}
		if (sMap.get("type").equals("code")) {
			String code = sMap.get("data");
			eList = ie.empajcodesearch(code);
		}
		/*
		 * Gson gson=new Gson(); String json=gson.toJson(eList);
		 */
		StringBuilder sb = new StringBuilder();
		sb.append("{\"result\":[");
		for (int i = 0; i < eList.size(); i++) {
			sb.append("[{\"value\":\"" + eList.get(i).getE_code() + "\"},");
			sb.append("{\"value\":\"" + "<a href='#'>"+eList.get(i).getE_name()+"</a>" + "\"},");
			sb.append("{\"value\":\"" + eList.get(i).getRank_name() + "\"},");
			sb.append("{\"value\":\"" + eList.get(i).getDept_name() + "\"}],");
		}
		sb.append("]}");
		return sb.toString();

	}
}
