package com.rb.etp.Dao;

import com.rb.etp.bean.L_MemberBean;

public interface L_MemberDao {
	 public String memberIdMatching_Dao(String m_id);

	public L_MemberBean logIn(L_MemberBean mb);

	public String L_memberIdMatching_s(String m_id);
	
	 
}
