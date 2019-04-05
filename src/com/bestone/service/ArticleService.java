package com.bestone.service;


import com.bestone.model.*;

import java.util.List;

public interface ArticleService {
    //查询单个文章
    ArticleModel findOneArticleById(ArticleModel article);

    UserArticlePicture findOneArticleDetailsById(ArticleModel article);
    //查询最新的文章
    ArticleModel findNewArticle();

    //根据时间和作者来查询
    ArticleModel findArticleByPandT(ArticleModel article);
    //创建文章对象
    ArticleModel addArticle(ArticleModel article);
    //储存图片
    PictureModel addArticlePicture(PictureModel picture);

    //加载主页图片
    List<UserArticlePicture> findHotArticles(PageModel page);

    //根据用户查询文章列表
    List<UserArticlePicture> findArticleByUser(UserModel u);

    //查询用户收藏过的文章
    List<UserArticlePicture> findArticleByCollection(UserModel u);
    //    查看用户评论过的文章
    List<UserArticlePicture> findArticleByComment(UserModel u);

    //文章点赞
    void addArticleThumbsUp(ArticleModel article);

    //    查询文章总数
    Integer getArticleCount();

    //根据分类查询文章
    List<UserArticlePicture> findArticleByClassify(LabelModel label);

    /**
     * 新增加
     */

    //根据分类查询文章
//    List<UserArticlePicture> findArticleByClassify(LabelModel label);

    //    根据分类查询文章总数
    Integer getArticleCountByClassify(LabelModel label);
}
