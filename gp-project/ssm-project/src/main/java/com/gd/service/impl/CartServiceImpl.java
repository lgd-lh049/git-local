package com.gd.service.impl;

import com.gd.mapper.CartMapper;
import com.gd.pojo.Cart;
import com.gd.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper mapper;
    @Override
    public List<Cart> selectCarts() {
        return mapper.selectCarts();
    }

    @Override
    public int addCart(Cart cart) {
        return mapper.addCart(cart);
    }

    @Override
    public int deleteCart(int id) {
        return mapper.deleteCart(id);
    }

    @Override
    public int deleteCarts() {
        return mapper.deleteCarts();
    }

    @Override
    public double Total(){
        double total=0;
        List<Cart> carts = mapper.selectCarts();
        if (carts != null) {
            for (Cart cart : carts) {
                total = total + cart.getTotal()*cart.getIce().getIcePrice();
            }
        }else{
            total = 0;
        }
        return total;
    }
}
