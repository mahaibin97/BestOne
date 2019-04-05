package com.bestone.controller;

import com.bestone.model.CommentModel;
import com.bestone.model.UserModel;
import com.bestone.service.CommentService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CommentController {
    Logger log = Logger.getLogger(CommentController.class);
    @Resource
    private CommentService service;

    @RequestMapping(value = "addRootComment")
    public String addRootComment(HttpServletRequest request,String articleId){
        UserModel userTemp= (UserModel) request.getSession().getAttribute("user");
        CommentModel comment=new CommentModel();
        comment.setPhoneNum(userTemp.getPhoneNum());
        comment.setArticle_id(Integer.valueOf(articleId));
        comment.setContext(request.getParameter("rootComment"));
        //获取系统时间
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        comment.setDate(time.format(new Date()));
        service.addRootComment(comment);
        return "redirect:/commodity?articleId="+articleId;
    }

    /**
     * 回复根评论
     * @param request
     * @param articleId
     * @return
     */
    @RequestMapping(value = "addCommentReply")
    public String addRootCommentReply(HttpServletRequest request,String articleId){
        UserModel user= (UserModel) request.getSession().getAttribute("user");
        CommentModel comment=new CommentModel();
        comment.setPhoneNum(user.getPhoneNum());
        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        comment.setDate(time.format(new Date()));
        comment.setContext(request.getParameter("rootComment"));
        comment.setArticle_id(Integer.valueOf(request.getParameter("article_id")));
        comment.setRoot_id(Integer.valueOf(request.getParameter("root_id")));
        comment.setReply_id(request.getParameter("reply_id"));
        comment.setParent(Integer.valueOf(request.getParameter("parent")));
        service.addReplyComment(comment);
        return "redirect:/commodity?articleId="+articleId;
    }
}
