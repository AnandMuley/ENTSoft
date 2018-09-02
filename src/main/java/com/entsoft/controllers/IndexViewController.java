package com.entsoft.controllers;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class IndexViewController extends ViewRenderer {

    @RequestMapping(value = "index")
    public ModelAndView renderIndex() {
        return createView("Index");
    }

    @RequestMapping(value = "login")
    public ModelAndView renderLogin() {
        return createView("Login");
    }

    @RequestMapping(value = "logout", method = POST)
    public String logout(HttpServletRequest request) {
        HttpSession httpSession = request.getSession(false);
        if (httpSession != null) {
            httpSession.invalidate();
        }
        SecurityContextHolder.clearContext();
        return "redirect:/login";
    }

    @RequestMapping(value = "home")
    public ModelAndView renderHome() {
        return createView("Home");
    }

    @RequestMapping(value = "booking")
    public ModelAndView renderBooking() {
        return createView("Booking");
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
