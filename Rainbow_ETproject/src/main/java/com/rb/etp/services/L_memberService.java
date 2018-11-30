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
import com.rb.etp.bean2.L_MemberBean;
import com.rb.etp.bean2.PageMaker;

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
		mDao.memberIdMatching_Dao(m_id);
		view = "joinForm";
		mav.setViewName(view);
		return mav;
	}

	// logIn Service
	public int logIn(HashMap<String, Object> hm, HttpServletRequest request) {

		// TODO Auto-generated method stub
		int result = 0;
		HttpSession session = request.getSession();
		session.setAttribute("m_id", hm.get("m_id"));

		hm = mDao.logIn(hm);

		if (hm.get("M_ID").equals("admin")) {
			result = 0;
			return result;
		} else {
			result = 1;
			return result;
		}

	}

	// logOut Service
	public ModelAndView logOut(HttpServletRequest request) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		String view = null;
		HttpSession session = request.getSession();
		session.invalidate();
		view = "index";
		mav.setViewName(view);
		return mav;
	}

	public int L_memberIdMatching_s(String m_id) {

		m_id = mDao.L_memberIdMatching_s(m_id);
		int result = 0;
		if (m_id == null) {
			result = 0;
			return result;

		} else {
			result = 1;
			return result;
		}

	}
	
	//paging 및 list 출력
	public HashMap<String, Object> L_paging_s(HttpServletRequest request) {
		HashMap<String, Object> hm= new HashMap<String,  Object>();
		//전체 페이지 수
		PageMaker pm = new PageMaker();
		int mDaoCount = mDao.tcount();
		pm.setTotalCount(mDaoCount);
		/*int totalCount = pm.getTotalCount();*/
		
		int totalCount = 100 ;//DB에서 가져올것
		
		//전체페이지 개수
		int pageNum = (totalCount/pm.getContentPage())+1;
	/*	System.out.println("뭐다냐 이게"+pm.getContentPage());*/
		pm.setTotalPage(pageNum);
		
	/*	if(totalCount>pm.getContentPage()*pm.getTotalPage()) {
			
			pm.setTotalPage(pageNum++);
		}*/
		
		//현재페이지
	/*	int page = Integer.parseInt(request.getParameter("page"));*/
		String page = request.getParameter("page");
		System.out.println("나와라"+page);
		if(page==null){
			page="1";
		}
		System.out.println("나와라"+page);
		pm.setPage(Integer.parseInt(page));//jsp에서 받아올것
		pm.getPage();
		if(pm.getTotalPage()<pm.getPage()){
			pm.setPage(pm.getTotalPage());
		}
		
		/*pm.setCountPage(pm.getTotalCount());
		//시작페이지
		pm.setStartPage(((pm.getPage()-1)/10)*10+1);
		//끝페이지
		pm.setEndPage(pm.getStartPage()+pm.getCountPage()-1);
		
		// 끝페이지가 전체페이지보다 클때 끝페이지는 전체페이지 
		if(pm.getEndPage()>pm.getTotalPage()){
			pm.setEndPage(pm.getTotalPage()); 
		}
		pm.setEndPage(pm.getStartPage()+pm.getCountPage()-1);
		*/
		pm.setCurrentBlock(pm.getPage()/10+1);//현재 블럭
		pm.setTotalblock(pm.getTotalPage()/10+1);
		
	/*	pm.setEndBlock(pm.getStartPage()+10-1);*/
		System.out.println("너가끝블럭이더냐?"+pm.getEndBlock());
		
		pm.setCountPage(pm.getTotalCount());
		//시작페이지
		pm.setStartPage((pm.getCurrentBlock()-1)*10+1);
		//끝페이지
		pm.setEndPage(pm.getStartPage()+10-1);
		
		// 끝페이지가 전체페이지보다 클때 끝페이지는 전체페이지 
		if(pm.getEndPage()>pm.getTotalPage()){
			pm.setEndPage(pm.getTotalPage()); 
		}
		
		
		
		List<L_MemberBean> memberList = new ArrayList<L_MemberBean>();
		
		/*int indexStart =(pm.getPage()-1)*10+1;	*/
		int indexPage = (pm.getPage()-1)*10;
		int contentPage = ((indexPage)+10);

		memberList = mDao.L_memberList_Dao(indexPage, contentPage);
	
		hm.put("list", memberList);		
		hm.put("page", pm.getPage());
		hm.put("totalPage", pm.getTotalPage());
		hm.put("startPage", pm.getStartPage());
		hm.put("endPage", pm.getEndPage());
		
		return hm;
	}
	

	public ModelAndView L_memberJoin_s(L_MemberBean mb) {

		mav = new ModelAndView();
		String view;
		
		boolean mj = mDao.L_memberJoin_Dao(mb);

		if (mj == true) {
			view = "index";
			mav.setViewName(view);
			return mav;
		}

		else if (mj == false) {
			view = "joinForm";
			mav.setViewName(view);
			return mav;
		}

		return mav;
	}

	public ModelAndView L_memberInfo_s(String m_id, HttpServletRequest request) {

		mav = new ModelAndView();
		String view;
		L_MemberBean mb = new L_MemberBean();
		mb = mDao.L_memberInfo_Dao(m_id);
		mav.addObject("mb", mb);
		view = "memberInfoForm";
		mav.setViewName(view);
		return mav;
	}

	public boolean L_memberUpdate_s(HashMap<String, Object> hm, HttpServletRequest request) {
		// TODO Auto-generated method stub
		boolean mu = mDao.L_memberUpdate_Dao(hm);
		return mu;
	}

	public ModelAndView L_memberLeave_s(HttpServletRequest request) {
		mav = new ModelAndView();
		HttpSession Session = request.getSession();
		String m_id = (String)Session.getAttribute("m_id");
		
		/*mDao.*/	
		boolean cheack = mDao.L_memberLeave_Dao(m_id);
				
		if(cheack==true) {
			String view = "index";
			mav.setViewName(view);	
			
		}else if(cheack==false) {
			String view = "memberLeaveForm";
			mav.setViewName(view);			
		}
		return mav;
	}

	
}
