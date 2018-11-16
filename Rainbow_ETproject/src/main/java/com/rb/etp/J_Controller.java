package com.rb.etp;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.rb.etp.bean2.J_material;
import com.rb.etp.services.J_CirculationServices;
import com.rb.etp.services.J_MaterealServices;



@Controller
public class J_Controller {
	
	@Autowired
	J_CirculationServices jcs;
	
	
	@Autowired
	J_MaterealServices jms;
	
	
	@Autowired
	HttpServletRequest request;
	
	
	ModelAndView mav;
	
	@RequestMapping(value = "materialInfoList", produces = "application/text; charset=utf8")
	public ModelAndView materialInfoList() {
		mav=new ModelAndView();
		mav=jcs.materListCalling();
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "materialInfoListAjax", produces = "application/text; charset=utf8")
	public String materialInfoListAjax() {
		jcs.materListCalling();
		/*String test=(String) request.getAttribute("s_json2");*/
		//set 한 리퀘스트영역에있는녀석을 뱉어줄때...
		return (String) request.getAttribute("s_json2");
	}
	
	@RequestMapping(value= "materialInfoGodFrom", produces="application/text; charset=utf8")
	public ModelAndView  materialInfo(){
		mav=new ModelAndView();
		mav=jms.materialInfo();
		request.setAttribute("test", request.getParameter("test"));
		
		return mav;
	}
	@RequestMapping(value= "material_U_I_D", produces="application/text; charset=utf8")
	public ModelAndView materialUP_IN_DE(J_material jm,MultipartHttpServletRequest multi){
		System.out.println("오십니까!!!=========================================");
		mav=new ModelAndView();
		mav=jms.material_U_I_D(jm,multi);
		return mav;
	}
	
	
	
}
