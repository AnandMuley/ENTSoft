package com.entsoft.controllers;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.services.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping(value = "appointment")
public class AppointmentController extends ViewRenderer {

    @Autowired
    private AppointmentService appointmentService;

    @RequestMapping(value = "book", method = RequestMethod.POST)
    public String bookNow(@ModelAttribute AppointmentDto appointmentDto, Model model, RedirectAttributes redirectAttributes) {
        appointmentService.create(appointmentDto);
        redirectAttributes.addFlashAttribute("message", "Appointment booked successfully !");
        return "redirect:/booking";
    }

    @RequestMapping
    public ModelAndView viewAllAppointments(Model model) {
        List<AppointmentDto> appointmentDtos = appointmentService.getAppointmentsForToday();
        System.out.println("No of appointments found : " + appointmentDtos.size());
        model.addAttribute("appointments", appointmentDtos);
        return createView("Home");
    }

}
