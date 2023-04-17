package com.gd.service;

import com.gd.pojo.User;

public interface UserService {

    //查询用户是否存在
    User selectUserIs(User user);

    //注册一个用户
    int addUser(User user);

}
