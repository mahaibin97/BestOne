package com.bestone.service.Impl;

import com.bestone.dao.LabelDao;
import com.bestone.model.LabelModel;
import com.bestone.service.LabelService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LabelServiceImpl implements LabelService {
    @Resource
    private LabelDao dao;

    @Override
    public LabelModel showLabel() {
        return (LabelModel) dao.showLabel();
    }
}
