package com.javaspring.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaspring.utils.Utils;

@Controller(value = "adminControllerOfWeb")
public class AdminController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminPage(HttpServletRequest request,Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("admin/admin");
			return mav;
		}else {
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}

}
