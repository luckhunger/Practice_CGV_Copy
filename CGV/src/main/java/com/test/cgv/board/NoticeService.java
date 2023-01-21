package com.test.cgv.board;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface NoticeService {

	List<?> retrieveNotice();
	
	// 탭 별 조회
	public List<?> noticeTabList();
	
	// 글 등록
	Map<String, Object> insertNotice(Map<String, Object> params, HttpServletRequest req);


}
