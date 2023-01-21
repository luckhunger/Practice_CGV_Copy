package com.test.cgv.board;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/board")
public class NoticeController {
    private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
    
    @Autowired
    private NoticeService noticeService;
    
    @RequestMapping(value = "/test.do" , method = RequestMethod.GET)
    public String noticeLog(Locale locale, Model model) {
        logger.info("Welcome home! This page is noticeController {}.", locale);
        
        return "board";
    }
    
    /* return 경로 실수로 인해 jsp 화면이 뜨지 않음 > 경로 주의 */
    @RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
    public String noticeView() {
    	logger.info("NoticeController : noticeView");
        return "/board/noticeList";
    }
    
    /* 글쓰기 화면으로 이동 */
    @RequestMapping(value = "/noticeWrite.do")
    @Post
    @ResponseBody
    public List<?> retrieveNotice() {
        
//    	System.out.println("@@@@@@@@@@@@@@retrieveNotice : " + params);
    	
//    	List<Map<String, Object>> rtnList = noticeService.retrieveNotice(params, req);
    	
    	return null;
    }
    
    // 탭 별 목록 조회
    @RequestMapping(value = "/noticeTabList.do")
    @Post
    @ResponseBody
    public String noticeTabList(Model model) {
    	logger.info("NoticeController : noticeTabList");
    	
    	JSONObject json = new JSONObject();
    	
    	List<?> tabList = null;
    	
    	try {
    		
    		System.out.println("####### noticeController : tab");
    		
    		tabList = noticeService.noticeTabList();
    		json.put("params", tabList);
    		
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	model.addAllAttributes(tabList);
    	return "board/noticeList";
    }
    
    // map 으로 데이터 담기 > mode, session > 유저 데이터 / request > 환경설정
    /* 공지사항 글 등록 */
    @RequestMapping(value = "/insertNotice.do", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> insertNotice(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
        logger.debug("## Entrance Controller insertNotice");
        
        System.out.println("@@@@@@@@@@@@@@@ : " + params);
        
        Map<String, Object> rtnMap = noticeService.insertNotice(params, req);
        
        params.put("userId", rtnMap.get("USER_ID"));
        
        return rtnMap;
    }
    
    
}
