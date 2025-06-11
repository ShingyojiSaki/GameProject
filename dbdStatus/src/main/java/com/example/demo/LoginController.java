package com.example.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.entity.TUser;
import com.example.demo.service.TUserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Value("${application.name}")
	private String appName;

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	TUserService tUserService;

	@PostMapping
	public String addUser(@RequestParam("loginUserId") String userId,
			HttpServletRequest req, Model model) throws ServletException,IOException{
//		model.addAttribute("appName", appName);
		HttpSession session = req.getSession();
		//1-1. 入力チェック
		TUser tUser = tUserService.selectByPrimaryKey(userId);

		//2.1
		if(tUser!=null) {
			session.setAttribute("userName", tUser.getUsername());
			return "logintop";
		}

		return "top";
	}

}
