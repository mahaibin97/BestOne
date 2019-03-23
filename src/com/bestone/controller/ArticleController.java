package com.bestone.controller;

import com.bestone.model.ArticleModel;
import com.bestone.model.UserModel;
import com.bestone.service.ArticleService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "article/")
public class ArticleController {
    Logger log = Logger.getLogger(ArticleController.class);

    //注解 service
    @Resource
    private ArticleService service;

    //拦截 发布 按钮
    @RequestMapping(value = "toArticle")
    public String toRegister(HttpServletRequest request) {
        log.info("----->>>:to add article");
        return "addArticle";
    }

    // 发布文章 form 提交以后转跳, 拦截
    @RequestMapping("/addArticle")
    public String addUser(HttpServletRequest request){
        log.debug("--------->>:to after addArticle");
        ArticleModel article = new ArticleModel();

        String title=request.getParameter("title");
        String article_text=request.getParameter("article_text");

        //获取当前登录用户
        UserModel user = (UserModel)request.getSession().getAttribute("user");

        article.setTitle(title);
        article.setArticle_text(article_text);
        log.debug("--------->>:!!!!!!!!!!!!!!!!"+article);
//        article.setPhoneNum(user.getPhoneNum());


        service.addArticle(article);
        log.debug("--------->>:成功成功成功成功成功");
        return "redirect:/main";
    }

}
