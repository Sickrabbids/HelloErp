package com.rb.etp.Dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.rb.etp.bean.EmpDto;

public interface Iemp {

	public List<EmpDto> getEmpList(int e_state);

	public void insertemp(EmpDto eDto);

	public EmpDto empInfo(String test);

	public List<EmpDto> empajnamesearch(HashMap<String, String> sMap);


	public int ajmulticheck(String e_code);

	public boolean update(Map<String, String> umap);

	public EmpDto empInfo2(String code);

	public Map<String, String> certificateEmpForm(Map<String, String> umap);


	public void insertimg(HashMap<String, String> fMap);

	public HashMap<String, String> empInfoPic(HashMap<String, String> pMap);

	public void retire(HashMap<String, String> rMap);

	public void retireReason(HashMap<String, String> rMap);

	public void retireclear(HashMap<String, String> rMap);

	public HashMap<String, String> empRtire(HashMap<String, String> pMap);

	public void updatepic(Map<String, String> umap);


	
}
