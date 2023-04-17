package com.gd.service.impl;

import com.gd.mapper.OrderMapper;
import com.gd.pojo.Order;
import com.gd.pojo.User;
import com.gd.service.CartService;
import com.gd.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> queryOrder() {
        return orderMapper.queryOrder();
    }

    @Override
    public int addOrder(Order order) {
        return orderMapper.addOrder(order);
    }




}
