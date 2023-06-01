package com.guci.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class GuciController {

	@RequestMapping(value = "/", method={RequestMethod.GET, RequestMethod.POST})
	public String index() {
		log.info("메인 페이지 진입");
		return "index";
	}
	
}