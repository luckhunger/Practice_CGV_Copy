package com.test.cgv.board;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping(value = "/test.do" , method = RequestMethod.GET)
	public String noticeLog(Locale locale, Model model) {
		logger.info("Welcome home! This page is noticeController {}.", locale);
		
		return "board";
	}
	
	/* return 경로 실수로 인해 jsp 화면이 뜨지 않음 > 경로 주의 */
	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public String noticeView() {
		
		return "/board/noticeList";
	}
	
	/* 글쓰기 화면으로 이동 */
	@RequestMapping(value = "/noticeWrite.do")
	public String noticeWrite() {
		return "/board/noticeWrite";
	}
	
	// map 으로 데이터 담기 > mode, session > 유저 데이터 / request > 환경설정
	/* 공지사항 글 등록 */
	@RequestMapping("/insertNotice.do")
	public Map<String, Object> insertNotice(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
		
		Map<String, Object> rtnMap = NoticeService.insertNotice(params, req);
		
		return rtnMap;
	}
	
	
}
