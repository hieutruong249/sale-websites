package com.tthieu.mapper;

import com.tthieu.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper{
    @Override
    public Object mapRow(ResultSet resultSet) {
        ProductModel model = new ProductModel();
        try {
            model.setId(resultSet.getInt("id"));
            model.setName(resultSet.getString("name"));
            model.setSlug(resultSet.getString("slug"));
            model.setImage(resultSet.getString("Image"));
            model.setShortDescription(resultSet.getString("shortSummary"));
            model.setCategoryId(resultSet.getInt("categoryId"));
            model.setPrice(resultSet.getDouble("price"));
            model.setViews(resultSet.getInt("views"));
            model.setContent(resultSet.getString("content"));
            model.setManufacturer(resultSet.getString("manufacturer"));
            return model;
        } catch (SQLException e) {
            return null;
        }
    }
}
