package kr.co.washing.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.FlashMapManager;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import kr.co.washing.model.Member;

public class UnloginIntercepter extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Member user = (Member) request.getSession().getAttribute("user");
		if(user != null) {
			FlashMap flashMap = new FlashMap();
			flashMap.put("warn", "로그아웃을 먼저 하세요");
			FlashMapManager manager = RequestContextUtils.getFlashMapManager(request);
			manager.saveOutputFlashMap(flashMap, request, response);
			response.sendRedirect("/");
			return false;
		}
		return true;
	}
}
