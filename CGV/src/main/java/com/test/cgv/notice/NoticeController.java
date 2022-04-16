package com.test.cgv.notice;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping(value = "/test.do" , method = RequestMethod.GET)
	public String noticeLog(Locale locale, Model model) {
		logger.info("Welcome home! This page is noticeController {}.", locale);
		
		return "notice";
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
	
	
}
