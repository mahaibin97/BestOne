package com.bestone.service.Impl;

import com.bestone.controller.ArticleController;
import com.bestone.dao.ArticleDao22;
import com.bestone.model.ArticleModel22;
import com.bestone.model.UserArticle22;
import com.bestone.model.UserArticlePicture;
import com.bestone.service.ArticleService22;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class ArticleServiceImpl22 implements ArticleService22 {

    Logger log = Logger.getLogger(ArticleController.class);

    @Resource
    private ArticleDao22 dao;

    //create shequ article Dao
    public void save(ArticleModel22 article22) {

        dao.save(article22);
    }

    //select all shequ articles Dao
    @Override
    public List<UserArticle22> findAllShequArticle() {
        List<UserArticle22> am = null;
        try {
            am=dao.findAllShequArticle();
            log.info("=======================findAllShequArticle============================");
            log.debug(am);
        } catch (Exception e) {
            log.info("=======================findAllShequArticle Error============================");
            am = null;
        }
        return am;
    }

    //查询单个社区文章
    @Override
    public UserArticle22 findShequArticleById(ArticleModel22 article22) {
        UserArticle22 ar=null;
        try{
            ar=dao.findShequArticleById(article22);
            log.debug("-----findShequArticleById---->>> ");
        }catch (Exception e){
            ar=null;
            log.debug("-----findShequArticleById error---->>> "+ar);
        }

        return ar;
    }

    //根据用户查询文章列表
    @Override
    public List<UserArticle22> findShequByUser(ArticleModel22 article22) {
        return null;
    }


}
