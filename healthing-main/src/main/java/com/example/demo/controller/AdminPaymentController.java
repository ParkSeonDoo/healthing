package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPaymentController {

	@RequestMapping(value="/adminpayment")	
	public String adminPaymentController() {
		
		return "/admin/payment/payment";
	}
}
