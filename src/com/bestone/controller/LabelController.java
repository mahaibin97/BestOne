package com.bestone.controller;

import com.bestone.dao.LabelDao;
import com.bestone.model.LabelModel;
import com.bestone.service.LabelService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.font.CompositeFont;

import java.util.List;

@Controller
@RequestMapping(value = "")
public class LabelController {

    @Resource
    private LabelService service;

    private SqlSession session;

//    List<LabelModel> labelList = session.getMapper(LabelDao.class).showLabel();


}
