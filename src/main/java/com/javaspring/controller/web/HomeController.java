package com.javaspring.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaspring.dto.UserDto;
import com.javaspring.service.IUserService;
import com.javaspring.utils.Session;
import com.javaspring.utils.Utils;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
	
	@Autowired
	private IUserService userService;
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, HttpServletRequest request) {
			try {
				UserDto userDB = new UserDto();
				userDB = userService.login(username, password);
				if (userDB.getUserName().equals(username) && userDB.getPassword().equals(password)) {
					String genericToken = userDB.getId() + Utils.getToken() + password;
					model.addAttribute("username", username);
					model.addAttribute("password", password);
					Session.setAttribute(request, "token", genericToken);
					Boolean checkLogin = Utils.isLoggedIn(request);
					if (checkLogin) {
						model.addAttribute("checkLogin", "Đã đăng nhập");
						return "web/home";
					} else {
						return "redirect:/login";
					}
				} else {
					model.addAttribute("error", "Vui lòng kiểm tra lại thông tin");
					return "web/login";
				}
			} catch (Exception e) {
				model.addAttribute("error", "Lỗi ngoại lệ");
				return "web/login";
			}
	}

}
