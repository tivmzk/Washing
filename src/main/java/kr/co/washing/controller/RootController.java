package kr.co.washing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.washing.model.Subscription;
import kr.co.washing.service.SubscriptionService;

@Controller
public class RootController {
	@Autowired
	SubscriptionService ss;
	
	@GetMapping("/")
	public String index() {
		return "index.main";
	}
	
	@GetMapping("/sub")
	public String subscription() {
		return "sub.main";
	}
	
	@PostMapping("/sub")
	public String subscription(Subscription item) {
		ss.add(item);
		return "redirect:/";
	}
	
	@GetMapping("/faq")
	public String faq() {
		return "faq.main";
	}
}
