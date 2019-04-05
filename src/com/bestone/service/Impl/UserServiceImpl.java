package com.bestone.service.Impl;

import com.bestone.controller.ArticleController;
import com.bestone.dao.UserDao;
import com.bestone.model.UserCollectionArticle;
import com.bestone.model.UserModel;
import com.bestone.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class UserServiceImpl implements UserService {
    Logger log = Logger.getLogger(UserServiceImpl.class);
    @Resource
    private UserDao dao;
    @Override
    public UserModel login(UserModel user) {
        return dao.login(user);
    }


    //根据用户id查询
    @Override
    public UserModel getUserById(UserModel user){
        UserModel result=null;
        try{
            result=dao.getUserById(user);
            log.debug("------------------------->>>>>>>>getUserById");
        }catch (Exception e){
            log.debug("------------------------->>>>>>>>getUserById    error");
        }
        return result;
    }
    @Override
    public UserModel register(UserModel user){
        return dao.register(user);
    }

    public void changePassword(UserModel user){
        dao.changePassword(user);
    }

    public void updateUserInformation(UserModel user){
        dao.updateUserInformation(user);
    }

    public void collectArticle(UserCollectionArticle uca){
        log.debug("-----collectArticle---->>> ");
        dao.collectArticle(uca);
    }

    //判断是否已经收藏
    public UserCollectionArticle judgeCollection(UserCollectionArticle uca){
        UserCollectionArticle userCA=null;
        try{
            userCA=dao.judgeCollection(uca);
            log.debug("-----judgeCollection---->>> ");
        }catch (Exception e){
            userCA=null;
        }
        log.debug("-----judgeCollection error---->>> "+userCA);
        return userCA;
    }
}
