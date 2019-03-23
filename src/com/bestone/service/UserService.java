package com.bestone.service;

import com.bestone.model.UserModel;

public interface UserService {
    UserModel login(UserModel user);
    UserModel register(UserModel user);
    void changePassword(UserModel user);
}
