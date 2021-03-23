package spring.controller.bit;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping({"/","/home"})
	   public String goMain()
	   {
	      return "/layout/main";
	   }

	@GetMapping("/hospitalmain")
	public String goHospital() {
		return "/hospital/hospitalmain";
	}

	@GetMapping("/hospitallist")
	public String goHlist() {
		return "/hospital/hospitallist";
	}
	@GetMapping("/hospitaldetail")
	public String goHdetail() {
		return "/hospital/hospitaldetail";
	}
	@GetMapping("/hospitalrsv")
	public String goHreserve() {
		return "/hospital/hospitalreserve";
	}
	@GetMapping("/hospitalsuccess")
	public String goHsuccess() {
		return "/hospital/hospitalsuccess";
	}

}
