package com.example.demo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ItemService;

@Controller
public class ItemController {
	// 서비스선언
	@Resource(name="com.example.demo.service.ItemService")
	ItemService mitemService;
	// itemonline
	@RequestMapping(value="/itemonline")	
	public String itemonlineController(Model model) throws Exception {
		
		model.addAttribute("list",mitemService.itemonlineService());
		
		return "/main/item/itemonline";
	}
	// itemoffline
	@RequestMapping(value="/itemoffline")	
	public String itemofflineController(Model model) throws Exception {
		
		model.addAttribute("list",mitemService.itemofflineService());
		
		return "/main/item/itemoffline";
	}
	// itemonlineview
	@RequestMapping(value="/itemonlineview/{ino}")	
	public String itemonlineviewController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("view",mitemService.itemonlineviewService(ino));
		
		return "/main/item/itemonlineview";
	}
	// itemofflineview
	@RequestMapping(value="/itemofflineview/{ino}")	
	public String itemofflineviewController(@PathVariable int ino, Model model) throws Exception {
		
		model.addAttribute("view",mitemService.itemofflineviewService(ino));
		
		return "/main/item/itemofflineview";
	}
}
