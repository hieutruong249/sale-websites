package com.tthieu.service.impl;

import com.tthieu.dao.ICommentDAO;
import com.tthieu.model.CommentModel;
import com.tthieu.service.ICommentService;

import javax.inject.Inject;
import java.util.List;

public class CommentService implements ICommentService {

    @Inject
    ICommentDAO comment;

    @Override
    public List<CommentModel> findByProductId(int id) {
        return comment.findByProductId(id);
    }

    @Override
    public int add(CommentModel model) {
        return comment.add(model.getProductId(), model.getName(), model.getContent(), model.getCreatedDate());
    }
}
