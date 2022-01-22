package kr.co.washing.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.washing.model.Subscription;
import kr.co.washing.service.SubscriptionService;

@RequestMapping("/rest/sub")
@RestController
public class RestSubscriptionController {
	@Autowired
	SubscriptionService ss;
	
	@GetMapping
	public Subscription item(int code) {
		Subscription item = ss.item(code);
		return item;
	}
	
	@PutMapping
	public int update(@RequestBody Subscription item) {
		ss.update(item);
		return item.getScode();
	}
}
