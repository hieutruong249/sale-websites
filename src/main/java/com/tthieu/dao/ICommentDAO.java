package com.tthieu.dao;

import com.tthieu.model.CommentModel;

import java.util.List;

public interface ICommentDAO {
    List<CommentModel> findByProductId(int id);

    int add(Object... parameters);
}
