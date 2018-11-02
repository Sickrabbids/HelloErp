package com.rb.etp.services;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.Dao.L_MemberDao;
import com.rb.etp.bean.L_MemberBean;


@Service
public class L_memberService {
	
	@Autowired
	HttpSession Session;
	
	@Autowired
	private L_MemberDao mDao; 
	
	ModelAndView mav;
	
	public ModelAndView memberIdMatching_s(String m_id) {
		mav = new ModelAndView();
		String view = null;
		String abc =mDao.memberIdMatching_Dao(m_id);
		//System.out.println("정말 중복검사인가?"+abc);
		view="joinForm";
		mav.setViewName(view);
		return mav;
	}
	//logIn Service
	public int logIn(L_MemberBean mb, HttpServletRequest request) {
		// TODO Auto-generated method stub
		int result=0;
		HttpSession session = request.getSession();
		session.setAttribute("m_id", mb.getM_id());
		mb = mDao.logIn(mb);
		
		if(mb.getM_id()==null || mb.getM_pwd()==null) {
			result = 0;
			return result;
		}else if(mb.getM_id().equals("ker")){
			result = 1;
			return result;
		}else{
			result = 2;
			return result;
		}
				
	}
	//logOut Service
	public ModelAndView logOut(HttpServletRequest request) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		String view = null;
		HttpSession session = request.getSession();
		session.invalidate();
		view="index";
		mav.setViewName(view);
		return mav;
	}
	
	public int L_memberIdMatching_s(String m_id) {
		
		m_id = mDao.L_memberIdMatching_s(m_id);
		int result = 0;
		if(m_id==null){
			result = 0; 
			return result;	
			
			
		}else {
			result = 1;
			return result;
		}
		
		
	}


}
