package com.bestone.dao;
import com.bestone.model.ArticleModel;
import com.bestone.model.UserModel;

import java.util.List;

public interface ArticleDao {

    //查询单个文章
//    ArticleModel findOneArticle(ArticleModel article);

    //创建文章对象
    int addArticle(ArticleModel article);

    //根据用户查询文章列表
//    List<ArticleModel> findArticle(UserModel u);

    //文章加标签

    //评论文章

    //收藏文章

}

