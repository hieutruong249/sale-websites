package com.tthieu.dao.impl;

import com.tthieu.dao.IUserDAO;
import com.tthieu.mapper.UserMapper;
import com.tthieu.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findOne(Object... parameters) {
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        List<UserModel> list = query(sql, new UserMapper(), parameters);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public int add(Object... parameters) {
        String sql = "INSERT INTO user(username, password, fullname, roleId) VALUES (?,?,?,?)";
        return insert(sql, parameters);
    }

    @Override
    public void update(Object... parameters) {
        String sql = "UPDATE user SET username = ?, password = ?, roleId = ?, fullname = ?, isDeleted = ? WHERE id = ?";
        update(sql, parameters);
    }
}
