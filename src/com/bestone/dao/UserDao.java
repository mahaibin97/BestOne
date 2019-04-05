package com.bestone.dao;

import com.bestone.model.UserCollectionArticle;
import com.bestone.model.UserModel;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    //用户登录
    UserModel login(UserModel user);

    //根据用户id查询
    UserModel getUserById(UserModel user);


    UserModel register(UserModel user);

    void changePassword(UserModel user);

    void updateUserInformation(UserModel user);

    //收藏文章
    void collectArticle(UserCollectionArticle uca);
    //判断是否已经收藏
    UserCollectionArticle judgeCollection(UserCollectionArticle uca);
}
