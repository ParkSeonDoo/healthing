package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	// main
		@RequestMapping(value="/payment")	
		public String paymentController() {
			
			return "/main/payment/payment";
		}
}
