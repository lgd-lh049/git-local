package com.gd.service;

import com.gd.pojo.Ice;

import java.util.List;

public interface IceService {

    //查询全部商品
    List<Ice> selectIce();

    //根据id查询商品
    Ice selectIceById(int id);

    //根据id删除商品
    int deleteIceById(int id);

    //根据id编辑商品
    int updateIceById(Ice ice);

    //添加商品
    int addIce(Ice ice);
}
