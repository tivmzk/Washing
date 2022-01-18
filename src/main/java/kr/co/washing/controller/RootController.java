package kr.co.washing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {
	
	@GetMapping("/")
	public String index() {
		return "index.main";
	}
	
	@GetMapping("/sub")
	public String subscription() {
		return "sub.main";
	}
	
	@GetMapping("/faq")
	public String faq() {
		return "faq.main";
	}
}
