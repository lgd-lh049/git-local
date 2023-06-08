package com.gd.controller;

import com.gd.pojo.Order;
import com.gd.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/order")
    public String queryOrder(Model model){
        List<Order> orders = orderService.queryOrder();
        model.addAttribute("orders",orders);
        return "forward:/jsp/order.jsp";
    }

    @RequestMapping("/addorder")
    public String addOrder(Order order){
        orderService.addOrder(order);
        return "forward:/order";
    }


}
