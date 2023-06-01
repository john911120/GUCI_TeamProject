package com.guci.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.guci.domain.Criteria;
import com.guci.domain.NoticeVO;
import com.guci.domain.PageDTO;
import com.guci.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {
	private NoticeService service;
	
	@GetMapping("/register")
	public void register() {
		
	}
		
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list : " + cri);
		// model.addAttribute("pageMaker", new PageDTO(cri, 22));
		model.addAttribute("list",service.getList(cri));
		
		int total = service.getTotal(cri);
		
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@PostMapping("/register")
	public String register(NoticeVO notice, RedirectAttributes rttr) {
		log.info("register : "  + notice);
		
		service.register(notice);
		
		rttr.addFlashAttribute("result", notice.getNoticeNo());
		
		return "redirect:/notice/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("noticeNo") Long noticeNo, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify");
		model.addAttribute("notice", service.get(noticeNo));
	}
	
	@PostMapping("/modify")
	public String modify(NoticeVO notice, Criteria cri, RedirectAttributes rttr) {
		log.info("modify : " + notice);

		if(service.modify(notice)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/notice/list" + cri.getListLink();
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("noticeNo") Long noticeNo, Criteria cri, RedirectAttributes rttr) {
		log.info("remove : " + noticeNo);
		
		if(service.remove(noticeNo)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/notice/list" + cri.getListLink();
	}
}
