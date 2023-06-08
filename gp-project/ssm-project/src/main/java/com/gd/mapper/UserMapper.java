package com.gd.mapper;

import com.gd.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

     //查询用户是否存在
     User selectUserIs(User user);

     //注册一个用户
     int addUser(User user);




}
