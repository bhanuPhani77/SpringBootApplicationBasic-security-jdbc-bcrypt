package com.bhanu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bhanu.Entity.User;
import com.bhanu.service.UserImpl;

@Controller
public class userController {
	@Autowired
	UserImpl impl;
	@GetMapping("/showMyLoginPage")
	public String shoLog() {
		return "mylogin";
	}

	@GetMapping("/")
	public String show() {
		return "home";
	}

	@GetMapping("/leaders")
	public String showLeaders() {
		return "leaders";
	}

	@GetMapping("/systems")
	public String showSys() {
		return "systems";
	}

	@GetMapping("/register")
	public String shoRegistration(Model m) {
		m.addAttribute("user", new User());
		return "register";
	}

	 @PostMapping("/reg")
	  public String formRegSubmit(@ModelAttribute User user, Model model) {
	    impl.saveUser(user);
	    return "regsuccess";
	  }
//	 @GetMapping("/registration")
//	 public String formRegSuccess(@ModelAttribute User user, Model m) {
//		 m.containsAttribute(user.getPassword());
//		 return "";
//	 }

	// for access denied page
	@GetMapping("/access-denied")
	public String shoAccessDenied() {
		return "access-denied";

	}
}
