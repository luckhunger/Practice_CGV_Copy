package com.test.cgv.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class NoticeServiceImpl implements NoticeService{
	SqlSessionTemplate sqlSession;
    private static Logger log = LoggerFactory.getLogger(NoticeService.class);
    
    @Autowired
    NoticeDao noticeDao;
    
    // 공지사항 조회
    @Override
    public List<?> retrieveNotice() {
        log.debug("## Entrance NoticeService retrieveNotice");
//        return this.sqlSession.selectList("noticeMapper.retrieveNotice",params);
        return null;
    }
    
    // 탭 목록 조회
    @Override
    public List<?> noticeTabList() {
        log.debug("## Entrance NoticeServiceImpl noticeTabList");
        
        List<?> tabData;
        try {
        	System.out.println("@@@@ ServiceImpl : " + noticeDao.retrieveNotice());
            System.out.println("@@@@ ServiceImpl : " + noticeDao.noticeTabList());
        }catch (Exception e) {
        	System.out.println("err"+e.getMessage());
        	System.out.println("err"+e.getStackTrace());
		}
        
        
        tabData = null;
        return tabData;
    } 
    
	@Override
    public Map<String, Object> insertNotice(Map<String, Object> params, HttpServletRequest req) {
        log.debug("## Entrance NoticeService Service insertNotice");
        
        // Map 은 인터페이스라 혼자서 구현할 수 없음 > 그레서 Map의 하위 클래스인 HashMap(이 외에는 TreeMap 등 여러가지가 있음)을 시용해서 구현했고
        // 그렇기 때문에 데이터를 넣을 수 있는 것이다.
        // 상위 클래스(?) 인 Map에 값을 담았으므로 이 데이터는 HashMap 외에도 사용 가능하다.
        Map<String, Object> rtnMap = new HashMap<String, Object>();
        
//        int viewCount = 0;
        
        
//        rtnMap.put("insertNotice", noticeDao.insert("cgv.board.insertNotice", params));
        
        return rtnMap;
    }


}
