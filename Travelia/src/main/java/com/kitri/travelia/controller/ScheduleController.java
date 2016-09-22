package com.kitri.travelia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/schedule")
@Controller
public class ScheduleController {
	//�뒪耳�伊� 而⑦듃濡ㅻ윭
	@RequestMapping("/add")
	public String scheduleAdd(){
		return"/schedule/add";
	}
	@RequestMapping("/view")
	public String scheduleView(){
		return"/schedule/view";
	}
	@RequestMapping("/add2")
	public String scheduleAdd2(){
		return"/schedule/add2";
	}
}
