package kr.co.washing.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

import kr.co.washing.model.Member;
import kr.co.washing.model.NaverLoginVO;

@RequestMapping("/ac")
@Controller
public class AcountController {
	public final String path = "ac/";
	
	@Autowired
	NaverLoginVO naverLoginVO;
	
	String apiResult = "";
	
	@GetMapping("/login")
	public String login() {
		return path+"login.main";
	}
	
	@GetMapping("/select")
	public String select(Model model, HttpSession session) {
		String url = naverLoginVO.getAuthorizationUrl(session);
		session.setAttribute("url", url);
		return path+"select.main";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return path+"signup.main";
	}
	
//	네이버 로그인 성공시
	@RequestMapping(value="/naver/callback", method= {RequestMethod.POST, RequestMethod.GET})
	public String naverCallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) 
	throws IOException, ParseException{
		
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginVO.getAccessToken(session, code, state);
		//1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginVO.getUserProfile(oauthToken); //String형식의 json데이터
		System.out.println(apiResult);
		/** apiResult json 구조
		{"resultcode":"00",
		"message":"success",
		"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		**/
		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		//3. 데이터 파싱
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		
		Member user = new Member();
		user.setEmail((String)response_obj.get("email"));
		user.setName((String)response_obj.get("name"));
		
		//4.파싱 닉네임 세션으로 저장
		session.setAttribute("user",user); //세션 생성

		return "redirect:/";
	}
}
