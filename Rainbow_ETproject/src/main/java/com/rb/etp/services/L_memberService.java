package com.rb.etp.services;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public int logIn(HashMap<String, Object> hm, HttpServletRequest request) {
		
		// TODO Auto-generated method stub
		int result=0;
		HttpSession session = request.getSession();
		
		session.setAttribute("m_id", hm.get("m_id"));
		/*System.out.println(hm.get("m_id"));
		System.out.println(hm.get("m_pwd"));*/
	
		hm = mDao.logIn(hm);
		if(hm.get("M_ID")==null) { //|| mb.getM_pwd()==null
			result = 0;
			return result;
		}else if(hm.get("M_ID").equals("ker")){
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
	public ModelAndView memberInfo() {
		// TODO Auto-generated method stub
		
		mav = new ModelAndView();
		String view = null;
		
		//System.out.println("이것도 안나오냐?"+mList);
		/*for(int num = 0; num < mList.size(); num++ ){
			mList.get(num).getM_cname();
			mList.get(num).getM_cmname();
			mList.get(num).getM_cmphone();
			System.out.println(mList.get(num).getM_cname());
			
		}*/
		//mav.addObject("mList",mList);
		
		
		mav.addObject("listHtml", makeHtml());
		view="adminMain";
		mav.setViewName(view);
		return mav;
	}
	
	public String makeHtml(){
		StringBuffer listHtml = new StringBuffer();
		
		List<L_MemberBean> mList = new ArrayList<L_MemberBean>();
		mList = mDao.memberInfo();
		
	
		listHtml.append("<table>");
		listHtml.append("<tr>");
		listHtml.append("<td>");
		listHtml.append("회사 상호");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("담당자");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("담당자 전화번호");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("수금일");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("수금여부");
		listHtml.append("</td>");
		listHtml.append("</tr>");
		
for(int num = 0; num < mList.size(); num++ ){
		listHtml.append("<tr>");
		listHtml.append("<td>");
		listHtml.append("<a href='#'>");
		listHtml.append(mList.get(num).getM_cname());
		listHtml.append("</a");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append(mList.get(num).getM_cmname());
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append(mList.get(num).getM_cmphone());
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("<input type='text' value=' ' placeholder='수금일을 입력하세요.' /> ");
		listHtml.append("</td>");
		listHtml.append("<td>");
		listHtml.append("<a href='#'>");
		listHtml.append("확인");
		listHtml.append("</a");
		listHtml.append("</td>");
		listHtml.append("</tr>");
}
		listHtml.append("</table>");		
		return listHtml.toString();
	}

}
