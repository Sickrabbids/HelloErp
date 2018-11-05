package com.rb.etp;

<<<<<<< HEAD
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
=======
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
=======
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.google.gson.Gson;
import com.rb.etp.bean.god;
=======
import com.rb.etp.bean.EmpDto;
import com.rb.etp.services.Emp;
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git
import com.rb.etp.services.test;


@Controller
public class HomeController {
	
	
	ModelAndView mav;
	
	@Autowired
		test tt;
<<<<<<< HEAD

=======
	
	@Autowired
	Emp emp;
	
	
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		mav=new ModelAndView();
<<<<<<< HEAD
		
		int i=tt.test();
		
		System.out.println("테스트중입니다"+i);
		mav.addObject("test", i);
		mav.setViewName("erpmain");
=======
		mav.setViewName("home");
		return mav;
	}
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git
	
<<<<<<< HEAD
		
		return mav;
	}
	
	
	@RequestMapping(value = "test", method = RequestMethod.POST,produces = "application/text; charset=utf8")
	public @ResponseBody String gson(String test) {
		System.out.println("오긴오니?"+test);
		HashMap<String, String> ac= new HashMap<String, String>();
		System.out.println("시밥 들어보면 형상관리가 젤중요한데 ㅅㅂ 알려주지를 않아 ㅋㅋㅋ ");
		String a=tt.jsontest(test);
		ac.put("test", a);
		return a;
	}
=======
>>>>>>> branch 'master' of https://github.com/Sickrabbids/HelloErp.git
	
}
