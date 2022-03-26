package com.test.cgv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService{

	@Autowired
	CommonDao commonDao;
	
	@Override
	public String gogo() throws Exception {
//	public String gogo(HttpServletRequest request, String string) throws Exception {
		// TODO Auto-generated method stub
		return commonDao.gogo();
	}

}
