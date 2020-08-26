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
        String sql = "SELECT * FROM category WHERE id = ?";
        List<CategoryModel> category = query(sql, new CategoryMapper(), id);
        return category.isEmpty() ? null : category.get(0);
    }

    @Override
    public List<CategoryModel> findByName(String name) {
        String sql = "SELECT * FROM category WHERE code = ?";
        return query(sql, new CategoryMapper(), name);
    }

    @Override
    public int add(Object... parameters) {
        String sql = "INSERT INTO category (name) VALUES (?)";
        return insert(sql, parameters);
    }

    @Override
    public void update(Object... parameters) {
        String sql = "UPDATE category SET name = ?, isDelete = ? WHERE id = ?";
        update(sql, parameters);
    }

    public void del(int id) {
        String sql = "UPDATE category SET isDelete = 1 WHERE id = ?";
        update(sql, id);
    }


}
