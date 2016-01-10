package com.entsoft.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexViewController {

	@RequestMapping(value = "index")
	public String renderIndex() {
		return "ENTSoft";
	}

}
