package com.tthieu.mapper;

import com.tthieu.model.CategoryModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper{
    @Override
    public CategoryModel mapRow(ResultSet resultSet) {
        CategoryModel model = new CategoryModel();
        try {
            model.setId(resultSet.getInt("id"));
            model.setName(resultSet.getString("name"));
            model.setSlug(resultSet.getString("slug"));
            return model;
        } catch (SQLException e) {
            return null;
        }
    }
}
