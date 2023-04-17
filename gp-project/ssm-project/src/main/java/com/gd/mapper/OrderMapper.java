package com.gd.mapper;

import com.gd.pojo.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {

    //查询用户订单
    List<Order> queryOrder();

    //生成用户订单
    int addOrder(Order order);
}
