package com.entsoft.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexViewController {

	private final String INDEX_VIEW = "ENTSoft";

	private ModelAndView createView(final String viewName) {
		ModelAndView modelAndView = new ModelAndView(INDEX_VIEW);
		modelAndView.addObject("viewName", viewName);
		return modelAndView;
	}

	@RequestMapping(value = "index")
	public ModelAndView renderIndex() {
		return createView("Index");
	}

	@RequestMapping(value = "login")
	public ModelAndView renderLogin() {
		return createView("Login");
	}

	@RequestMapping(value = "home")
	public ModelAndView renderHome() {
		return createView("Home");
	}

	@RequestMapping(value = "aboutus")
	public ModelAndView renderAboutUs() {
		return createView("AboutUs");
	}

	@RequestMapping(value = "facilities")
	public String renderFacilities() {
		return "Facilities";
	}

	@RequestMapping(value = "services")
	public String renderServices() {
		return "Services";
	}

	@RequestMapping(value = "contactus")
	public String renderContactUs() {
		return "ContactUs";
	}

}
