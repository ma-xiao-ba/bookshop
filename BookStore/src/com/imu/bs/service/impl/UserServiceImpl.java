package com.imu.bs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imu.bs.bean.User;
import com.imu.bs.mapper.UserMapper;
import com.imu.bs.service.UserService;
import com.imu.gjg.encrypt.*;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	public boolean login(User user) {
		MyCipher mc = new MyCipher();
		System.out.println("1:"+user.getUpwd());
		user.setUpwd(mc.encrypt(user.getUpwd(),"!"));
		System.out.println("2:"+user.getUpwd());
		return userMapper.login(user)==1;
	}
	
	public boolean register(User user) {
		boolean flag = false;
		MyCipher mc = new MyCipher();
		user.setUpwd(mc.encrypt(user.getUpwd(),"!"));
		try {
			userMapper.register(user);
			System.out.println("service:"+user.toString());
			flag = true;
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return flag;
	}

}
