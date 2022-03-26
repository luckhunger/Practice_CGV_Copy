package com.test.cgv.notice;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
		private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
		
		@RequestMapping(value = "/test.do" , method = RequestMethod.GET)
		public String noticeLog(Locale locale, Model model) {
			logger.info("Welcome home! This page is noticeController {}.", locale);
			
			return "notice";
		}
		
		

}
