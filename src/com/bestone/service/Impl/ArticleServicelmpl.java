package com.bestone.service.Impl;
import com.bestone.dao.ArticleDao;
import com.bestone.model.ArticleModel;
import com.bestone.model.UserModel;
import com.bestone.service.ArticleService;
import org.springframework.stereotype.Service;

import com.bestone.service.ArticleService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticleServicelmpl implements ArticleService {

    @Resource
    private ArticleDao dao;

//    @Resource
//    public ArticleModel findOneArticle(ArticleModel article){return null;}

    @Override
    public ArticleModel addArticle(ArticleModel article) {
        return null;
    }

//    @Override
//    public List<ArticleModel> findArticle(UserModel u) {
//        return null;
//    }
}
