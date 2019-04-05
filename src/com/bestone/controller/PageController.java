package com.bestone.controller;

import com.bestone.model.PageModel;
import com.bestone.model.UserArticlePicture;
import com.bestone.model.UserModel;
import com.bestone.service.ArticleService;
import com.bestone.util.Path;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageDecoder;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.List;

@Controller
public class PageController {
    private Logger log=Logger.getLogger(PageController.class);
    @Resource
    private ArticleService service;

    @RequestMapping(value = "main")
    public String toMain(HttpServletRequest request) {
        log.info("----->>>:to main");
        return "/main";
    }
    @RequestMapping(value = "top")
    public String queryTop(HttpServletRequest request) {
        log.info("----->>>:to main_top");
        return "main_top";
    }
    @RequestMapping(value = "left")
    public String queryLeft(HttpServletRequest request) {
        PageModel articlePage=new PageModel();
        articlePage.setPageSize(9);
        articlePage.setNowCount(0);

        articlePage.setCountPage(service.getArticleCount()/articlePage.getPageSize());
        articlePage.setNowPage(0);
        request.getSession().setAttribute("articlePage",articlePage);
        log.info("----->>>:to main_left");

        List<UserArticlePicture> hotArticles=service.findHotArticles(articlePage);
        request.getSession().setAttribute("hotArticles",hotArticles);
        return "main_left";
    }
    //加载分页面 bottom
    @RequestMapping(value = "bottom")
    public String queryBottom(HttpServletRequest request) {
        log.info("----->>>:to main_bottom");
        return "main_bottom";
    }


    @RequestMapping(value = "Login")
    public String Login(HttpServletRequest request) {
        log.info("----->>>:to Login");
        return "Login";
    }

    @RequestMapping(value = "user")
    public String toUser(HttpServletRequest request) {
        log.info("----->>>:to user");
        return "user";
    }

    @RequestMapping(value = "user_details")
    public String toUser_details(HttpServletRequest request) {
        log.info("----->>>:to user_details");
        return "user_details";
    }


    @RequestMapping(value = "user_settings")
    public String toUser_Settings(HttpServletRequest request) {
        log.info("----->>>:to user_settings");
        return "user_settings";
    }
    @RequestMapping(value = "user_settings_details")
    public String toUser_Settings_Details(HttpServletRequest request) {
        log.info("----->>>:to user_settings_details");
        return "user_settings_details";
    }
    @RequestMapping(value = "toArticle")
    public String toAddArticle(HttpServletRequest request) {
        log.info("----->>>:to user_settings_details");
        return "addArticle";
    }
    @RequestMapping(value = "toAddArticle")
    public String toAddArticleDetails(HttpServletRequest request) {
        log.info("----->>>:to user_settings_details");
        return "addArticleDetails";
    }


    @RequestMapping("/articlePictureShow")
    public void bmpShow(HttpServletRequest request, HttpServletResponse response,String articleId,String pictureName) throws IOException {
        String imagePath = Path.articlePath+articleId+"/"+pictureName;
        response.reset();
        OutputStream output = response.getOutputStream();// 得到输出流
        if (imagePath.toLowerCase().endsWith(".jpg"))// 使用编码处理文件流的情况：
        {
            response.setContentType("imag/jepg;charaset=utf-8");// 设定输出的类型
            // 得到图片的真实路径

            // 得到图片的文件流
            InputStream imageIn = new FileInputStream(new File(imagePath));
            // 得到输入的编码器，将文件流进行jpg格式编码
            JPEGImageDecoder decoder = JPEGCodec.createJPEGDecoder(imageIn);
            // 得到编码后的图片对象
            BufferedImage image = decoder.decodeAsBufferedImage();
            // 得到输出的编码器
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
            encoder.encode(image);// 对图片进行输出编码
            imageIn.close();// 关闭文件流
        }
        if (imagePath.toLowerCase().endsWith(".png"))// 使用编码处理文件流的情况：
        {
            response.setContentType(" image/png;charaset=utf-8");
            InputStream imageIn = new FileInputStream(new File(imagePath));
            BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
            BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
            byte data[] = new byte[4096];// 缓冲字节数
            int size = 0;
            size = bis.read(data);
            while (size != -1) {
                bos.write(data, 0, size);
                size = bis.read(data);
            }
            bis.close();
            bos.flush();// 清空输出缓冲流
            bos.close();
        }
        if (imagePath.toLowerCase().endsWith(".gif"))// 不使用编码处理文件流的情况：
        {
            response.setContentType("image/gif");
            InputStream imageIn = new FileInputStream(new File(imagePath));//文件流
            BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
            BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
            byte data[] = new byte[4096];// 缓冲字节数
            int size = 0;
            size = bis.read(data);
            while (size != -1) {
                bos.write(data, 0, size);
                size = bis.read(data);
            }
            bis.close();
            bos.flush();// 清空输出缓冲流
            bos.close();
        }
        output.close();
    }
}
