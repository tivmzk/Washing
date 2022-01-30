package kr.co.washing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.washing.model.Faq;
import kr.co.washing.model.Member;
import kr.co.washing.model.Review;
import kr.co.washing.model.Subscription;
import kr.co.washing.service.FaqService;
import kr.co.washing.service.MemberService;
import kr.co.washing.service.ReviewService;
import kr.co.washing.service.SubscriptionService;
import kr.co.washing.util.Pager;

@RequestMapping("/mgr")
@Controller
public class ManagerController {
	final String path = "mgr/";
	
	@Autowired
	MemberService ms;
	@Autowired
	SubscriptionService ss;
	@Autowired
	ReviewService rs;
	@Autowired
	FaqService fs;
	
	@GetMapping("/mem")
	public String member(Pager pager, Model model) {
		List<Member> list = ms.list(pager);
		model.addAttribute("list", list);
		return path + "mem.mgr";
	}
	
	@GetMapping("/mem/delete/{email}")
	public String member(@PathVariable String email, int page) {
		ms.delete(email);
		return "redirect:/mgr/mem?page="+page;
	}
	
	@GetMapping("/sub")
	public String subscription(Pager pager, Model model) {
		List<Subscription> list = ss.list(pager);
		model.addAttribute("list", list);
		return path + "sub.mgr";
	}
	
	@GetMapping("/sub/delete/{code}")
	public String subscription(@PathVariable int code, int page) {
		ss.delete(code);
		return "redirect:/mgr/sub?page="+page;
	}
	
	@GetMapping("/faq")
	public String faq(Model model, Pager pager) {
		List<Faq> list = fs.list(pager);
		model.addAttribute("list", list);
		return path + "faq.mgr";
	}
	
	@GetMapping("/faq/delete/{code}")
	public String faq(@PathVariable int code, int page) {
		fs.delete(code);
		return "redirect:/mgr/faq?page="+page;
	}
	
	@GetMapping("/rev")
	public String review(Model model, Pager pager) {
		List<Review> list = rs.list(pager);
		model.addAttribute("list", list);
		return path + "rev.mgr";
	}
	@GetMapping("/rev/delete/{rcode}")
	public String review(@PathVariable int rcode, int page) {
		rs.delete(rcode);
		return "redirect:/mgr/rev?page="+page;
	}
}
