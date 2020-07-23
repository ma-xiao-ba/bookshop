package com.simple.bookshop.mapper;

import com.simple.bookshop.bean.User;

public interface UserMapper {
    Integer login(User user);

    void register(User user);
}
