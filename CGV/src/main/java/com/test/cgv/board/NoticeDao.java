package com.test.cgv.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 공지사항 조회
	public List<?> retrieveNotice() {
		
		System.out.println("@@@@@@@ DAO : retrieveNotice");
		List<?> sqlData = sqlSession.selectList("noticeMapper.retrieveNotice");
		System.out.println("@@@@@ noticeDAO : " + sqlData);
		
		return sqlData;
	}
	
	// 탭 목록 조회
	public List<?> noticeTabList() {
		System.out.println("@@@@@@@ DAO : noticeTabList");
		
		List<?> tabList = sqlSession.selectList("noticeMapper.noticeTabList");
		
		System.out.println("@@@@@ noticeTabList DAO : " + tabList);
		
		return tabList;
	}
	
}
