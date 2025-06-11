package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AddListController {
	@Value("${application.name}")
	private String appName;
	private static final Logger LOGGER = LoggerFactory.getLogger(AddListController.class);

	@PostMapping(value = "/addList")
	public String addList(HttpServletRequest req, Model model) {
		LOGGER.debug("call hello - UA : {}", req.getHeader("User-Agent"));

		return "addList";
	}

	@PostMapping(value = "/addList/top")
	public String returnTop(HttpServletRequest req, Model model) {
		LOGGER.debug("call hello - UA : {}", req.getHeader("User-Agent"));

		return "logintop";
	}
}
