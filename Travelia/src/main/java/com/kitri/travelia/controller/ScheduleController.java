package com.kitri.travelia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/schedule")
@Controller
public class ScheduleController {
	//스케쥴 컨트롤러
	@RequestMapping("/add")
	public String scheduleAdd(){
		return"/schedule/add";
	}
	@RequestMapping("/view")
	public String scheduleView(){
		return"/schedule/view";
	}
}
