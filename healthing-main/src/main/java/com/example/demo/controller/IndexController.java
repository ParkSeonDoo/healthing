package com.example.demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.IndexService;

@Controller
public class IndexController {
	// 서비스선언
	@Resource(name="com.example.demo.service.IndexService")
	IndexService mindexService;
	// main
	@RequestMapping(value="/")	
	public String indexController() {
		
		return "/main/index";
	}

}
