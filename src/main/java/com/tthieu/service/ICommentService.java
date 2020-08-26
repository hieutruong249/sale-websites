package com.tthieu.service;

import com.tthieu.model.CommentModel;

import java.util.List;

public interface ICommentService {
    List<CommentModel> findByProductId(int id);

    int add(CommentModel model);
}
