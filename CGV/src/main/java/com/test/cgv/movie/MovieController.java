package com.test.cgv.movie;

import java.util.List;
import java.util.Locale;
import java.util.Map;

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

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	MovieService movieService;
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	
	/**
	 * 영화 목록 화면
	 */
	@RequestMapping(value = "/movies", method = RequestMethod.GET)
	public String theaters(Model model) {
		// 영화 목록 불러오기
		// 
		return "movie/movie";
	}
	
	/**
	 * 영화 검색
	 * @RequestParam >> HttpServletRequest에서 getParameter() 와 동일 기능 
	 * */
	@RequestMapping(value = "/movieList.do", method = RequestMethod.POST)
	public @ResponseBody JSONObject movieList(Model model, @RequestParam Map<String, Object> param) {
		JSONObject json = new JSONObject();
		List<?> sendMl;
		try {
			//List sendMl = movieService.MoveList(param);
			System.out.println("~~~~~~~~~2");
			
			sendMl = movieService.MoveList();
			
			json.put("param", sendMl);
			System.out.println("~~~~~~~~~33" + json);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//영화 or 인물 검색
		return json;
	}
	
	
}
