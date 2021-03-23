package spring.hospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.dto.ReserveDto;
import spring.reserve.dao.ReserveDao;

@Controller
public class ReserveController {
	
	@Autowired
	ReserveDao dao;
	
	@GetMapping("/reserve/list")
	public String reserveList(Model model)
	{
		//전체 갯수 얻기
		int totalCount=dao.getTotalCount();
		//전체 데이터 얻기
		List<ReserveDto> list=dao.getAllDatas();
		//model에 저장
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("list", list);
		
		return "/reserve/list";
	}
	
	//예약버튼을 눌렀을 때 입력하는 폼
	//list.jsp에 onclick="location.href='writeform'" url이랑 같아야 함
	@GetMapping("/reserve/writeform")
	public String reserveForm()
	{
		return "/reserve/writeform";
	}
	
	//insert
	@PostMapping("/reserve/insert")
	public String reserveInsert(
			@ModelAttribute ReserveDto dto)
	{
		dao.inserReserve(dto);
		return "redirect:list";
	}
	
	//getData:dto보내기
	@GetMapping("/reserve/updateform")
	public ModelAndView updateForm(
			@RequestParam String num)
	{
		//선언
		ModelAndView model=new ModelAndView();
		//db로부터 num에 해당하는 dto를 얻는다
		ReserveDto dto=dao.getData(num);
		//model에 저장
		model.addObject("dto", dto);
		//포워드
		model.setViewName("/reserve/updateform");
		
		return model;
	}
	
	//update
	@PostMapping("/reserve/update")
	public String updateReserve(
			@ModelAttribute ReserveDto dto)
	{
		dao.updateReserve(dto);
		return "redirect:list";
	}
	
	//delete
	@GetMapping("/reserve/delete")
	public String deleteReserve(
			@RequestParam String num)
	{
		dao.deleteReserve(num);
		return "redirect:list";
	}
}
