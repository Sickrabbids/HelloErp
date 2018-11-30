package com.rb.etp.Dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.rb.etp.bean2.J_material;




public interface J_materialDao {

	public ArrayList<HashMap<String, String>> materListCalling(HashMap<String, String> hmap);

	
	public int listCount(String id);


	public String testtest(String cd);


	public HashMap<String,Object> materialInfo(@Param("p1") String id,@Param("p2") String code);
	
	public int materialInsert(J_material jm);
	
	public int materialUpdate(J_material jm);
	
	public int materialDelete(J_material jm);


	public String materialCheck(J_material jm);
}
