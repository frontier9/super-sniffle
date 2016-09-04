package com.kitri.travelia.controller;

import com.kitri.travelia.common.common.CommandMap;
import com.kitri.travelia.service.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RequestMapping("/board")
@Controller
public class BoardController {
	Logger log = LoggerFactory.getLogger(BoardController.class);

	@Resource
	private ArticleService articleService;
	
	@RequestMapping(value="/board")
	public ModelAndView boardlist(Map<String, Object> mapList) throws Exception{
		ModelAndView mv = new ModelAndView("/board/articlelist");

		List<Map<String, Object>> list = articleService.selectArticleList(mapList);
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value="/view")
	public ModelAndView boardview(){

		ModelAndView mv = new ModelAndView("/board/view");
		return mv;
	}

	@RequestMapping(value="/write")
	public ModelAndView boardwrite(){

		ModelAndView mv = new ModelAndView("/board/write");
		return mv;
	}

	@RequestMapping(value="/sampletest.do")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("");

		if(commandMap.isEmpty() == false) {
			Iterator<Map.Entry<String, Object>> iterator = commandMap.getMap().entrySet().iterator();
			Map.Entry<String, Object> entry = null;
			while(iterator.hasNext()) {
				entry = iterator.next();
				log.debug("key: " + entry.getKey() + ", value : " + entry.getValue());
			}
		}
		return mv;
	}

	@RequestMapping(value="/post.do")
	public ModelAndView post(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/board/write");

		return mv;
	}

	@RequestMapping(value="/insertBoard.do")
	public ModelAndView insertBoard(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/board/board");

		articleService.insertBoard(commandMap.getMap());

		return mv;
	}


/*
	//글 등록
	@RequestMapping(value="/insertBoard.html")
	public String insertBoard(Board board, BoardBAO boardDAO){
		boardDAO.insertBoard(board);
		return "board.html";
	}
	//글 수정
	@RequestMapping("/updateBoard.html")
	public String updateBoard(Board board, BoardDAO boardDAO){
		boardDAO.updateBoard(board);
		return "board.html";
	}
	//글삭제
	@RequestMapping("/deleteBoard.html")
	public String deleteBoard(Board board,BoardDAO boardDAO){
		boarDAO.deleteBoard(board);
		return "board.html";
	}
	//글 상세조회
	@RequestMapping("/view.html")
	public String getBoard(Board board, BoardDAO boardDAO, Model model){
		model.addAttribute("board",boardDAO.getBoard(board));
		return "view";
	}
	//글 목록 검색
	@RequestMapping("/board.html")
	public String BoardList(Board board, BoardDAO boardDAO, Model model){
		model.addAttribute("boardList",boardDAO.getBoardList(board));
		return "board";
	}
	*/
}
