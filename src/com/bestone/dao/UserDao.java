package com.bestone.dao;

import com.bestone.model.UserModel;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    //用户登录
    UserModel login(UserModel user);

    UserModel register(UserModel user);

    void changePassword(UserModel user);
}
