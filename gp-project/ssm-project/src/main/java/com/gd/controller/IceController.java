package com.gd.controller;

import com.gd.pojo.Ice;
import com.gd.service.IceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class IceController {

    @Autowired
    private IceService iceService;

    @RequestMapping("/ices")
    public String selectIces(Model model){
        List<Ice> ices = iceService.selectIce();
        model.addAttribute("ices",ices);
        return "forward:/jsp/home.jsp";
    }

    @RequestMapping("/house")
    public String queryIces(Model model){
        List<Ice> ices = iceService.selectIce();
        model.addAttribute("ices",ices);
        return "forward:/jsp/house.jsp";
    }

    @RequestMapping("/goshop/{id}")
    public String selectIceItem(@PathVariable("id") int id ,Model model){
        Ice iceItem = iceService.selectIceById(id);
        model.addAttribute("ice",iceItem);
        return "forward:/jsp/product.jsp";
    }

    @RequestMapping("/iceitem/{id}")
    public String updateIceItem(@PathVariable("id") int id, Model model){
        Ice iceItem = iceService.selectIceById(id);
        model.addAttribute("iceItem",iceItem);
        return "forward:/jsp/updateice.jsp";
    }

    @RequestMapping("/deleteice/{id}")
    public String deleteIceById(@PathVariable("id") int id){
        iceService.deleteIceById(id);
        return "forward:/house";
    }

    @RequestMapping("/addice")
    public String addIce(Ice ice,Model model){
        iceService.addIce(ice);
        return "forward:/house";
    }

    @RequestMapping("/updateice")
    public String updateIce(Ice ice,HttpServletRequest request){
        System.out.println(ice);
        iceService.updateIceById(ice);
        return "forward:/house";
    }


}
