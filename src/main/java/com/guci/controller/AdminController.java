package com.guci.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value="/admin/index", method= {RequestMethod.GET,RequestMethod.POST})
	public String admin_index() {
		return "/admin/index";
	}

	@RequestMapping(value="/admin/admin_product_register", method= {RequestMethod.GET,RequestMethod.POST})
	public String admin_product_register() {
		return "/admin/admin_product_register";
	}
	
	@RequestMapping(value="/admin/admin_product", method= {RequestMethod.GET,RequestMethod.POST})
	public String admin_product() {
		return "/admin/admin_product";
	}
	
	@RequestMapping(value="/admin/deliveryInfo", method= {RequestMethod.GET,RequestMethod.POST})
	public String deliveryInfo() {
		return "/admin/deliveryInfo";
	}
	
	@RequestMapping(value="/admin/exchange_refund", method= {RequestMethod.GET,RequestMethod.POST})
	public String exchange_refund() {
		return "/admin/exchange_refund";
	}
	
	@RequestMapping(value="/admin/memberList", method= {RequestMethod.GET,RequestMethod.POST})
	public String memberList() {
		return "/admin/memberList";
	}	
}
