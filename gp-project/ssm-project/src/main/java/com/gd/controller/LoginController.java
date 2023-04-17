package com.gd.controller;

import com.gd.pojo.User;
import com.gd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private UserService userService;



    @RequestMapping("/login")
    public String selectUser(User user, Model model, HttpServletRequest request){
        try {
            User u = userService.selectUserIs(user);
            /*
            用户账号和密码是否查询出用户信息
                是：将用户信息存入Session，并跳转到后台首页
                否：Request域中添加提示信息，并转发到登录页面
             */
            if(u!=null){
                request.getSession().setAttribute("user",u);
                return "forward:/index.jsp";
            }
            request.setAttribute("msg","用户名或密码错误");
            return  "forward:/jsp/account.jsp";
        }catch(Exception e){
            e.printStackTrace();
            request.setAttribute("msg","系统错误");
            return  "forward:/jsp/account.jsp";
        }

    }

    @RequestMapping("/regist")
    public String addUser(User user,HttpServletRequest request){
        User registUser = userService.selectUserIs(user);
        if(registUser==null){
            int addUser = userService.addUser(user);
            return "redirect:/jsp/account.jsp";
        }else {
            request.getSession().setAttribute("regist","用户已存在，请重新注册！");
            return "redirect:/jsp/regist.jsp";
        }

    }


    @RequestMapping("/loginout")
    public String loginOut(Model model, HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "redirect:/index.jsp";

    }

}
