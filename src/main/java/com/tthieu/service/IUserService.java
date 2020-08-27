package com.tthieu.service;

import com.tthieu.model.UserModel;

public interface IUserService {
    UserModel findOne(String username, String password);

    int add(UserModel model);
}
