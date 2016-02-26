package com.entsoft.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.dtos.UserDto;
import com.entsoft.services.AppointmentService;
import com.entsoft.services.UserService;

@Controller
@RequestMapping(value = "user")
@SessionAttributes({ "uid" })
public class AuthenticationController {

	@Autowired
	private UserService userService;

	@Autowired
	private AppointmentService appointmentService;

	@RequestMapping("register")
	public String renderRegistrationPage() {
		return "Register";
	}

	@RequestMapping(value = "authenticate")
	public String authenticateUser(UserDto userDto, Model model) {
		UserDto foundUser = userService.authenticateUser(userDto);
		model.addAttribute("uid", foundUser.getId());
		String view = "Login";
		if (foundUser != null) {
			String datedOn = "2016-02-27";
			List<AppointmentDto> appointmentDtos = appointmentService
					.getAppointmentsFor(datedOn);
			model.addAttribute("searchResults", appointmentDtos);
			view = "Appointments";
		}
		return view;
	}

	@RequestMapping(value = "create")
	public String registerUser(UserDto userDto, Model model) {
		userService.registerUser(userDto);
		if (StringUtils.isEmpty(userDto.getId())) {
			model.addAttribute("message", "Something went wrong");
		} else {
			model.addAttribute("message", "Registration Successful");
		}
		return renderRegistrationPage();
	}
}
