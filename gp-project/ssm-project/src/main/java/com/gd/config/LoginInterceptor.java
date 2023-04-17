package com.gd.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //登录成功之后，应该有用户的session；
        Object loginUser = request.getSession().getAttribute("user");
        if (loginUser == null) { //没有登录
            request.setAttribute("msg","你还未登录，请先登录！");
            request.getRequestDispatcher("/jsp/account.jsp").forward(request,response);
            return false;
        }else {
            return true;
        }

    }
}
