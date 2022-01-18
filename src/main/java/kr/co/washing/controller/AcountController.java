package kr.co.washing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ac")
@Controller
public class AcountController {
	public final String path = "ac/";
	
	@GetMapping("/login")
	public String login() {
		return path+"login.main";
	}
	
	@GetMapping("/select")
	public String select() {
		return path+"select.main";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return path+"signup.main";
	}
}
