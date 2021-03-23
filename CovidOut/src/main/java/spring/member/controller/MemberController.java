package spring.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import spring.dto.MemberDto;
import spring.member.service.MemberServiceInter;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceInter service;

	@GetMapping("/member/login")
	public String goLogin()
	{
		return "/member/login";
	}

	@GetMapping("/member/signup")
	public String goSignUp()
	{
		return "/member/signup";
	}
	

	@GetMapping("/member/msignup")
	public String goMSignUp()
	{
		return "/member/msignup";
	}
	
	@GetMapping("/member/dsignup")
	public String goDSignUp()
	{
		return "/member/dsignup";
	}
	

	@PostMapping("member/savemember")
	public String insertMember(@ModelAttribute MemberDto dto)
	{
		
		service.insertMember(dto);
		return "redirect:login";
	}

	
	
	
	

	
	
	
	
}
