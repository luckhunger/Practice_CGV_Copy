package com.test.cgv;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
//		public String gogo(HttpServletRequest request, String string) throws Exception;
	public String gogo() {
		String a = "";
		return this.sqlSession.selectOne("myTestMapper.gogo");
	};
}
