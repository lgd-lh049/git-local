package com.gd.mapper;

import com.gd.pojo.Cart;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartMapper {

    //查询用户购物车所用商品
    List<Cart> selectCarts();

    //添加至购物车
    int addCart(Cart cart);

    //删除购物车
    int deleteCart(int id);

    //清空购物车
    int deleteCarts();

    //修改购物车
    int updateCart();
}
