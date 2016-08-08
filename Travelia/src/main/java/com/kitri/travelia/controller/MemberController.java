package com.kitri.travelia.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.travelia.dao.MemberDAO;
import com.kitri.travelia.domain.Member;
import com.kitri.travelia.security.ShaEncoder;

//회원 가입 관련 컨트롤러
@Controller
public class MemberController {
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberDAO dao;

	@Resource(name="shaEncoder")
	private ShaEncoder encoder;
	
	
	//회원가입
	@RequestMapping("/join")
	public String join(Member member, MemberDAO dao){
		 //DB 암호화 저장
		  String dbpw = encoder.encoding(member.getMem_pw());
		  member.setMem_pw(dbpw);
		  int result = dao.insertMember(member);
		  logger.info("result ===> {}", result);
		  
		  return "/";		  
	}
	//이메일 중복확인
	//닉네임 중복확인
	
	//회원 탈퇴
	public void delete(){
		
	}
}
