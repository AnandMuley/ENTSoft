package com.entsoft.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.dtos.UserDto;
import com.entsoft.services.AppointmentService;
import com.entsoft.services.UserService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "user")
@SessionAttributes({"uid"})
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

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String registerUser(UserDto userDto, RedirectAttributes redirectAttributes) {
        userService.registerUser(userDto);
        if (StringUtils.isEmpty(userDto.getId())) {
            redirectAttributes.addFlashAttribute("message", "Something went wrong");
        } else {
            redirectAttributes.addFlashAttribute("message", "Registration Successful");
        }
        return "redirect:/index";
    }
}
