package com.rb.etp.Dao;

import java.util.List;

import com.rb.etp.bean.EmpDto;

public interface Iemp {

	public List<EmpDto> getEmpList();

	public void insertemp(EmpDto eDto);

	
}
