package com.health.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.health.service.ExercisePostService;
import com.health.service.PostService;
import com.health.vo.ExercisePostVO;
import com.health.vo.MainPostVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@Autowired
	ExercisePostService eService;
	@Autowired
	PostService pService;

	@GetMapping("/")
	public String getMain(Model model, HttpSession session) {

		String id = (String)session.getAttribute("user");//세션값 가져오기

		List<ExercisePostVO> exerciseList = eService.selectExerciseList(id);

		List<MainPostVO> freeList = pService.selectMainFreePost(5);
        List<MainPostVO> noticeList = pService.selectMainNoticePost(5);

		model.addAttribute("freeList", freeList);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("exerciseList", exerciseList);

		return "/main";
	}
}
