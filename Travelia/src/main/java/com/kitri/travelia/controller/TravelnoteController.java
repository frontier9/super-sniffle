 package com.kitri.travelia.controller;

import java.io.File;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kitri.travelia.domain.Travel_note;
import com.kitri.travelia.service.TravelNoteService;



@Controller
@RequestMapping(value="/travelnote/*")
public class TravelnoteController {
	private static final Logger logger = LoggerFactory.getLogger(TravelnoteController.class);
	
	@Inject
	private TravelNoteService service;
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		logger.info("list");
		System.out.println(service.listAll());
		model.addAttribute("list",service.listAll());
		return "travelnote/list";
	}

	@RequestMapping(value="/view", method = RequestMethod.GET)
	public String viewContent(@RequestParam("note_no") int note_no, Model model) throws Exception{
		System.out.println(service.read(note_no));
		model.addAttribute("noteItem", service.read(note_no));
		return "travelnote/view";
	}
	
	@RequestMapping(value="/write", method= RequestMethod.GET)
	public String viewWrite(){
		return "/travelnote/write";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String Write(HttpServletRequest request, Travel_note note, RedirectAttributes rttr) throws Exception{
		System.out.println("TravelNoteController Write(Note) = "+note.toString());
		String noteImgPath = "/resources/images/noteImg/";
			
		MultipartFile[] f = note.getNote_img();
		String[] Note_imgFile = new String[5];
		for(int i=0;i<f.length;i++){
			if(!f[i].isEmpty()){
				System.out.println(i+"//파일 있음");
				String orgName = f[i].getOriginalFilename();
				String newName = System.currentTimeMillis() + orgName;
				String path = context.getRealPath(noteImgPath);
				
				System.out.println("page : " + path);
				File file = new File(path+File.separator+newName);
				Note_imgFile[i] = newName;
				f[i].transferTo(file);
			}
		}
				note.setNote_imgFile(Note_imgFile);

		service.regist(note);	
		//브라우저 까지 전송, URI상에는 보이지 않는 숨겨진 데이터 형태	
		rttr.addFlashAttribute("msg","success");
		return "redirect:/travelnote/list";
	}
	
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(){
		return"";
	}
	
	@RequestMapping(value="/test")
	public String test(){
		return "test";
	}
}
