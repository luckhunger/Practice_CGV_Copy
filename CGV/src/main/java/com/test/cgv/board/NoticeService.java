package com.test.cgv.board;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;

import com.test.cgv.CommonDao;

public class NoticeService {

	static SqlSessionTemplate sqlSession;
	
	public static Map<String, Object> insertNotice(Map<String, Object> params, HttpServletRequest req) {
		
		// Map 은 인터페이스라 혼자서 구현할 수 없음 > 그레서 Map의 하위 클래스인 HashMap(이 외에는 TreeMap 등 여러가지가 있음)을 시용해서 구현했고
		// 그렇기 때문에 데이터를 넣을 수 있는 것이다.
		// 상위 클래스(?) 인 Map에 값을 담았으므로 이 데이터는 HashMap 외에도 사용 가능하다.
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		// 시퀀스 작성 x > 여기에서 count 선언해서 1씩 값이 더해지도록 > select 쿼리 작성해서 적용
//		int count = dao.(sadsaddsa.too)
//				params.put(count);
//		sqlSession.selectOne("aaa.tototo", params);
		
		
		rtnMap.put("insertNoticeCnt", sqlSession.selectOne("insertNotice"));
		
		return null;
	}
	
	
	

}
