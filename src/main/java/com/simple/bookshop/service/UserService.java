package com.simple.bookshop.service;

import com.simple.bookshop.bean.User;

public interface UserService {
    boolean login(User user);

    boolean register(User user);
}
