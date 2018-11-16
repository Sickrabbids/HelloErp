package com.rb.etp.services;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.rb.etp.Dao.Iemp;
import com.rb.etp.bean2.EmpDto;

@Service
public class Emp {

	@Autowired
	Iemp ie;
	ModelAndView mav;

	public ModelAndView empList(int e_state) {
		mav = new ModelAndView();
		List<EmpDto> eList = ie.getEmpList(e_state);
		mav.addObject("test", eList);
		return mav;
	}

	public ModelAndView empinsert(EmpDto eDto) {
		mav = new ModelAndView();
		if (eDto.getE_email().equals("") || eDto.getE_email() == null) {
			eDto.setE_email("등록된 이메일이 없습니다.");
		}
		if (eDto.getE_bankname().equals("") || eDto.getE_bankname() == null) {
			eDto.setE_bankname("등록된 은행이 없습니다.");
		}
		if (eDto.getE_banknum().equals("") || eDto.getE_banknum() == null) {
			eDto.setE_banknum("0");
		}
		if (eDto.getE_bigo().equals("") || eDto.getE_bigo() == null) {
			eDto.setE_bigo("등록된 비고가 없습니다.");
		}
		if (eDto.getRank_name().equals("") || eDto.getRank_name() == null) {
			eDto.setRank_name("등록된 직급이 없습니다.");
		}
		if (eDto.getDept_name().equals("") || eDto.getDept_name() == null) {
			eDto.setDept_name("등록된 부서가 없습니다.");
		}
		ie.insertemp(eDto);
		return mav;
	}

	/*
	 * public String empInfo(String test) { mav = new ModelAndView(); EmpDto eDto =
	 * ie.empInfo(test); Gson gson=new Gson(); String json=gson.toJson(eDto); return
	 * json;}
	 */
	/*
	 * StringBuilder sb = new StringBuilder(); sb.append("{\"result\":[");
	 * sb.append("[{\"e_code\":\"" + eDto.getE_code() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_name() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_idnum() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_indate() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_email() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_phone() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_bankname() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_banknum() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_address() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_bigo() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_basicpay() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getE_state() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getDept_name() + "\"},");
	 * sb.append("{\"value\":\"" + eDto.getRank_name()+ "\"}],"); sb.append("]}");
	 * return sb.toString();
	 */

	public String empajsearch(HashMap<String, String> sMap) {
		List<EmpDto> eList = null;
		if (sMap.get("type").equals("name")) {
			sMap.put("E","E_NAME");
			eList = ie.empajnamesearch(sMap);
		}
		if (sMap.get("type").equals("code")) {
			sMap.put("E", "E_CODE");
			eList = ie.empajnamesearch(sMap);
		}
		/*
		 * Gson gson=new Gson(); String json=gson.toJson(eList);
		 */
		StringBuilder sb = new StringBuilder();
		sb.append("{\"result\":[");
		for (int i = 0; i < eList.size(); i++) {
			sb.append("[{\"value\":\"" + eList.get(i).getE_code() + "\"},");
			sb.append("{\"value\":\"");
			sb.append("<a href=");
			sb.append("javascript:popupOpen2('" + eList.get(i).getE_code() + "');>");
			sb.append(eList.get(i).getE_name());
			sb.append("</a>" + "\"},");
			sb.append("{\"value\":\"" + eList.get(i).getRank_name() + "\"},");
			sb.append("{\"value\":\"" + eList.get(i).getDept_name() + "\"}],");
		}
		sb.append("]}");
		return sb.toString();
	}

	public int ajmulticheck(String e_code) {
		int result = ie.ajmulticheck(e_code);
		return result;
	}

	public boolean update(MultipartHttpServletRequest multi, HashMap<String, String> pMap) {
		 String root = multi.getSession().getServletContext().getRealPath("/");
	       String path = root+"resources/upload/";
	       System.out.println(path);
	       boolean result = ie.update(pMap);
	       HashMap<String, String> pMap2=ie.empInfoPic(pMap);		//이미 있는 사진 검색후 결과로 삭제  사진을 첨부했을때만 작동하게 처리해야됨 퇴사자 퇴사이유 수정 처리해야됨
	       for ( String key : pMap2.keySet() ) {
	    	    System.out.println("방법1) key : " + key +" / value : " + pMap2.get(key));
	    	}
	    	System.out.println("=======================");
	    	String fin=path+pMap2.get("EP_SYS_PHOTO");
	    	File file = new File(fin);

			if(file.exists() == true){

			file.delete();

		}
	       ie.updatepic(pMap);
		return result;
	}

