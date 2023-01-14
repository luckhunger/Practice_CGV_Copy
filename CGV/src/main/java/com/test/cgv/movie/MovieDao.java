package com.test.cgv.movie;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
//	public List<?> movieList(Map<String, Object> param) {
	public List<?> movieList() {
		//String a = "";
//		List sqlData = sqlSession.selectList("movieMapper.movieList", param);
		System.out.print("~~~~~~~~~321");
		List<?> sqlData = sqlSession.selectList("movieMapper.movieList");
		System.out.print(sqlData);
		
		return sqlData;
	};
}
