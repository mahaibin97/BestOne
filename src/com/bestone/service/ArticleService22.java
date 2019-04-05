package com.bestone.service;


import com.bestone.model.ArticleModel22;
import com.bestone.model.UserArticle22;

import java.util.List;

public interface ArticleService22 {

    //create shequ article
    void save(ArticleModel22 article22);

    //find all shequ articles
    List<UserArticle22> findAllShequArticle();

    //查询单个社区文章
    UserArticle22 findShequArticleById(ArticleModel22 article22);

    //select shequ articles of user
    List<UserArticle22> findShequByUser(ArticleModel22 article22);

}
