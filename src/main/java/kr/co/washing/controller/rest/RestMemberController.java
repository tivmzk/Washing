package kr.co.washing.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.washing.model.Member;
import kr.co.washing.service.MemberService;
import kr.co.washing.util.LevelConfig;

@RequestMapping("/rest/mem")
@RestController
public class RestMemberController {
	@Autowired
	MemberService service;
	
	@PutMapping
	public int update(@RequestBody Member item) {
		System.out.println(item.getEmail());
		System.out.println(item.getLevel());
		service.update(item);
		return item.getLevel();
	}
	
	@GetMapping
	public List<Integer> levelList(){
		return LevelConfig.getLevelList();
	}
}
