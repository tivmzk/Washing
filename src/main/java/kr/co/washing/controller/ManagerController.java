package kr.co.washing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mgr")
@Controller
public class ManagerController {
	final String path = "mgr/";
	
	@GetMapping("/mem")
	public String member() {
		return path + "mem.mgr";
	}
	
	@GetMapping("/sub")
	public String subscription() {
		return path + "sub.mgr";
	}
}
