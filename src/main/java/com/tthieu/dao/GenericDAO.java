package com.tthieu.dao;

import com.tthieu.mapper.RowMapper;

import java.util.List;

public interface GenericDAO<T> {
    List<T> query(String sql, RowMapper<T> rowMaper, Object... parameters);

    int insert(String sql, Object... parameters);

    void update(String sql, Object... parameters);

    int count(String sql, Object... parameters);
}
