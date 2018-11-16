package com.rb.etp.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.rb.etp.Dao.J_materialDao;
import com.rb.etp.bean.J_material;

@Service
public class J_MaterealServices {

	ModelAndView mav;

	@Autowired
	HttpServletRequest request;

	@Autowired
	J_materialDao md;

	public ModelAndView materialInfo() {
		mav = new ModelAndView();
		HashMap<String, String> jmap = new HashMap<String, String>();
		Gson g = new Gson();
		jmap = mkey();
		if (jmap.get("connectType") != null && jmap.get("connectType").equals("add")) {
			jmap.put("title", "제품등록");
			mav.setViewName("materialInfoGod");
		} else {
			jmap = md.materialInfo(jmap.get("id"), jmap.get("code"));
			jmap.put("title", "제품정보");
			mav.setViewName("materialInfoGod");
		}
		request.setAttribute("test1", g.toJson(jmap));

		return mav;
	}

	// 업데이트 인설트 딜리트 이루어지는곳
	public ModelAndView material_U_I_D(J_material jm, MultipartHttpServletRequest multi2) {
		mav = new ModelAndView();
		HashMap<String, String> mUp = new HashMap<String, String>();
		mUp = mkey();
		jm.setGOD_ID(mUp.get("id"));
		if(mUp.get("connectType").equals("insert")) {
		

	    
	    Iterator<String> iterator = multi2.getFileNames();
	    MultipartFile multipartFile = null;
	    System.out.println("?????????????????????????????????????????????????????");
	    while(iterator.hasNext()){
	        multipartFile = multi2.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){

		        System.out.println("------------- file start -------------");
		        System.out.println("name : "+multipartFile.getName());
		        System.out.println("filename : "+multipartFile.getOriginalFilename());
		        System.out.println("size : "+multipartFile.getSize());
		        System.out.println("-------------- file end --------------\n");
	        }
	    }
	    	System.out.println("아이디"+jm.getGOD_ID());
	    	System.out.println("코드"+jm.getGOD_CODE());
	    	System.out.println("이름"+jm.getGOD_NAME());
	    	System.out.println("가격"+jm.getGOD_PRICE());

	    	
/*		md.materialInsert(jm);	*/
		}else if (mUp.get("connectType").equals("delete")) {
		md.materialDelete(jm);
		}else if (mUp.get("connectType").equals("update")) {
		md.materialUpdate(jm);	
		}
		return null;

	}

	// 아이디와 페이지이동정보 제품 코드 담아주는녀석
	public HashMap<String, String> mkey() {
		HttpSession se = request.getSession();
		String id = se.getAttribute("m_id").toString();
		String code = "";
		String connectType = "";
		HashMap<String, String> key = new HashMap<String, String>();
		key.put("id", id);
		
		try {
			code = request.getParameter("GOD_CODE").toString();
			key.put("code", code);
		} catch (Exception e) {
			System.out.println("검색할 코드가 없다...");
		}
		try {
			connectType = request.getParameter("connectType").toString();
			key.put("connectType", connectType);
		} catch (Exception e) {
			System.out.println("페이지 타입이없네 엉엉..");
		}

		return key;
	}

}
