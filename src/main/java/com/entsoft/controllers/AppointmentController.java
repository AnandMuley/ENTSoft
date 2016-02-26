package com.entsoft.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.services.AppointmentService;

@Controller
@RequestMapping(value = "appointment")
public class AppointmentController {

	@Autowired
	private AppointmentService appointmentService;

	@RequestMapping
	public String renderAppointmentHome() {
		return "BookAppointment";
	}

	@RequestMapping(value = "book", method = RequestMethod.POST)
	public String bookNow(@ModelAttribute AppointmentDto appointmentDto,
			Model model) {
		appointmentService.create(appointmentDto);
		model.addAttribute("Message", "Appointment booked successfully!");
		return "BookAppointment";
	}

	@RequestMapping(value = "viewall")
	public String renderViewAppointments(Model model,
			@ModelAttribute("datedOn") String datedOn) {
		datedOn = "2016-02-27";
		List<AppointmentDto> appointmentDtos = appointmentService
				.getAppointmentsFor(datedOn);
		model.addAttribute("searchResults", appointmentDtos);
		return "Appointments";
	}

}
