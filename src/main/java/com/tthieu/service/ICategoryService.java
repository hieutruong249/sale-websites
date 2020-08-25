package com.tthieu.service;

import com.tthieu.model.CategoryModel;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> findAll();

    CategoryModel findOne(int id);

    List<CategoryModel> findByName(String name);

    int add(CategoryModel model);

    void update(CategoryModel model);

    void delete(CategoryModel model);

    int count(String sql, Object... parameters);
}
