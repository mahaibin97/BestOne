package com.bestone.dao;
import com.bestone.model.*;
import java.util.List;

public interface ArticleDao {
    //查询单个文章具体信息
    ArticleModel findOneArticleById(ArticleModel article);
    //查询单个文章具体信息
    UserArticlePicture findOneArticleDetailsById(ArticleModel article);

    //查询最新的文章
    ArticleModel findNewArticle();
    ArticleModel findArticleByPandT(ArticleModel article);
    //创建文章对象
    int addArticle(ArticleModel article);
    //建图片关系
    PictureModel addArticlePicture(PictureModel picture);

    //加载最火的9个瞬间
    List<UserArticlePicture> findHotArticles(PageModel page);

    //根据用户查询文章列表
    List<UserArticlePicture> findArticleByUser(UserModel u);

    //查询用户收藏过的文章
    List<UserArticlePicture> findArticleByCollection(UserModel u);

    //文章浏览量加1
    void addArticleOverview(ArticleModel article);
    //文章点赞
    void addArticleThumbsUp(ArticleModel article);
    //文章加标签
    LabelModel getArticleLabel(ArticleModel article);

    //    查看用户评论过的文章
    List<UserArticlePicture> findArticleByComment(UserModel u);

    //    查询文章总数
    Integer getArticleCount();

    //根据分类查询文章
    List<UserArticlePicture> findArticleByClassify(LabelModel label);

    /**
     * 新增加的 dao
     */

    //    查询文章总数
    Integer getArticleCountByClassify(LabelModel label);
}

