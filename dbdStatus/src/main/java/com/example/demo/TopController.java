package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TopController {
	@Value("${application.name}")
	private String appName;
	private static final Logger LOGGER = LoggerFactory.getLogger(TopController.class);

	@GetMapping(value = "/")
	public String top(HttpServletRequest req, Model model) {
		LOGGER.debug("call hello - UA : {}", req.getHeader("User-Agent"));
		HttpSession session = req.getSession();

		session.setAttribute("appName", appName);

		return "top";
	}
}
