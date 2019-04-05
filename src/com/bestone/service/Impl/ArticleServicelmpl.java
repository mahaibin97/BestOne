package com.bestone.service.Impl;
import com.bestone.controller.ArticleController;
import com.bestone.dao.ArticleDao;
import com.bestone.model.*;
import com.bestone.service.ArticleService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.List;
@Service
public class ArticleServicelmpl implements ArticleService {
    Logger log = Logger.getLogger(ArticleServicelmpl.class);
    @Resource
    private ArticleDao dao;

//    @Resource
//    public ArticleModel findOneArticle(ArticleModel article){return null;}

    /**
     * 编写文章
     * @param article
     * @return
     */
    @Override
    public ArticleModel addArticle(ArticleModel article) {
        ArticleModel ar=null;
        log.debug("--------->>> ***&&&&&&*****………………ArticleService");
        try{
            dao.addArticle(article);
            ar=article;
            log.debug("-----add server ok---->>> ");
        }catch (Exception e){
            ar=null;
        }
        log.debug("-----add server---->>> "+ar);
        return ar;
    }

    //插入文章图片
    @Override
    public PictureModel addArticlePicture(PictureModel picture) {
        PictureModel pm = null;
        try {
            dao.addArticlePicture(picture);
            pm = picture;
            log.debug("-----article picture ok---->>> ");
        } catch (Exception e) {
            pm = null;
        }
        return pm;
    }

    /**
     * 加载主页图片
     * @return
     */
    @Override
    public List<UserArticlePicture> findHotArticles(PageModel page) {
        List<UserArticlePicture> am = null;
        try {
            am=dao.findHotArticles(page);
            log.debug("-----article picture ok---->>> ");
        } catch (Exception e) {
            am = null;
        }
        return am;
    }

    //查询用户发布的文章
    @Override
    public List<UserArticlePicture> findArticleByUser(UserModel u) {
        List<UserArticlePicture> result=null;
        try{
            result=dao.findArticleByUser(u);
            log.debug("=============== findArticleByUser==================");
        }catch (Exception e){
            log.debug("=============== findArticleByUser   error==================");
            e.printStackTrace();
        }
        return result;
    }

    //根据文章id查询
    @Override
    public ArticleModel findOneArticleById(ArticleModel article) {
        ArticleModel ar=null;
        try{
            ar=dao.findOneArticleById(article);
            log.debug("-----findOneArticle---->>> ");
        }catch (Exception e){
            ar=null;
            log.debug("-----findOneArticle error---->>> "+ar);
        }

        return ar;
    }
    //根据文章id查询文章具体信息
    @Override
    public UserArticlePicture findOneArticleDetailsById(ArticleModel article) {
        UserArticlePicture ar=null;
        try{
            ar=dao.findOneArticleDetailsById(article);
            dao.addArticleOverview(article);
            LabelModel lm=dao.getArticleLabel(article);
            ar.setLabelName(lm.getText());
            log.debug("-----findOneArticle---->>> ");
        }catch (Exception e){
            ar=null;
        }
        log.debug("-----findOneArticle error---->>> "+ar);
        return ar;
    }

    //找到最新的文章
    @Override
    public ArticleModel findNewArticle() {
        ArticleModel ar=null;
        try{
            ar=dao.findNewArticle();
            log.debug("-----findOneArticle---->>> ");
        }catch (Exception e){
            ar=null;
        }
        log.debug("-----findOneArticle error---->>> "+ar);
        return ar;
    }

    //查询用户收藏过的文章
    public List<UserArticlePicture> findArticleByCollection(UserModel u){
        List<UserArticlePicture> result=null;
        try{
            result=dao.findArticleByCollection(u);
            log.debug("=============== findArticleByCollection==================");
        }catch (Exception e){
            log.debug("=============== findArticleByCollection   error==================");
            e.printStackTrace();
        }
        return result;
    }

    //根据文章时间来查找文章
    @Override
    public ArticleModel findArticleByPandT(ArticleModel article) {
        ArticleModel ar=null;
        try{
            ar=dao.findArticleByPandT(article);
            log.debug("-----findOneArticle---->>> ");
        }catch (Exception e){
            ar=null;
        }
        log.debug("-----findOneArticle error---->>> "+ar);
        return ar;
    }

    //    查看用户评论过的文章
    public List<UserArticlePicture> findArticleByComment(UserModel u){
        List<UserArticlePicture> result=null;
        try{
            result=dao.findArticleByComment(u);
            log.debug("===============findArticleByComment==================");
        }catch (Exception e){
            log.debug("=============== findArticleByComment   error==================");
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 文章点赞
     * @param article
     */
    @Override
    public void addArticleThumbsUp(ArticleModel article) {
        dao.addArticleThumbsUp(article);
    }


    //    查询文章总数
    public Integer getArticleCount(){
        return dao.getArticleCount();
    }

    //根据分类查询文章
    public List<UserArticlePicture> findArticleByClassify(LabelModel label){
        List<UserArticlePicture> result=null;
        try{
            result=dao.findArticleByClassify(label);
            log.debug("===============findArticleByClassify==================");
        }catch (Exception e){
            log.debug("=============== findArticleByClassify   error==================");
            e.printStackTrace();
        }
        return result;
    }

    //在articleServiceImpl中用到两个方法：

    //    根据分类查询文章总数
    public Integer getArticleCountByClassify(LabelModel label){
        if(dao.getArticleCountByClassify(label)!=null){
            return  dao.getArticleCountByClassify(label);
        }else {
            return null;
        }

    }



}
