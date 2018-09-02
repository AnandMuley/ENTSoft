package com.entsoft.controllers;

import org.springframework.web.servlet.ModelAndView;

public class ViewRenderer {

    private final String INDEX_VIEW = "ENTSoft";

    protected ModelAndView createView(final String viewName) {
        ModelAndView modelAndView = new ModelAndView(INDEX_VIEW);
        modelAndView.addObject("viewName", viewName);
        return modelAndView;
    }

}
