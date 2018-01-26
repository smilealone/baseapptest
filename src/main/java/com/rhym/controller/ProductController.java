package com.rhym.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rhym.entity.User;
import com.rhym.service.UserService;

@Controller
public class ProductController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value="/showproduct",method=RequestMethod.GET)
	public String showUserName(@RequestParam("uid") int uid,HttpServletRequest request,Model model){
		User user = userService.getUserById(uid);
		if(user != null){
			model.addAttribute("name", user.getUserName());
			return "product";
		}
		request.setAttribute("error", "没有找到该用户！");
		return "error";
	}
}
