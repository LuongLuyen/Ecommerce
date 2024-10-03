package com.javaspring.controller;

import java.io.IOException;

import javax.mail.internet.AddressException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaspring.config.MailConfig;
import com.javaspring.config.PhoneConfig;

@Controller
public class HomeController {

	@Autowired
	private PhoneConfig phoneConfig;

	@Autowired
	private MailConfig mailConfig;

	@PostMapping("/send-sms")
	@ResponseBody
	public String sendSms(@RequestParam("phone") String phone) {
		try {
			String from = "447491163443";
			String message = "Gửi từ Lương Luyện, mật khẩu mới là: Abcxyz1!@";
			String toVN = "84" + phone.substring(1);
			phoneConfig.sendSms(toVN, from, message);
			return "Kiem tra mat khau trong:" + phone;
		} catch (IOException e) {
			return "Failed to send SMS: " + e.getMessage();
		}
	}

	@PostMapping("/send-email")
	@ResponseBody
	public String sendEmail(@RequestParam("email") String email) {
		try {

			String subject = "Mật khẩu mới của bạn";
			String text = "Abcxyz1!@";

			mailConfig.sendSimpleEmail(email, subject, text);
			return "Kiem tra mat khau trong:" + email;

		} catch (AddressException e) {
			return "Failed to send email: Invalid email address.";
		} catch (Exception e) {
			e.printStackTrace();
			return "Failed to send email: " + e.getMessage();
		}
	}

}
