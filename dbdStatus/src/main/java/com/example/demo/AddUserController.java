package com.example.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.AddUserService;
import com.example.demo.service.TUserService;

@Controller
@RequestMapping("/addUser")
public class AddUserController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AddUserController.class);

	@Autowired
	private AddUserService addUserService;
	@Autowired
	TUserService tUserService;

	@PostMapping
	public String addUser(@RequestParam("addUserId") String userId, @RequestParam("addUserName") String userName,
			HttpServletRequest req, Model model) throws ServletException,IOException{
		//1-1. 入力チェック
		boolean check = addUserService.checkUserId(userId);

		//2.1
		if(check) tUserService.insertTUser(userId, userName);

		return "top";
	}

}
