package com.bestone.service.Impl;

import com.bestone.dao.UserDao;
import com.bestone.model.UserModel;
import com.bestone.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao dao;
    @Override
    public UserModel login(UserModel user) {
        return dao.login(user);
    }
    @Override
    public UserModel register(UserModel user){
        return dao.register(user);
    }

    public void changePassword(UserModel user){
        dao.changePassword(user);
    }
}
