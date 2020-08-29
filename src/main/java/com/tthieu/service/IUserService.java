package com.tthieu.service;

import com.tthieu.model.UserModel;

import java.util.List;

public interface IUserService {
    List<UserModel> findAll();

    UserModel findOne(String username, String password);

    UserModel findOne(int Id);

    int add(UserModel model);

    void update(UserModel model);

    void delete(int id);
}
