package com.bestone.service.Impl;

import com.bestone.dao.CommentDao;
import com.bestone.dao.UserDao;
import com.bestone.model.CommentModel;
import com.bestone.model.UserModel;
import com.bestone.service.CommentService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CommentServiceImpl implements CommentService {
    Logger log = Logger.getLogger(CommentServiceImpl.class);
    @Resource
    private CommentDao dao;
    @Resource
    private UserDao userDao;

    //写文章的根评论
    public void addRootComment(CommentModel comment){
        log.debug("-------------------->>addRootComment"+comment);
        dao.addRootComment(comment);
    }
    //获取文章根评论
    public List<CommentModel> getRootComments(CommentModel comment){
        List<CommentModel> rootComments=null;
        try{
            rootComments=dao.getRootComments(comment);
            log.debug("-------------------->>>>> getRootComments");
        }catch (Exception e){
            log.debug("-------------------->>>>> getRootComments  error");
        }
        return rootComments;
    }

    //查询文章子评论
    public List<CommentModel> getChildComments(CommentModel comment){
        List<CommentModel> childComments=null;
        try{
            log.debug("-------------------->>>>> getChildComments");
            childComments=dao.getChildComments(comment);
            if(childComments!=null){
                for(CommentModel child:childComments){
                    UserModel temp=new UserModel();
                    temp.setPhoneNum(child.getPhoneNum());
                    UserModel author=userDao.getUserById(temp);
                    child.setUserName(author.getUserName());

                    temp.setPhoneNum(child.getReply_id());
                    UserModel replyName=userDao.getUserById(temp);
                    child.setReplyName(replyName.getUserName());
                    log.debug("------------------>>>>>>>>>>>>>>>>>childComment=============="+child);
                }
            }

        }catch (Exception e){
            log.debug("-------------------->>>>> getChildComments  error");
            childComments=null;
        }
        return childComments;
    }


    //写回复评论
    public void addReplyComment(CommentModel comment){
        try{
            dao.addReplyComment(comment);
            log.debug("-------------------->>>>> addReplyComment");
        }catch (Exception e){
            e.printStackTrace();
            log.debug("-------------------->>>>> addReplyComment error");
        }
    }
}
