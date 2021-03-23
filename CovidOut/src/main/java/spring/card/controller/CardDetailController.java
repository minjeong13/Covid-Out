package spring.card.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.card.dao.CardDaoInter;
import spring.dto.CardDto;

@Controller
public class CardDetailController {

	@Autowired
	private CardDaoInter carddi;
	
	
	@GetMapping("/doctor/detail")
	public ModelAndView cardDetail(@RequestParam String num, 
									@RequestParam String pageNum, 
									@RequestParam(required = false) String key)
	{
		ModelAndView mview = new ModelAndView();
		
		//key가 null이 아닌 경우 조회수 1 증가
		if(key!=null)
			carddi.updateReadCount(num);
		
		//dto얻기
		CardDto dto = carddi.getCardData(num);
		
		mview.addObject("dto", dto);
		mview.addObject("pageNum", pageNum);
		
		mview.setViewName("/dcommu/dcomdetail");
		return mview;
	}
	
}
