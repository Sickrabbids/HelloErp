package com.rb.etp.services;

import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.rb.etp.Dao.testt;
import com.rb.etp.bean2.god;

import ch.qos.logback.core.net.SyslogOutputStream;

@Service
public class test {

	@Autowired
	testt t;
	
	@Autowired
	 HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	
	public int test() {
		System.out.println("test");
		int test=t.heha();
	
		return test;
	}
	
	
	public String jsontest(String test) {
		String a=request.getParameter("test");
		System.out.println("??"+a);
		
		
		
		ArrayList<god> abc=new Gson().fromJson(a,new TypeToken<List<god>>(){}.getType());
		for(int i=0;abc.size()>i;i++) {
			System.out.println("A의 값은=="+abc.get(i).getA());
			System.out.println("B의 값은=="+abc.get(i).getB());
			System.out.println("C의 값은=="+abc.get(i).getC());
			System.out.println("D의 값은=="+abc.get(i).getD());
			System.out.println("E의 값은=="+abc.get(i).getE());
			request.setAttribute("test",abc.get(i).getE());
			
		
		}
		response.setCharacterEncoding("UTF-8");
		return "미친좀 되라고 ";
	}
	

}
