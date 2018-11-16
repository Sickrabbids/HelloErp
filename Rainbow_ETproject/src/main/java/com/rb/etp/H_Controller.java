package com.rb.etp;


import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.rb.etp.bean.EmpDto;
import com.rb.etp.services.Emp;

import ch.qos.logback.core.net.SyslogOutputStream;



@Controller
public class H_Controller {
	ModelAndView mav;
	@Autowired
	Emp emp;
	@RequestMapping(value = "/employmentList")  //직원리스트페이지 
	public ModelAndView empList(HttpServletRequest req) {
		String state= req.getParameter("state");
		int e_state=Integer.parseInt(state);
		mav=new ModelAndView();
		mav=emp.empList(e_state);
		mav.addObject("state", e_state);
		mav.setViewName("employmentList");
		return mav;
	}
	@RequestMapping(value = "/empinsertForm")    //직원등록 팝업창 호출
	public ModelAndView empinsertForm() {
		mav=new ModelAndView();
		mav.setViewName("empinsertForm");
		return mav;
	}
	@RequestMapping(value = "/empinsert")		//직원등록	
	public  ModelAndView empinsert(EmpDto eDto) {
		mav=new ModelAndView();
		eDto.setE_id("heo");
		mav=emp.empinsert(eDto);
		mav.setViewName("empinsertForm");
		return mav;
	}
/*	@RequestMapping(value = "/empInfo")
	public  ModelAndView empInfo (HttpServletRequest req) {
		mav=new ModelAndView();
		String test=req.getParameter("e_code");
		mav=emp.empInfo(test);
		return mav;
	}
	*/
	@RequestMapping(value = "/empInfo",produces = "application/json; charset=utf8")   //직원 상세팝업창 호출
	public ModelAndView empInfoForm(HttpServletRequest req) {
		mav=new ModelAndView();
		String code=req.getParameter("e_code");
		mav=emp.empInfo2(code, req);
		return mav;
	}
	
	
	@RequestMapping(value = "/ajempsearchData", produces = "application/json; charset=utf8")  	//직원검색
	public  @ResponseBody String ajsearchData (HttpServletRequest req) {
		String data=req.getParameter("data");
		String type=req.getParameter("type");
		String e_state=req.getParameter("e_state");
		HashMap<String, String> sMap=new HashMap<>();
		sMap.put("data", data);
		sMap.put("type", type);
		sMap.put("e_state",e_state);
		String json=emp.empajsearch(sMap);
		return json;
	}
	
	@RequestMapping(value = "/update", produces = "application/json; charset=utf8")  		//직원정보 수정
	public  @ResponseBody String update (MultipartHttpServletRequest multi, @RequestParam HashMap<String,String> pMap) {
		String ep_id = (String) multi.getSession().getAttribute("m_id");
		pMap.put("ep_code", pMap.get("e_code"));
		pMap.put("ep_id", ep_id);
		  String root = multi.getSession().getServletContext().getRealPath("/");
	       String path = root+"resources/upload/";
		String sysName = ""; 
		Iterator<String> files = multi.getFileNames();
		 File dir = new File(path);
	        if(!dir.isDirectory()){
	            dir.mkdir();
	        }   
		while(files.hasNext()){
	            String uploadFile = files.next();
	            MultipartFile mFile = multi.getFile(uploadFile);
	            String oriName = mFile.getOriginalFilename();
	            System.out.println("실제 파일 이름 : " +oriName);
	            sysName = System.currentTimeMillis()+"."
	                    +oriName.substring(oriName.lastIndexOf(".")+1);
	             System.out.println("시스템파일이름:"+sysName);
	             if(oriName.equals("") || oriName==null) {
	     			oriName="사진없음";
	     		}
	             
	             pMap.put("sysName", sysName);
	             pMap.put("oriName", oriName);
	          
	             try {
		                mFile.transferTo(new File(path+sysName));
		            } catch (Exception e) {
		                e.printStackTrace();
		            }

		emp.update(multi,pMap);
	}
		
		String result="success";
	        return result;
	}
	@RequestMapping(value = "/ajmulticheck", produces = "application/json; charset=utf8")   //사번 중복체크 
	public  @ResponseBody int ajmulticheck (HttpServletRequest req) {
		String e_code=req.getParameter("code");
		int result=emp.ajmulticheck(e_code);
		return result;
	}
	
	@RequestMapping(value = "/certificateEmpForm",produces = "application/json; charset=utf8")   //재직증명서
	public ModelAndView certificateEmpForm(HttpServletRequest req,@RequestParam Map<String,String> umap) {
		mav=new ModelAndView();
		mav=emp.certificateEmpForm(req, umap);
		return mav;
	}
	
	
	
	 @RequestMapping(value = "/fileUpload",produces = "application/json; charset=utf8")     //직원등록+사진업로드
	    public @ResponseBody String fileUp(MultipartHttpServletRequest multi,EmpDto eDto) {
	        // 저장 경로 설정
	        String root = multi.getSession().getServletContext().getRealPath("/");
	       String path = root+"resources/upload/";
	       System.out.println(root);
	        System.out.println("경로="+path); 
	        String sysName = ""; // 업로드 되는 파일명
	        eDto.setE_id("heo");
	        File dir = new File(path);
	        if(!dir.isDirectory()){
	            dir.mkdir();
	        }
	         
	        Iterator<String> files = multi.getFileNames();
	        while(files.hasNext()){
	            String uploadFile = files.next();
	                         
	            MultipartFile mFile = multi.getFile(uploadFile);
	            String oriName = mFile.getOriginalFilename();
	            System.out.println("실제 파일 이름 : " +oriName);
	            sysName = System.currentTimeMillis()+"."
	                    +oriName.substring(oriName.lastIndexOf(".")+1);
	             System.out.println("시스템파일이름:"+sysName);
	             if(oriName.equals("") || oriName==null) {
	     			oriName="사진없음";
	     		}
	     		HashMap<String, String> fMap=new HashMap<>();
	     		fMap.put("sys", sysName);
	     		fMap.put("ori", oriName);
	     		fMap.put("ep_code", eDto.getE_code());
	     		fMap.put("ep_id", eDto.getE_id());  
		         emp.empinsert2(eDto,fMap);
		         try {
	                mFile.transferTo(new File(path+sysName));
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        String fin="success";
	        return fin;
	    }
	 @RequestMapping(value = "/retire",produces = "application/json; charset=utf8")  //직원퇴사처리 
		public  @ResponseBody String retire(HttpServletRequest req) {
		String e_code=req.getParameter("e_code");
		String state=req.getParameter("state");
		String re_date=req.getParameter("reday");
		String re_reason=req.getParameter("reason");
		System.out.println(re_date);
		System.out.println(re_reason);
		String json=emp.retire(e_code,req,state,re_date,re_reason);
		 return json;
		}
	}



