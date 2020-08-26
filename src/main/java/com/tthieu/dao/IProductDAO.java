package com.tthieu.dao;

import com.tthieu.model.ProductModel;

import java.util.List;

public interface IProductDAO {
    List<ProductModel> findAll();

    ProductModel findOne(int id);

    List<ProductModel> findByName(String name);

    List<ProductModel> findByCategoryId(int id);

    int add(Object... parameters);

    void update(Object... parameters);

    int count(String sql, Object... parameters);

    void del(int id);
}
