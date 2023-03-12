package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberManageController {
	
	@RequestMapping(value="/adminmembermanage")	
	public String adminMemberManageController() {
		
		return "/admin/user/membermanage";
	}
	@RequestMapping(value="/adminmemberservey")	
	public String adminMemberServeyController() {
		
		return "/admin/user/memberservey";
	}	
}
