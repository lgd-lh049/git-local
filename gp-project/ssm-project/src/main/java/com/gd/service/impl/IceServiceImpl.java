package com.gd.service.impl;

import com.gd.mapper.IceMapper;
import com.gd.pojo.Ice;
import com.gd.service.IceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IceServiceImpl implements IceService {

    @Autowired
    private IceMapper iceMapper;

    @Override
    public List<Ice> selectIce() {
        return iceMapper.selectIce();
    }

    @Override
    public Ice selectIceById(int id) {
        return iceMapper.selectIceById(id);
    }

    @Override
    public int deleteIceById(int id) {
        return iceMapper.deleteIceById(id);
    }

    @Override
    public int updateIceById(Ice ice) {
        return iceMapper.updateIceById(ice);
    }

    @Override
    public int addIce(Ice ice) {
        return iceMapper.addIce(ice);
    }
}
