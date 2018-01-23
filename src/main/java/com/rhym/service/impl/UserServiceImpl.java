package com.rhym.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.rhym.dao.UserDao;
import com.rhym.entity.User;
import com.rhym.service.UserService;

@Service("userService")
public class UserServiceImpl  implements UserService{

	@Resource
	public UserDao userdao;

	public User getUserById(int id) {
		return userdao.selectByPrimaryKey(id);
	}

}
