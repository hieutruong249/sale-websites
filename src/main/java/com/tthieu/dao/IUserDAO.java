package com.tthieu.dao;

import com.tthieu.model.ProductModel;
import com.tthieu.model.UserModel;

public interface IUserDAO {
    UserModel findOne(Object... parameters);

    int add(Object... parameters);

    void update(Object... parameters);
}
