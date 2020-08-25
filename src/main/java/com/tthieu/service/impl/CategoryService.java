package com.tthieu.service.impl;

import com.tthieu.dao.ICategoryDAO;
import com.tthieu.dao.impl.CategoryDAO;
import com.tthieu.model.CategoryModel;
import com.tthieu.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO category;

    @Override
    public List<CategoryModel> findAll() {
        return category.findAll();
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
    public int add(CategoryModel model) {
        return 0;
    }

    @Override
    public void update(CategoryModel model) {

    }

    @Override
    public void delete(CategoryModel model) {

    }

    @Override
    public int count(String sql, Object... parameters) {
        return 0;
    }
}
