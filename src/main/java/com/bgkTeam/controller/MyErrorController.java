package com.bgkTeam.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyErrorController implements ErrorController
{

	@RequestMapping(value = "/error")
	public ModelAndView handleError(HttpServletRequest request, HttpServletResponse response)
	{
		Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");
		if(exception!=null) {
			Cookie error=new Cookie("error",exception.getMessage());
			error.setMaxAge(5);
			response.addCookie(error);
		}
		else {
			Cookie error=new Cookie("error","Erreur");
			error.setMaxAge(5);
			response.addCookie(error);
		}
		return new ModelAndView("redirect:/Espace");
	}

	@Override
	public String getErrorPath()
	{
		return "/error";
	}
}
