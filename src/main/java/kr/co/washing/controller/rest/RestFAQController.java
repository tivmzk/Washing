package kr.co.washing.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.washing.model.Faq;
import kr.co.washing.service.FaqService;

@RequestMapping("/rest/faq")
@RestController
public class RestFAQController {
	@Autowired
	FaqService service;
	
	@GetMapping
	public Faq item(int code) {
		Faq item = service.item(code);
		return item;
	}
	
	@PutMapping
	public int update(@RequestBody Faq item) {
		service.update(item);
		return item.getFcode();
	}
	
	@PostMapping
	public Faq add(@RequestBody Faq item) {
		service.add(item);
		return item;
	}
}
