package com.kitri.travelia.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.travelia.domain.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	//메인 화면
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value="/test")
	public String test(){
		//model.addAttribute("usernick", getMember().getNick());
		//model.addAttribute("useremail", getMember().getEmail());
		return "map";
	}
	@RequestMapping(value="/profile")
	public String test2(){
		//model.addAttribute("usernick", getMember().getNick());
		//model.addAttribute("useremail", getMember().getEmail());
		return "profile/profile";
	}
	@RequestMapping(value="/ex")
	public String ex(){
		//model.addAttribute("usernick", getMember().getNick());
		//model.addAttribute("useremail", getMember().getEmail());
		return "ex";
	}
	public Member getMember(){
		return (Member)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
	
}
