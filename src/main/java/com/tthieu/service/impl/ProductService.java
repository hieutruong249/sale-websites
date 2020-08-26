package com.tthieu.service.impl;

import com.tthieu.dao.ICategoryDAO;
import com.tthieu.dao.IProductDAO;
import com.tthieu.model.ProductModel;
import com.tthieu.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    IProductDAO product;

    @Override
    public List<ProductModel> findAll() {
        return product.findAll();
    }

    @Override
    public ProductModel findOne(int id) {
        return product.findOne(id);
    }

    @Override
    public List<ProductModel> findByName(String name) {
        return product.findByName(name);
    }

    @Override
    public List<ProductModel> findByCategoryId(int id) {
        return product.findByCategoryId(id);
    }

    @Override
    public int add(ProductModel model) {
        return product.add();
    }

    @Override
    public void update(ProductModel model) {

    }

    @Override
    public void delete(int id) {
        product.del(id);
    }

    @Override
    public int count(String sql, Object... parameters) {
        return 0;
    }
}
