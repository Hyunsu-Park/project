package com.health.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;

import com.health.service.ExercisePostService;
import com.health.service.PostService;
import com.health.service.ProductService;
import com.health.vo.ExercisePostVO;
import com.health.vo.FreePostVO;
import com.health.vo.NoticePostVO;
import com.health.vo.ProductCategoryVO;
import com.health.vo.ProductVO;
import com.health.vo.QnAPostVO;

@Controller
public class BoardController {
	@Autowired
	ProductService pService;
	@Autowired
	PostService service;
	@Autowired
	ExercisePostService eService;
	
	@GetMapping("/category/freeBoard")
	public String getFreeBoard(Model model) {
		
		List<FreePostVO> postList = service.selectPostList(12);
		
		model.addAttribute("postList", postList);
		
		return "/category/freeBoard";
	}
	@GetMapping("/category/noticeBoard")
	public String getNoticeBoard(Model model) {
		
		List<NoticePostVO> noticeList = service.selectNoticeList(12);
		
		model.addAttribute("noticeList", noticeList);
		
		return "/category/noticeBoard";
	}
	
	@GetMapping("/category/exerciseBoard")
	public String getExerciseBoard(Model model, HttpSession session) {

		String id = (String)session.getAttribute("user");	// 세션값(id)가져오기
	
		List<ExercisePostVO> exerciseList = eService.selectExerciseList(id);
		
		//System.out.println(exerciseList.get(0).getUv_date());//최신날짜 0부터
		
		model.addAttribute("exerciseList", exerciseList);
		
		return "/category/exerciseBoard";
	}
	
	@GetMapping("/category/shopBoard")
	public String getShopBoard(Model model) {
		
		List<ProductVO> productList = pService.selectProductList(10);
		
		model.addAttribute("productList", productList);
		
		return "/category/shopBoard";
	}
	@GetMapping("/category/QnABoard")
	public String getQnABoard(Model model) {
		
		List<QnAPostVO> QnAList = service.selectQnAList(6);
		
		model.addAttribute("QnAList", QnAList);

		return "/category/QnABoard";
	}
	
	@GetMapping("/category/postWrite")
	public String getPostWrite() {
		return "/category/postWrite";
	}
	@GetMapping("/category/shopWrite")
	public String getShopWrite(Model model) {
		
		List<ProductCategoryVO> categoryList = pService.selectproductCategory();		

		model.addAttribute("categoryList", categoryList);
		
		return "/category/shopWrite";
	}
	@GetMapping("/category/QnAWrite")
	public String getQnAWrite() {
		return "/category/QnAWrite";
	}
	
//	@GetMapping("/category/QnABoard/question")
//	public String getQuestion() {
//		return "/category/question";
//	}
//	@GetMapping("/category/QnABoard/request")
//	public String getRequest() {
//		return "/category/request";
//	}
//	@GetMapping("/category/QnABoard/report")
//	public String getReport() {
//		return "/category/report";
//	}
}
