package com.kitri.travelia.controller;

import com.kitri.travelia.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

//게시판 컨트롤러
@RequestMapping("/board")
@Controller
public class BoardController {

	@Resource
	private ArticleService articleService;
	
	//게시판 링크
	@RequestMapping(value="/board")
	public ModelAndView boardlist(Map<String, Object> mapList) throws Exception{
		ModelAndView mv = new ModelAndView("/board/articlelist");

		List<Map<String, Object>> list = articleService.selectArticleList(mapList);
		mv.addObject("list", list);

		return mv;
	}

	//게시판 상세보기 페이지
	@RequestMapping(value="/view")
	public ModelAndView boardview(){

		ModelAndView mv = new ModelAndView("/board/view");
		return mv;
	}

	//게시판 글 수정 페이지
	@RequestMapping(value="/write")
	public ModelAndView boardwrite(){

		ModelAndView mv = new ModelAndView("/board/write");
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
