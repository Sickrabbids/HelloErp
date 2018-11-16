package com.rb.etp.Dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.rb.etp.bean.J_material;




public interface J_materialDao {

	public ArrayList<HashMap<String, String>> materListCalling(HashMap<String, String> hmap);

	
	public int listCount(String id);


	public String testtest(String cd);


	public HashMap<String,String> materialInfo(@Param("p1") String id,@Param("p2") String code);
	
	public boolean materialInsert(J_material jm);
	
	public boolean materialUpdate(J_material jm);
	
	public boolean materialDelete(J_material jm);
}
