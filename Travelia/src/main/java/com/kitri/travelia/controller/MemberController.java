package com.kitri.travelia.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.kitri.travelia.domain.Member;
import com.kitri.travelia.security.ShaEncoder;
import com.kitri.travelia.service.MemberService;

@Controller
public class MemberController {
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService service;
	@Autowired
	ServletContext context;
	
	@Resource(name="shaEncoder")
	private ShaEncoder encoder;
	
	//회원 가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(HttpServletRequest request, Member member, Model model) throws Exception{
		String profileImgPath = "/resources/images/memberImg/";
		// String dbpw = encoder.encoding(member.getMem_pw());
		//member.setMem_pw(dbpw);
		/*
		 Multipart 주요 메서드
		 String getName() //파라미터 이름 구하기
		 String getOriginalFilename() //업로드한 파일의 실제 이름
		 boolean isEmpty() // 업로드 한 파일이 존재하지 않을 경우 true
		 byte[] getBytes() throws IOException //업로드한 파일 데이터 구함
		 InputStream getInputStream() // InputStream을 구한다.
		 void transferTo(File dest) //업로드한 파일 데이터를 지정한 파일에 저장
		 */
		
		MultipartFile f = member.getProfileImg();
		if(!f.isEmpty()){
			System.out.println("파일 있음");
			String orgName = f.getOriginalFilename();
			String newName = System.currentTimeMillis() + orgName;
			String path = context.getRealPath(profileImgPath);
			
			
			System.out.println("page : " + path);
			File file = new File(path+File.separator+newName);
			member.setMem_avt(newName);
			f.transferTo(file);
		}
		
		try {
			service.regist(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("result","success");
		
		//logger.info("originalName:"+member.getMem_avt().getOriginalFilename());
		//logger.info("size:" + member.getMem_avt().getSize());
		//logger.info("contentType:"+ member.getMem_avt().getContentType());
		
		return "/index";		  
	}
	//회원 정보 수정 페이지
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String profile(){
		return "/profile/profile";
	}
	//회원 정보 수정
	@RequestMapping(value="/modifiy", method=RequestMethod.POST)
	public String modify(){
		return null;
	}
	//비밀번호 수정
	@RequestMapping(value="/modifypw",method=RequestMethod.POST)
	public String modefyPw(){
		return null;
	}
	
	//회원 탈퇴
	@RequestMapping(value="/leave", method=RequestMethod.POST)
	public String deleteMem(){
		return "";
	}
}
