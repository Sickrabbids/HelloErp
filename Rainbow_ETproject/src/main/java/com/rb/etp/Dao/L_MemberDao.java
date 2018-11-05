package com.rb.etp.Dao;

import java.util.HashMap;
import java.util.List;

import com.rb.etp.bean.L_MemberBean;

public interface L_MemberDao {
	 public String memberIdMatching_Dao(String m_id);

	public HashMap<String, Object> logIn(HashMap<String, Object> hm);

	public String L_memberIdMatching_s(String m_id);

	public List<L_MemberBean> memberInfo();
	
	 
}
