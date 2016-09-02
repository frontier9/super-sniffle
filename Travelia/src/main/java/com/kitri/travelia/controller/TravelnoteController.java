package com.kitri.travelia.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kitri.travelia.domain.Travel_note;
import com.kitri.travelia.service.TravelNoteService;

@Controller
@RequestMapping(value="/travelnote/*")
public class TravelnoteController {
	private static final Logger logger = LoggerFactory.getLogger(TravelnoteController.class);
	
	@Inject
	private TravelNoteService service;
	
	//Travelnote list 페이지
	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		logger.info("list");
		model.addAttribute("list",service.listAll());
		
		return "travelnote/list";
	}
	//Travelnote view 페이지
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public String viewContent(){
		return "travelnote/view";
	}
	
	@RequestMapping(value="/write", method= RequestMethod.GET)
	public String viewWrite(){
		return "/travelnote/write";
	}
	//Travelnote write 페이지
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String Write(Travel_note note, RedirectAttributes rttr) throws Exception{
		logger.info("write(post)");
		logger.info(note.toString());
		
		service.regist(note);
		
		//브라우저 까지 전송, URI상에는 보이지 않는 숨겨진 데이터 형태
		/* 삭제할 주석
		 list.jsp에 script추가
		 <script>
		 	var result = '${msg}';
		 	if(result =='SUCCESS'){
		 		alert("처리 완료!");
		 	}
		 </script>
		 */
		rttr.addFlashAttribute("msg","success");
		return "redirect:/travelnote/list";
	}
}
