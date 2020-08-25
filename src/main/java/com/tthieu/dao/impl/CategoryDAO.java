package com.tthieu.dao.impl;

import com.tthieu.dao.ICategoryDAO;
import com.tthieu.mapper.CategoryMapper;
import com.tthieu.model.CategoryModel;

import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {
    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT * FROM category";
        return query(sql, new CategoryMapper());
    }

    @Override
    public CategoryModel findOne(int id) {
        return null;
    }

    @Override
    public List<CategoryModel> findByName(String name) {
        return null;
    }

    @Override
    public int add(Object... parameters) {
        return 0;
    }

    @Override
    public void update(Object... parameters) {

    }
}