	public ModelAndView empInfo2(String code, HttpServletRequest req) {
		mav = new ModelAndView();
		HashMap<String, String> pMap = new HashMap<>();
		HashMap<String, String> pMap2 = new HashMap<>();
		String ep_id = (String) req.getSession().getAttribute("m_id");
		pMap.put("ep_id", ep_id);
		pMap.put("ep_code", code);
		pMap = ie.empInfoPic(pMap);
		pMap.put("RE_ID", ep_id);
		pMap2 = ie.empRtire(pMap);


		
		String oriName = pMap.get("EP_ORI_PHOTO");
		String sysName = pMap.get("EP_SYS_PHOTO");
		if(oriName.equals("사진없음")) {
			System.out.println(oriName);	
			String test="resources/upload/";
			String pic=test+"123";
			mav.addObject("pic", pic);
		}else {
				String test="resources/upload/";
			String pic=test+sysName;
			mav.addObject("pic", pic);
		}
		EmpDto eDto = ie.empInfo2(code);
		if(eDto.getE_state().equals("2")) {
			mav.addObject("re", "퇴직");
		}
		if(pMap2!=null) {
			mav.addObject("reason", pMap2.get("RE_REASON"));
			mav.addObject("redate", pMap2.get("RE_DATE"));
		}
		mav.addObject("eDto", eDto);
		mav.setViewName("empInfo");
		return mav;
	}

	public ModelAndView certificateEmpForm(HttpServletRequest req,Map<String, String> umap) {
		mav = new ModelAndView();
		String e_id = (String) req.getSession().getAttribute("m_id");
		umap.put("m_id", e_id);
		umap = ie.certificateEmpForm(umap);
		for ( String key : umap.keySet() ) {
		    System.out.println("방법1) key : " + key +" / value : " + umap.get(key));
		}
		System.out.println("=======================");
		
		mav.addObject("eDto", umap);
		mav.setViewName("certificateEmpForm");
		return mav;
	}

	public void empinsert2(EmpDto eDto, HashMap<String, String> fMap) {
		if (eDto.getE_email().equals("") || eDto.getE_email() == null) {
			eDto.setE_email("등록된 이메일이 없습니다.");
		}
		if (eDto.getE_bankname().equals("") || eDto.getE_bankname() == null) {
			eDto.setE_bankname("등록된 은행이 없습니다.");
		}
		if (eDto.getE_banknum().equals("") || eDto.getE_banknum() == null) {
			eDto.setE_banknum("0");
		}
		if (eDto.getE_bigo().equals("") || eDto.getE_bigo() == null) {
			eDto.setE_bigo("등록된 비고가 없습니다.");
		}
		if (eDto.getRank_name().equals("") || eDto.getRank_name() == null) {
			eDto.setRank_name("등록된 직급이 없습니다.");
		}
		if (eDto.getDept_name().equals("") || eDto.getDept_name() == null) {
			eDto.setDept_name("등록된 부서가 없습니다.");
		}
		ie.insertemp(eDto);
		ie.insertimg(fMap);
	}

	public String retire(String e_code, HttpServletRequest req, String e_state, String re_date, String re_reason) {
		HashMap<String, String> rMap = new HashMap<>();
		String e_id = (String) req.getSession().getAttribute("m_id");
		rMap.put("e_id", e_id);
		rMap.put("e_code", e_code);
		rMap.put("re_date", re_date);
		rMap.put("re_reason", re_reason);
		ie.retireclear(rMap);
		if(e_state.equals("1")) {   							//재직중인 사원을 퇴직처리
			e_state="2";
		}else if (e_state.equals("2")) {						//퇴직사원 복직처리
			e_state="1";
		}
		ie.retireReason(rMap);
		rMap.put("e_state", e_state);
		ie.retire(rMap);
		Gson gson=new Gson();
		String json=gson.toJson(rMap);
		return json;
	}
}
