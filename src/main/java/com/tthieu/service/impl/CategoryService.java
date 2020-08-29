package com.tthieu.service.impl;

import com.tthieu.dao.ICategoryDAO;
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
        return category.findOne(id);
    }

    @Override
    public List<CategoryModel> findByName(String name) {
        return category.findByName(name);
    }

    @Override
    public int add(CategoryModel model) {
        return category.add(model.getName(), model.getSlug(), model.getIsDelete());
    }

    @Override
    public void update(CategoryModel model) {
        category.update(model.getName(), model.getSlug(), model.getIsDelete(), model.getId());
    }

    @Override
    public void delete(int id) {
        category.del(id);
    }

    @Override
    public int count(String sql, Object... parameters) {
        return 0;
    }
}
