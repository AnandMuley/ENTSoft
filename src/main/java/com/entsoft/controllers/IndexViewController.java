package com.entsoft.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexViewController {

	@RequestMapping(value = "index")
	public String renderIndex() {
		return "ENTSoft";
	}
	
	@RequestMapping(value="aboutus")
	public String renderAboutUs(){
		return "AboutUs";
	}
	
	@RequestMapping(value="facilities")
	public String renderFacilities(){
		return "Facilities";
	}
	
	@RequestMapping(value="services")
	public String renderServices(){
		return "Services";
	}
	
	@RequestMapping(value="contactus")
	public String renderContactUs(){
		return "ContactUs";
	}

}
