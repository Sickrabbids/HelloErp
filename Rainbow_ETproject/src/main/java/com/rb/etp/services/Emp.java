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
		if(eDto.getE_email().equals("") || eDto.getE_email() ==null) {
			eDto.setE_email("등록된 이메일이 없습니다.");
		}
		if(eDto.getE_bankname().equals("") || eDto.getE_bankname() ==null) {
			eDto.setE_bankname("등록된 은행이 없습니다.");
		}
		if(eDto.getE_banknum().equals("") || eDto.getE_banknum() ==null) {
			eDto.setE_banknum("등록된 계좌번호가 없습니다.");
		}
		if(eDto.getE_bigo().equals("") || eDto.getE_bigo() ==null) {
			eDto.setE_bigo("등록된 비고가 없습니다.");
		}
		if(eDto.getRank_name().equals("") || eDto.getRank_name() == null) {
			eDto.setRank_name("등록된 직급이 없습니다.");
		}
		if(eDto.getDept_name().equals("") || eDto.getDept_name() ==null) {
			eDto.setDept_name("등록된 부서가 없습니다.");
		}
		ie.insertemp(eDto);
		return mav;
	}

	public String empInfo(String test) {
		mav = new ModelAndView();
		EmpDto eDto = ie.empInfo(test);
		Gson gson=new Gson(); 
		String json=gson.toJson(eDto);
		return json;
		/*StringBuilder sb = new StringBuilder();
		sb.append("{\"result\":[");
			sb.append("[{\"e_code\":\"" + eDto.getE_code() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_name() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_idnum() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_indate() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_email() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_phone() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_bankname() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_banknum() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_address() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_bigo() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_basicpay() + "\"},");
			sb.append("{\"value\":\"" + eDto.getE_state() + "\"},");
			sb.append("{\"value\":\"" + eDto.getDept_name() + "\"},");
			sb.append("{\"value\":\"" + eDto.getRank_name()+ "\"}],");
		sb.append("]}");
		return sb.toString();*/
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

	public int ajmulticheck(String e_code) {
		int result=ie.ajmulticheck(e_code);
		return  result;
	}
}
