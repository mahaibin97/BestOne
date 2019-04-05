package com.bestone.controller;

import com.bestone.model.*;
import com.bestone.service.ArticleService;
import com.bestone.service.CommentService;
import com.bestone.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommodityController {
    private Logger log=Logger.getLogger(PageController.class);
    @Resource
    private ArticleService service;
    @Resource
    private UserService userService;
    @Resource
    private CommentService commentService;

    /**
     * 点击文章的时候加载的过程
     * @param request
     * @param articleId
     * @return
     */
    @RequestMapping(value = "commodity")
    public String toCommodity(HttpServletRequest request,String articleId) {
        log.info("----->>>:to commodity");
        ArticleModel article=new ArticleModel();
        article.setArticle_id(Integer.valueOf(articleId));
        UserArticlePicture articleDetails=service.findOneArticleDetailsById(article);
        request.getSession().setAttribute("articleDetails",articleDetails);

        CommentModel comment=new CommentModel();
        comment.setArticle_id(Integer.valueOf(articleId));
        List<CommentModel>rootComments=commentService.getRootComments(comment);

        for(CommentModel rootComment:rootComments){
            if(commentService.getChildComments(rootComment)!=null){
                rootComment.setChildComments(commentService.getChildComments(rootComment));
                log.debug("================================>>>>>>>>>"+rootComment.getChildComments().toString());
            }
        }
        request.getSession().setAttribute("rootComments",rootComments);
        log.debug("---------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>to commodityDetails"+article);
        return "commodity";
    }

    @RequestMapping(value = "commodity_details")
    public String toCommodityDetails(HttpServletRequest request) {
        log.info("----->>>:to commoditydetails");
        return "commodity_details";
    }
    @RequestMapping(value = "commodity_overViewThumbsUpCollect")
    public String toCommodityOverViewThumbsUpCollect(HttpServletRequest request){
        if(request.getSession().getAttribute("user")!=null){
            UserModel userModel= (UserModel) request.getSession().getAttribute("user");
            UserArticlePicture userArticlePicture= (UserArticlePicture) request.getSession().getAttribute("articleDetails");
            UserCollectionArticle uca=new UserCollectionArticle(userArticlePicture.getArticle_id(),userModel.getPhoneNum());
            UserCollectionArticle ucaTemp=userService.judgeCollection(uca);
            if(ucaTemp!=null){
                uca.setCollected(true);
            }else{
                uca.setCollected(false);
            }
            request.getSession().setAttribute("userCollectionArticle",uca);
        }
        return "commodity_overViewThumbsUpCollect";
    }
    @RequestMapping(value = "commodity_comment")
    public String toCommodityComment(HttpServletRequest request){
        return "commodity_comment";
    }

    /**
     * 点赞
     * @param request
     * @param articleId
     * @return
     */
    @RequestMapping(value = "addArticleThumbsUp")
    public String addArticleThumbsUp(HttpServletRequest request,String articleId){
        ArticleModel articleTemp=new ArticleModel();
        articleTemp.setArticle_id(Integer.valueOf(articleId));
        service.addArticleThumbsUp(articleTemp);
        return "redirect:/commodity?articleId="+articleId;
    }

    @RequestMapping(value = "addMoreArticles")
    public ModelAndView addMoreArticle(HttpServletRequest request){
        ModelAndView view=new ModelAndView();
        view.setViewName("commodity_more");

        PageModel page= (PageModel) request.getSession().getAttribute("articlePage");
        log.debug("==================================="+page);
        page.setNowCount(page.getNowCount()+page.getPageSize());
        page.setNowPage(page.getNowPage()+1);
        request.getSession().setAttribute("articlePage",page);

        List<UserArticlePicture>list=service.findHotArticles(page);
        view.addObject("List",list);
        if(page.getNowPage()>=page.getCountPage()){
            return null;
        }
        return view;
    }

//    @RequestMapping(value = "toArticlesByClassify")
//    public String toArticlesByClassify(HttpServletRequest request,String classifyId,String name) {
//        log.info("----->>>:toArticlesByClassify");
//        LabelModel label=new LabelModel();
//        label.setClassify_id(Integer.valueOf(classifyId));
//        List<UserArticlePicture>list=service.findArticleByClassify(label);
//        request.setAttribute("Classify",name);
//        request.getSession().setAttribute("ArticleListClassify",list);
//        PageModel articlePage=new PageModel();
//
//        articlePage.setPageSize(9);
//        articlePage.setNowCount(0);
//        articlePage.setCountPage(service.getArticleCount()/articlePage.getPageSize());
//        articlePage.setNowPage(0);
//        if(articlePage.getNowPage()>=articlePage.getCountPage()){
//            return null;
//        }
//        request.getSession().setAttribute("articlePageClassify",articlePage);
//        return "articlesByClassify";
//    }

    //然后改 CommodityController中最下面的两个方法：
    //显示分类文章
    @RequestMapping(value = "toArticlesByClassify")
    public String toArticlesByClassify(HttpServletRequest request,String classifyId,String name) {
        log.info("----->>>:toArticlesByClassify");
        LabelModel label=new LabelModel();
        label.setClassify_id(Integer.valueOf(classifyId));

        PageModel articlePage=new PageModel();
        articlePage.setPageSize(9);
        articlePage.setNowCount(0);
        articlePage.setCountPage(service.getArticleCountByClassify(label)/articlePage.getPageSize());
        articlePage.setNowPage(0);

        List<UserArticlePicture>list=service.findArticleByClassify(label);

        request.setAttribute("Classify",name);
        request.getSession().setAttribute("ArticleListClassify",list);
        request.getSession().setAttribute("articlePageClassify",articlePage);
        return "articlesByClassify";
    }

    //分类显示添加文章
    @RequestMapping(value = "addMoreArticlesByClassify")
    public ModelAndView addMoreArticleByClassify(HttpServletRequest request){
        ModelAndView view=new ModelAndView();
        view.setViewName("commodity_more");

        PageModel page= (PageModel) request.getSession().getAttribute("articlePageClassify");
        log.debug("==================================="+page);
        page.setNowCount(page.getNowCount()+page.getPageSize());
        page.setNowPage(page.getNowPage()+1);
        if(page.getNowPage()>=page.getCountPage()){
            return null;
        }
        request.getSession().setAttribute("articlePageClassify",page);
        List<UserArticlePicture>list= (java.util.List<UserArticlePicture>) request.getSession().getAttribute("ArticleListClassify");
        List<UserArticlePicture>temp=new ArrayList<>();
        for(int i=0;i<9;i++){
            temp.add(list.get(page.getNowCount()+i));
        }
        view.addObject("List",temp);
        return view;
    }


}
