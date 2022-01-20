package kr.co.washing.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;

import kr.co.washing.model.Member;
import kr.co.washing.model.NaverLoginVO;
import kr.co.washing.service.MemberService;
import kr.co.washing.util.SiteLoginer;

@RequestMapping("/ac")
@Controller
public class AcountController {
	public final String path = "ac/";
	@Autowired
	MemberService service;

	@Autowired
	NaverLoginVO naverLoginVO;

	@GetMapping("/login")
	public String login() {
		return path + "login.main";
	}
	
	@PostMapping("/login")
	public String login(Member item, HttpSession session) {
		Member user = service.item(item);
		
		if(user == null) {
			return "redirect:login";
		}
		else {
			session.setAttribute("user", user);
			return "redirect:/";
		}
	}

	@GetMapping("/select")
	public String select(Model model, HttpSession session) {
		String url = naverLoginVO.getAuthorizationUrl(session);
		session.setAttribute("url", url);
		return path + "select.main";
	}

	@GetMapping("/signup")
	public String signup() {
		return path + "signup.main";
	}
	
	@PostMapping("/signup")
	public String signup(Member item) {
		service.add(item);
		return "redirect:login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

//	네이버 로그인 성공시
	@RequestMapping(value = "/naver/callback", method = { RequestMethod.POST, RequestMethod.GET })
	public String naverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		Member user = SiteLoginer.naver(session, code, state, naverLoginVO);

		// 4.파싱 닉네임 세션으로 저장
		session.setAttribute("user", user); // 세션 생성

		return "redirect:/";
	}

	@GetMapping("/google/callback")
	public String googleAuth(Model model, @RequestParam(value = "code") String authCode, HttpSession session)
			throws JsonProcessingException {
		Member user = SiteLoginer.google(authCode);

		session.setAttribute("user", user);

		return "redirect:/";

	}
}
