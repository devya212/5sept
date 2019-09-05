package com.nucleus.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.model.User;
import com.nucleus.service.IUserService;



@Controller
public class UserController {

	@Autowired
	IUserService userService;
	
	@RequestMapping("/register")
	 public ModelAndView request8(User user)
	 {
		 return new ModelAndView("adminRegistration");
	 }

	@RequestMapping("/saveUser")	
	public ModelAndView request9(@ModelAttribute("user") User user,@RequestParam("role0") String[] role)
	{
		userService.saveUser(user,role);
		return new ModelAndView("result4","user",user);
	}


}
