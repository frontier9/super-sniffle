package com.kitri.travelia.security;

import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

import com.kitri.travelia.domain.Member;

public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		
		System.out.println("CustomAuthenticationSuccessHandler(onAuthenticationSuccess) : 로그인 성공");
		String accept = request.getHeader("accept");
		//*********ajax 구현 필요 http://syaku.tistory.com/280
		response.sendRedirect(request.getContextPath()+"/");
		
  		Map<String, Object> map = new HashMap<String, Object>();
		map.put("returnUrl", getReturnUrl(request, response));   // 로그인 요청하기전 페이지 주소
		Member member = (Member)auth.getPrincipal();
		map.put("member",member);
		System.out.println("member :"+member.getAuthorities());
		HttpSession session = request.getSession(true);
		session.setAttribute("email", member.getMem_email());
		session.setAttribute("nick", member.getMem_nick());
		session.setAttribute("No", member.getMem_no()); // 세션에 담아서 원래 페이지로 보냄
		/*
		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(map);
		OutputStream out = response.getOutputStream();
		out.write(jsonString.getBytes());*/
	}
	
	private String getReturnUrl(HttpServletRequest request, HttpServletResponse response) {
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		if (savedRequest == null) {
			return request.getSession().getServletContext().getContextPath();
		}
		
		return savedRequest.getRedirectUrl();
	}	

}
