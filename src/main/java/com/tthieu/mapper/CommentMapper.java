package com.tthieu.mapper;

import com.tthieu.model.CommentModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentMapper implements RowMapper{

    @Override
    public Object mapRow(ResultSet resultSet) {
        CommentModel model = new CommentModel();
        try {
            model.setId(resultSet.getInt("id"));
            model.setProductId(resultSet.getInt("productId"));
            model.setName(resultSet.getString("name"));
            model.setContent(resultSet.getString("content"));
            model.setCreatedDate(resultSet.getTimestamp("createdDate"));
            return model;
        } catch (SQLException e) {
            return null;
        }
    }
}
