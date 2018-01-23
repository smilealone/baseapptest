package com.rhym.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.rhym.entity.User;

public class UserServiceTest2 {

	
	public static void main(String[] args) {
		ApplicationContext application = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService uService = (UserService) application.getBean("userService");
		User user = uService.getUserById(1);
		System.out.println(user.getUserName());
	}
}
