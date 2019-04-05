package com.bestone.controller;

import com.bestone.model.ArticleModel22;
import com.bestone.model.UserArticle22;
import com.bestone.model.UserModel;
import com.bestone.service.ArticleService22;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//社区页面的 controller
@Controller
//@RequestMapping("/shequ")
public class ArticleController22 {

    Logger log = Logger.getLogger(ArticleController22.class);

    ArticleModel22 article22 = new ArticleModel22();

    @Resource
    ArticleService22 service;

    //转跳到发布社区文章的页面，即富文本页面
    @RequestMapping(value = "/add")
    public String addShequ(HttpServletRequest request) {
        return "addArticle22";
    }

    //富文本 form 提交地址
    @RequestMapping(value="/publish")
    @ResponseBody
    public String save(HttpServletRequest request, ArticleModel22 article22) {

        //从 request 获取 form 中提交的信息
        String article22_title = request.getParameter("article22_title");
        String article22_abstract = request.getParameter("article22_abstract");
        String article22_content = request.getParameter("article22_content");
        //根据 session 获取当前登录用户 model
        UserModel user = (UserModel)request.getSession().getAttribute("user");
        //获取系统时间
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式

        //封装 atricle22
        article22.setArticle22_title(article22_title);
        article22.setArticle22_abstract(article22_abstract);
        article22.setArticle22_content(article22_content);
        article22.setPhoneNum(user.getPhoneNum());
        article22.setTime(time.format(new Date()));

        //打印日志
        log.debug("--------------add shequ wenzhang !!!----");

        //封装后传到后台
        service.save(article22);

        //重定向返回到 publish.jsp 页面
//        return "redirect:/publish";
        return "You have published article successfully!";
    }

//    @RequestMapping(value = "top")
//    public String loadTop(HttpServletRequest request){
//        log.info("----->>> to load top page");
//        return "main_top";
//    }

    //网站首页「社区」按钮
    @RequestMapping(value = "community")
    public String toCommunity(HttpServletRequest request) {
        log.info("----->>>:to community");
        return "community";
    }

    //load the community right page
    @RequestMapping(value = "community_right")
    public String toCommunityRight(HttpServletRequest request) {
        log.info("----->>>:to community_right");
        return "community_right";
    }

    //社区首页显示文章列表
    @RequestMapping(value = "community_left")
    public String queryLeft(HttpServletRequest request) {
        log.info("#############----->>>:to shequ_left");
        List<UserArticle22> shequArticles=service.findAllShequArticle();

        //test List
//        List<UserArticle22> l = new ArrayList<>();
//        l.add(new UserArticle22("String title", "String content", "2019-04-01", "String phoneNum", "String userName"));
//        log.debug(l);
//        request.setAttribute("shequArticles",l);

        for(UserArticle22 a:shequArticles){
            log.debug(a);
        }

        //shequArticles返回值保存到session当前会话中，名称为shequArticles;
        request.getSession().setAttribute("shequArticles",shequArticles);

        return "community_left";
    }

    /**
     * @RequestMapping(value = "commodity_details")
     *     public String toCommodityDetails(HttpServletRequest request) {
     *         log.info("----->>>:to commoditydetails");
     *         ArticleModel article= (ArticleModel) request.getSession().getAttribute("article");
     *         log.debug("---------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+article);
     *        UserArticlePicture articleDetails=service.findOneArticleDetailsById(article);
     *        request.getSession().setAttribute("articleDetails",articleDetails);
     *         return "commodity_details";
     *     }
     */
    //跳转文章详情页面
    @RequestMapping(value = "community_details")
    public String toShequArticleDetails(HttpServletRequest request, String article22_id){
        ArticleModel22 article22=new ArticleModel22();

        //传article22_id到后台去查
        article22.setArticle22_id(Integer.valueOf(article22_id));
        log.debug("-----article22---->>>"+article22.toString());

        UserArticle22 shequDetails = service.findShequArticleById(article22);
        log.debug("---shequDetails11------>>>>"+shequDetails);

        //load article details
        request.setAttribute("shequDetails",shequDetails);
        log.debug("---shequDetails22------>>>>"+shequDetails);
        return "community_details";

    }

}
