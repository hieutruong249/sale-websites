package com.tthieu.service.impl;

import com.tthieu.dao.IUserDAO;
import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;

import javax.inject.Inject;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    IUserDAO userDAO;

    @Override
    public List<UserModel> findAll() {
        return userDAO.findAll();
    }

    @Override
    public UserModel findOne(String username, String password) {
        return userDAO.findOne(username, password);
    }

    @Override
    public UserModel findOne(int id) {
        return userDAO.findOneById(id);
    }

    @Override
    public int add(UserModel model) {
        return userDAO.add(model.getUsername(), model.getPassword(), model.getFullname(), 2);
    }

    @Override
    public void update(UserModel model) {
        userDAO.update(model.getUsername(), model.getPassword(), model.getRoleId(), model.getFullname(), model.getIsDelete(), model.getId());
    }

    @Override
    public void delete(int id) {

    }


}
