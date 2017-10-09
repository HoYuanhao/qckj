package com.qckj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemsProcessController {

	
	@RequestMapping("ItemsProcess")
	public String itemsprocess(){
		return "redirect:/addeducate.jsp";
		
	}
}
