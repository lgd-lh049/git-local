package com.gd.controller;

import com.gd.pojo.Cart;
import com.gd.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.http.HttpResponse;
import java.util.List;

@Controller
public class CartController {
    @Autowired
    private CartService service;


    @RequestMapping("cart")
    public String selectCarts(HttpServletRequest request, Model model) {
        List<Cart> carts = service.selectCarts();
        double total = service.Total();
        request.getSession().setAttribute("total",total);
        Object user = request.getSession().getAttribute("user");
        model.addAttribute("u",user);
        if (request.getSession().getAttribute("user") != null) {
            model.addAttribute("carts",carts);
            return "forward:/jsp/cart.jsp";
        }
        return "redirect:/jsp/account.jsp";
    }

    @RequestMapping("/addcart")
    public String addCart(Cart cart,HttpServletRequest request) {
        service.addCart(cart);
        double total = service.Total();
        request.getSession().setAttribute("total",total);
        return "forward:/cart";
    }

    @RequestMapping("/deletecart/{id}")
    public String deleteCart(@PathVariable("id") int id, HttpServletRequest request) {
        service.deleteCart(id);
        double total = service.Total();
        request.getSession().setAttribute("total",total);
        return "forward:/cart";
    }

    @RequestMapping("/empty")
    public String deleteCarts(Model model,HttpServletRequest request) {
        service.deleteCarts();
        double total = service.Total();
        request.getSession().setAttribute("total",total);
        return "forward:/cart";
    }

}
