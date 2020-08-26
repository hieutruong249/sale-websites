package com.tthieu.dao.impl;

import com.tthieu.dao.ICommentDAO;
import com.tthieu.mapper.CommentMapper;
import com.tthieu.model.CommentModel;

import java.util.List;

public class CommentDAO extends AbstractDAO<CommentModel> implements ICommentDAO {

    @Override
    public List<CommentModel> findByProductId(int id) {
        String sql = "SELECT * FROM comment WHERE productId = ? ORDER BY createdDate DESC";
        return query(sql, new CommentMapper(), id);
    }

    @Override
    public int add(Object... parameters) {
        String sql = "INSERT INTO comment (productId,name,content,createdDate) VALUES (?,?,?,?)";
        return insert(sql, parameters);
    }
}
