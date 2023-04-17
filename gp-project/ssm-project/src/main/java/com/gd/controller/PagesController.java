package com.gd.controller;

import com.gd.pojo.Order;
import com.gd.pojo.User;
import com.gd.service.OrderService;
import com.gd.service.impl.OrderServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

@Controller
public class PagesController {

    @RequestMapping("/account")
    public String goAccount(HttpServletRequest request, HttpServletResponse response,Model model){
        OrderServiceImpl orderService = new OrderServiceImpl();
        if (request.getSession().getAttribute("user") != null) {
            return "forward:/jsp/loginok.jsp";
        }
        return "redirect:/jsp/account.jsp";
    }


}
