package com.kitri.travelia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;

//회원 가입 관련 컨트롤러
@Controller
public class JoinController {
	@Autowired
	MemberDAO dao;
	
	//회원가입
	@RequestMapping("/join")
	public void join(Member member, MemberDAO dao){
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		//암호화
		//org.springframework.security.crypto.password.StandardPasswordEncoder
		//StandardPasswordEncoder encoder = new StandardPasswordEncoder();
		member.setPw(encoder.encode((String)member.getPw()));
		//insert작업
	}
	//이메일 중복확인
	//닉네임 중복확인
	
	//회원 탈퇴
	public void delete(){
		
	}
}
