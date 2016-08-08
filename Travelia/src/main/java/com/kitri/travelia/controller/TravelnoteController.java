package com.kitri.travelia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/travelnote")
public class TravelnoteController {
	
	//Travelnote list 페이지
	@RequestMapping(value="/list")
	public String travellist(){
		return "travelnote/list";
	}
	//Travelnote view 페이지
	@RequestMapping(value="/view")
	public String travelView(){
		return "travelnote/view";
	}
	
	//Travelnote write 페이지
	@RequestMapping(value="/write")
	public String travelWrite(){
		return "travelnote/write";
	}
}
