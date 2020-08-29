package com.tthieu.dao;

import com.tthieu.model.UserModel;

import java.util.List;

public interface IUserDAO {
    List<UserModel> findAll();

    UserModel findOne(Object... parameters);

    UserModel findOneById(Object... parameters);

    int add(Object... parameters);

    void update(Object... parameters);
}
