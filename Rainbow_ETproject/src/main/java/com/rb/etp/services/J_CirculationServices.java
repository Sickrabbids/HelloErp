package com.rb.etp.services;

import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.rb.etp.Dao.J_materialDao;
import com.rb.etp.services.supporter.paging;

@Service
public class J_CirculationServices {

	ModelAndView mav;

	@Autowired
	J_materialDao md;
	
	@Autowired
	HttpServletRequest request;

	public ModelAndView materListCalling() {
		paging pa=new paging();
		ArrayList<HashMap<String, String>> arr = new ArrayList<HashMap<String, String>>();
		Gson g=new Gson();
		HttpSession sess = request.getSession();
		mav = new ModelAndView();
		Integer ajax=2;
		
		String id=sess.getAttribute("m_id").toString();
		int count=md.listCount(id);//db카운팅 몇개만들지...
		request.setAttribute("pagging",pa.pagingcount(count));
		System.out.println("누구십니까???"+request.getParameter("pageNum"));
		System.out.println("ajax 맞니?"+request.getParameter("ajaxNum"));
		Integer pageNum=Integer.parseInt(request.getParameter("pageNum").toString());
		try {
		ajax=Integer.parseInt(request.getParameter("ajaxNum").toString());
		}
		catch (Exception e) {
			System.out.println("에러레요~~"+e);
		}
		HashMap <String, String> hmap= pa.pagingSQLhelp(pageNum);
		hmap.put("id", id);
		arr = md.materListCalling(hmap);		
		if(ajax==1) {
		request.setAttribute("s_json", g.toJson(arr));
		mav.setViewName("materialInfoList");
		}
		if(ajax==2) {
		System.out.println("셋해주셧습니까?");
		request.setAttribute("s_json2",g.toJson(arr));
		
		}
		return mav;
	}
 
}

