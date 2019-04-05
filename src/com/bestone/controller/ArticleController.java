package com.bestone.controller;

import com.bestone.model.ArticleModel;
import com.bestone.model.PictureModel;
import com.bestone.model.UserModel;
import com.bestone.service.ArticleService;
import com.bestone.util.Path;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping(value = "article/")
public class ArticleController {
    Logger log = Logger.getLogger(ArticleController.class);

    //注解 service
    @Resource
    private ArticleService service;

    // 发布文章 form 提交以后转跳, 拦截
    @RequestMapping("/addArticle")
    public String addUser(HttpServletRequest request,@RequestParam MultipartFile articlePicture){
        log.debug("--------->>:to after addArticle");
        ArticleModel article = new ArticleModel();

        //从 request 获取 form 中提交的信息
        String title=request.getParameter("title");
        String article_text=request.getParameter("article_text");
        String labelID = request.getParameter("labelID");
        int labelId=0;
        if(!labelID.equals("")){
            labelId= Integer.valueOf(labelID);
        }
        // int b = Integer.valueOf(str).intValue()

        //获取系统时间
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式

        //根据 session 获取当前登录用户 model
        UserModel user = (UserModel)request.getSession().getAttribute("user");

        //将信息封装
        article.setTitle(title);
        article.setArticle_text(article_text);
        article.setPhoneNum(user.getPhoneNum());
        article.setTime(time.format(new Date()));
        article.setLabelID(labelId);
        log.debug("----Controller----->>:"+article);

        //封装后传到后台
        service.addArticle(article);
        if(articlePicture!=null){
            PictureModel picture=new PictureModel();
            ArticleModel result=service.findArticleByPandT(article);

            picture.setArticleId(result.getArticle_id());
            String uploadPath=Path.articlePath+result.getArticle_id().toString();
            File fileDir=new File(uploadPath);

            //如果路径不存在，则创建目录
            if(!fileDir.exists()){
                fileDir.mkdirs();
            }
            MultipartFile addPicture=articlePicture;
            if(!addPicture.isEmpty()){
                File saveFile=new File(uploadPath+"/"+addPicture.getOriginalFilename());
                picture.setPicture(addPicture.getOriginalFilename());
                try {
                    FileUtils.copyInputStreamToFile(addPicture.getInputStream(),saveFile);
                    addPicture.transferTo(saveFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            service.addArticlePicture(picture);
        }

        log.debug("--------->>:成功…………………………");
        return "redirect:/main";
    }

}
