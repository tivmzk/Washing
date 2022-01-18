package kr.co.washing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/review")
@Controller
public class ReviewController {
	final String path = "review/";
	
	public String list() {
		return path + "list.main";
	}
	
	public String item() {
		return path + "item.main";
	}
}
