package com.gd.service;

import com.gd.pojo.Order;
import com.gd.pojo.User;

import java.util.List;

public interface OrderService {

    //查询用户订单
    List<Order> queryOrder();

    //生成用户订单
    int addOrder(Order order);

}
