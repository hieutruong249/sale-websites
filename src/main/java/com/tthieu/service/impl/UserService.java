package com.tthieu.service.impl;

import com.tthieu.dao.IUserDAO;
import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    IUserDAO userDAO;

    @Override
    public UserModel findOne(String username, String password) {
        return userDAO.findOne(username,password);
    }

    @Override
    public int add(UserModel model) {
        return userDAO.add(model.getUsername(),model.getPassword(),model.getFullname(),2);
    }
}
