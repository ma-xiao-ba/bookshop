package com.imu.bs.mapper;

import com.imu.bs.bean.User;

public interface UserMapper {
	public Integer login(User user);
	public void register(User user);
}
