package com.kitri.travelia.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.travelia.domain.Member;
import com.kitri.travelia.security.ShaEncoder;
import com.kitri.travelia.service.MemberService;

@Controller
public class MemberController {
	
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService service;

	@Resource(name="shaEncoder")
	private ShaEncoder encoder;
	
	//@Resource(name="memberService")
	//private MemberServiceImpl service;

	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(Member member, Model model){
		// String dbpw = encoder.encoding(member.getMem_pw());
		//member.setMem_pw(dbpw);
		System.out.println("/join 요청  = " + member.toString() );
		try {
			service.regist(member);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("result","success");
		//logger.info("result ===> {}", result);	  
		return "/";		  
	}


}
