package kr.co.washing.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.washing.model.Faq;
import kr.co.washing.model.Member;
import kr.co.washing.model.Review;
import kr.co.washing.model.Subscription;
import kr.co.washing.service.FaqService;
import kr.co.washing.service.ReviewService;
import kr.co.washing.service.SubscriptionService;
import kr.co.washing.util.Pager;

@Controller
public class RootController {
	@Autowired
	SubscriptionService ss;
	@Autowired
	FaqService fs;
	@Autowired
	ReviewService rs;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Review> list = rs.listAll();
		model.addAttribute("list", list);
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
	public String faq(Model model,Pager pager) {
		List<Faq> list = fs.list(pager);
		model.addAttribute("list", list);
		return "faq.main";
	}
	
	@GetMapping("/profile")
	public String profile(Model model, HttpSession session, Pager pager) {
		Member user = (Member) session.getAttribute("user");
		pager.setKeyword(user.getEmail());
		pager.setSearch(2);
		List<Subscription> list =  ss.list(pager);
		model.addAttribute("list", list);
		return "profile.main";
	}
	
	
	@GetMapping("/profile/{code}")
	public String sub(@PathVariable int code) {
		ss.delete(code);
		return "redirect:/profile";
	}
}
