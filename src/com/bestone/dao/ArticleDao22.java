package com.bestone.dao;

import com.bestone.model.*;

import java.util.List;

public interface ArticleDao22 {

    //新建社区文章
    void save(ArticleModel22 article22);

    //根据用户查询文章列表
    List<UserArticle22> findShequByUser(UserModel user);

    //查询所有的社区文章（不区分作者）
    List<UserArticle22> findAllShequArticle();

    //查询单个社区文章
    UserArticle22 findShequArticleById(ArticleModel22 article22);

}
