package kr.co.washing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.washing.model.Review;
import kr.co.washing.service.ReviewService;
import kr.co.washing.util.Pager;

@RequestMapping("/review")
@Controller
public class ReviewController {
	final String path = "review/";
	
	@Autowired
	ReviewService rs;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<Review> list = rs.list(pager);
		model.addAttribute("list", list);
		return path + "list.main";
	}
	
	@GetMapping("/{code}")
	public String item(@PathVariable int code, Model model) {
		Review item = rs.item(code);
		model.addAttribute("item", item);
		return path + "item.main";
	}
	
	@GetMapping("/add")
	public String add() {
		return path+"add.main";
	}
	
	@PostMapping("/add")
	public String add(Review item) {
		rs.add(item);
		return "redirect:list";
	}
}
