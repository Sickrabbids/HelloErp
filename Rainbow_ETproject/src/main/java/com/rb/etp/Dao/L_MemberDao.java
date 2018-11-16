package com.rb.etp.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rb.etp.bean.L_MemberBean;
import com.rb.etp.bean.PageMaker;

public interface L_MemberDao {
	

	public String memberIdMatching_Dao(String m_id);

	public HashMap<String, Object> logIn(HashMap<String, Object> hm);

	public String L_memberIdMatching_s(String m_id);

	/*public List<L_MemberBean> L_memberList_Dao();*/
	
	/*test*/
	public List<L_MemberBean> L_memberList_Dao(@Param("page") int page,@Param("contentPage") int contentPage);

	public int tcount();
	/*end test*/
	
	public boolean L_memberJoin_Dao(L_MemberBean mb);

	public L_MemberBean L_memberInfo_Dao(String m_id);

	public boolean L_memberUpdate_Dao(HashMap<String, Object> hm);

	public boolean L_memberLeave_Dao(String m_id);
	
	

}
