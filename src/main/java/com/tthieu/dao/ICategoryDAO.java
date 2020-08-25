package com.tthieu.dao;

import com.tthieu.model.CategoryModel;

import java.util.List;

public interface ICategoryDAO {
    List<CategoryModel> findAll();

    CategoryModel findOne(int id);

    List<CategoryModel> findByName(String name);

    int add(Object... parameters);

    void update(Object... parameters);

    int count(String sql, Object... parameters);
}
