package com.rb.etp.Dao;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import com.rb.etp.bean.EmpDto;

public interface Iemp {

	public List<EmpDto> getEmpList();

	public void insertemp(EmpDto eDto);

	public EmpDto empInfo(String test);

	public List<EmpDto> empajnamesearch(String name);

	public List<EmpDto> empajcodesearch(String code);





	
}
