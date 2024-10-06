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
	public ModelAndView homePage(HttpServletRequest request, Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("web/home");
			return mav;
		} else {
			model.addAttribute("error", "Bạn chưa đăng nhập");
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}
	@RequestMapping(value = "/fashion", method = RequestMethod.GET)
	public ModelAndView fashionPage(HttpServletRequest request, Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("web/fashion");
			return mav;
		} else {
			model.addAttribute("error", "Bạn chưa đăng nhập");
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}
	@RequestMapping(value = "/electronic", method = RequestMethod.GET)
	public ModelAndView electronicPage(HttpServletRequest request, Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("web/electronic");
			return mav;
		} else {
			model.addAttribute("error", "Bạn chưa đăng nhập");
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}
	@RequestMapping(value = "/jewellery", method = RequestMethod.GET)
	public ModelAndView jewelleryPage(HttpServletRequest request, Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("web/jewellery");
			return mav;
		} else {
			model.addAttribute("error", "Bạn chưa đăng nhập");
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}

	@RequestMapping(value = "/change-password", method = RequestMethod.GET)
	public ModelAndView changePasswordPage(HttpServletRequest request, Model model) {
		Boolean checkLogin = Utils.isLoggedIn(request);
		if (checkLogin) {
			model.addAttribute("checkLogin", "Đã đăng nhập");
			ModelAndView mav = new ModelAndView("web/change-password");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("web/login");
			return mav;
		}
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, HttpServletRequest request) {
		try {
			UserDto userDB = new UserDto();
			userDB = userService.login(username, password);
			String genericToken = userDB.getId() + Utils.getToken() + password;
			Session.setAttribute(request, "token", genericToken);
			Boolean checkLogin = Utils.isLoggedIn(request);
			if (userDB.getUserName().equals(username) && userDB.getPassword().equals(password)) {
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
			model.addAttribute("error", "Người dùng không tồn tại trong hệ thống");
			return "web/login";
		}
	}

}
