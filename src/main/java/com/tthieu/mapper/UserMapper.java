package com.tthieu.mapper;

import com.tthieu.model.CategoryModel;
import com.tthieu.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper{
    @Override
    public Object mapRow(ResultSet resultSet) {
        UserModel model = new UserModel();
        try {
            model.setId(resultSet.getInt("id"));
            model.setUsername(resultSet.getString("username"));
            model.setPassword(resultSet.getString("password"));
            model.setFullname(resultSet.getString("fullname"));
            model.setRoleId(resultSet.getInt("roleId"));
            model.setIsDelete(resultSet.getInt("isDeleted"));
            return model;
        } catch (SQLException e) {
            return null;
        }
    }
}
