package com.test.cgv;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CommonMapper {
	
//	@Select(value = { "" })
	String gogo() throws Exception;
}
