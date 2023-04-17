package com.gd.service.impl;

import com.gd.mapper.UserMapper;
import com.gd.pojo.User;
import com.gd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectUserIs(User user) {
        return userMapper.selectUserIs(user);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }


}
