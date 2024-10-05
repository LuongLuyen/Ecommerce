package com.javaspring.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaspring.utils.Session;
import com.javaspring.utils.Utils;

@Controller(value = "loginControllerOfWeb")
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage(HttpServletRequest request,Model model) {
		Boolean checkAdmin = Utils.isAdmin(request);
		if(!checkAdmin) {
			model.addAttribute("error", "Bạn không có quyền");
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}else {
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpServletRequest request) {
		Session.invalidateSession(request);
		return "redirect:/login";
	}
}
