package spring.card.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.card.dao.CardDaoInter;
import spring.dto.CardDto;
import upload.util.SpringFileWriter;

@Controller
public class CardWriteFormController {
	
	@Autowired
	private CardDaoInter carddi;
	
	
	@GetMapping("/doctor/writeform")
	public String goCardWriteForm()
	{
		return "/dcommu/dcomwriteform";
	}
	
	@PostMapping("/doctor/insert")
	public String cardWrite(@ModelAttribute CardDto dto,@RequestParam MultipartFile file, HttpServletRequest request,@RequestParam String pageNum)
	{
		ModelAndView model = new ModelAndView();
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/save");
		System.out.println(path);
		
		SpringFileWriter writer = new SpringFileWriter();
		String fileName=writer.changeFilename(file.getOriginalFilename());
		
		writer.writeFile(file, fileName, path);
		
		dto.setCphoto(fileName);
		
		carddi.insertCard(dto);
		
		return "redirect:list?pageNum="+pageNum;
	}
}