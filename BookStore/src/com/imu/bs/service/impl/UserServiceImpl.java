package com.imu.bs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imu.bs.bean.User;
import com.imu.bs.mapper.UserMapper;
import com.imu.bs.service.UserService;
import com.imu.mzw.temp.MyCipher;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	public boolean login(User user) {
		MyCipher mc = new MyCipher();
		user.setUpwd(mc.encrypt(user.getUpwd(),"!"));
		return userMapper.login(user)==1;
	}

}
