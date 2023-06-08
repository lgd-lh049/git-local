package com.gd.service;

import com.gd.pojo.Cart;

import java.util.List;

public interface CartService {
    List<Cart> selectCarts();

    //添加至购物车
    int addCart(Cart cart);

    //删除购物车
    int deleteCart(int id);

    //清空购物车
    int deleteCarts();

    //计算总价
    public double Total();
}
