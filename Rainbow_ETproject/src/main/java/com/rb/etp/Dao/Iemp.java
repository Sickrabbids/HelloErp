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

	public EmpDto certificateEmpForm(String e_code);


	public void insertimg(HashMap<String, String> fMap);

	public HashMap<String, String> empInfoPic(HashMap<String, String> pMap);

	public void retire(HashMap<String, String> rMap);


	
}
