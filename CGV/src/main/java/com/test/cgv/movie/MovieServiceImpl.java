package com.test.cgv.movie;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieServiceImpl implements MovieService{

	@Autowired
	MovieDao movieDao;
	
	@Override
	public List<?> MoveList() throws Exception {
//	public String gogo(HttpServletRequest request, String string) throws Exception {
		// TODO Auto-generated method stub
		List<?> listData = movieDao.movieList();
		return listData;
	}

}
