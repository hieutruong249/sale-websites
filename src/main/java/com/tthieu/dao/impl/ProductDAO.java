package com.tthieu.dao.impl;

import com.tthieu.dao.IProductDAO;
import com.tthieu.mapper.ProductMapper;
import com.tthieu.model.CategoryModel;
import com.tthieu.model.ProductModel;

import java.util.List;

public class ProductDAO extends AbstractDAO<CategoryModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAll() {
        String sql = "SELECT * FROM product";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> findMostView() {
        String sql = "SELECT * FROM product ORDER BY views DESC LIMIT 3";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> findLatest() {
        String sql = "SELECT * FROM product ORDER BY createdDate DESC LIMIT 3";
        return query(sql, new ProductMapper());
    }

    @Override
    public ProductModel findOne(int id) {
        String sql = "SELECT * FROM product WHERE id = ?";
        List<ProductModel> product = query(sql, new ProductMapper(), id);
        return product.isEmpty() ? null : product.get(0);
    }

    @Override
    public List<ProductModel> findByName(String name) {
        String sql = "SELECT * FROM product WHERE name = ?";
        return query(sql, new ProductMapper(), name);
    }

    @Override
    public List<ProductModel> findByCategoryId(int id) {
        String sql = "SELECT p.* FROM product p JOIN category c ON p.categoryId=c.id WHERE c.id = ?";
        return query(sql, new ProductMapper(), id);
    }

    @Override
    public int add(Object... parameters) {
        String sql = "INSERT INTO product(name, slug, shortSummary, content, createdDate, categoryId, manufacturer, views, price) VALUES (?,?,?,?,?,?,?,?,?)";
        //String sql = "INSERT INTO product(name) VALUES (?)";
        return insert(sql, parameters);
    }

    @Override
    public void update(Object... parameters) {
        String sql = "UPDATE product SET name = ?, slug = ?, shortSummary = ?, content = ?, price = ?, createdDate = ?, categoryId = ?, manufacturer = ?, views = ? WHERE id = ?";
        update(sql, parameters);
    }

    @Override
    public void del(int id) {
        String sql = "UPDATE category SET isDelete = 1 WHERE id = ?";
        update(sql, id);
    }
}
