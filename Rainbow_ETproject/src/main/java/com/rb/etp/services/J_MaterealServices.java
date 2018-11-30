package com.rb.etp.services;

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

import com.rb.etp.Dao.J_materialDao;
import com.rb.etp.bean2.J_material;
import com.rb.etp.services.supporter.fileHelper;

import ch.qos.logback.core.pattern.color.BlueCompositeConverter;

@Service
public class J_MaterealServices {

	ModelAndView mav;

	@Autowired
	HttpServletRequest request;

	@Autowired
	J_materialDao md;

	@Autowired
	fileHelper fp;

	public ModelAndView materialInfo() {
		mav = new ModelAndView();
		HashMap<String, Object> jmap = new HashMap<String, Object>();
		Gson g = new Gson();
		jmap = mkey();
		if (jmap.get("connectType") != null && jmap.get("connectType").equals("add")) {
			jmap.put("title", "제품등록");
			mav.setViewName("materialInfoGod");
		} else {
			jmap = md.materialInfo(jmap.get("id").toString(), jmap.get("code").toString());
			jmap.put("title", "제품정보");
			mav.setViewName("materialInfoGod");
		}
		System.out.println(jmap.get("GOD_ID"));
		System.out.println(jmap.get("GOD_CODE"));
		System.out.println(jmap.get("GOD_NAME"));
		System.out.println(jmap.get("GOD_PRICE"));
		System.out.println(jmap.get("GOD_SAFTESTOCK"));
		System.out.println(jmap.get("GOD_KIND"));
		System.out.println(jmap.get("GOD_BIGO"));
		System.out.println(jmap.get("GOD_STATE"));
		System.out.println(jmap.get("GOD_STOCK"));
		System.out.println(jmap.get("GOD_PHOTO"));
		System.out.println(jmap.get("GOD_STANDARD"));
		System.out.println(jmap.get("GOD_UNIT"));
		System.out.println("???" + jmap.values());
		request.setAttribute("test1", g.toJson(jmap));

		return mav;
	}

	// 업데이트 인설트 딜리트 이루어지는곳
	public ModelAndView material_U_I_D(J_material jm, MultipartHttpServletRequest multi2) {
		mav = new ModelAndView();
		HashMap<String, Object> mUp = new HashMap<String, Object>();
		int a = 0;
		mUp = mkey();
		jm.setGOD_ID(mUp.get("id").toString());
		jm.setGOD_STATE("1");
		try {
			if (mUp.get("connectType").equals("insert")) {
				jm.setGOD_PHOTO(fp.fileUpload(multi2));
				System.out.println("????????????????");
				a = md.materialInsert(jm);
				System.out.println("실행 됩니까?????");
				if (a != 0)
					mav.setViewName("nav");
				else
					fp.fileDelete(jm.getGOD_PHOTO());

			} else if (mUp.get("connectType").equals("delete")) {

				a = md.materialDelete(jm);
				if (a != 0) {
					fp.fileDelete(jm.getGOD_PHOTO());
					mav.setViewName("nav");
				}
			} else if (mUp.get("connectType").equals("update")) {
				/*System.out.println(multi2.getFileNames());*/
				System.out.println("누구인가? 오리가 왔는가?"+jm.getGOD_ORICODE());
				System.out.println("????????"+jm.getGOD_CODE());
				
				String check = md.materialCheck(jm);
				System.out.println("디비에있는 사진이름"+check);
				
				//검색 결과과 first.png 요녀석이 아니면
				// 기존에있던 파일 삭제 
				if (!check.equals("first.png")) {
					fp.fileDelete(check);
					jm.setGOD_PHOTO(fp.fileUpload(multi2));					
				}
				//검색 결과과 first.png 요녀석이면				
				else{
					jm.setGOD_PHOTO("first.png");
				}

				System.out.println("8번이름이뭐길레?"+jm.getGOD_PHOTO());
					a = md.materialUpdate(jm);
				if (a != 0)
					mav.setViewName("nav");
				else {
					fp.fileDelete(jm.getGOD_PHOTO());
				}
				
			}
			

			
			
		} catch (Exception e) {
			e.printStackTrace();
			mav.setViewName("nav");
		}

		return mav;
	}

	// 아이디와 페이지이동정보 제품 코드 담아주는녀석
	public HashMap<String, Object> mkey() {
		HttpSession se = request.getSession();
		String id = se.getAttribute("m_id").toString();
		String code = "";
		String connectType = "";
		HashMap<String, Object> key = new HashMap<String, Object>();
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
