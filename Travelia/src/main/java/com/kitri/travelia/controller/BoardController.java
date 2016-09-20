package com.kitri.travelia.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.travelia.common.common.CommandMap;
import com.kitri.travelia.service.ArticleService;

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

	@RequestMapping(value="/articleDetail.do")
	public ModelAndView openArticleDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/board/articleDetail");

		Map<String, Object> map = articleService.selectArticleDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value="/openUpdateForm.do")
	public ModelAndView openUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/board/update");

		Map<String, Object> map = articleService.selectArticleDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value="/updateArticle.do")
	public ModelAndView updateArticle(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/board/articleDetail.do");

		articleService.updateArticle(commandMap.getMap());

		mv.addObject("idx", commandMap.get("idx"));
		return mv;
	}

	@RequestMapping(value="/deleteArticle.do")
	public ModelAndView deleteArticle(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/board/board");

		articleService.deleteArticle(commandMap.getMap());
		return mv;
	}
}
