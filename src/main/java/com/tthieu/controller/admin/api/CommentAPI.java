package com.tthieu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tthieu.model.CommentModel;
import com.tthieu.model.UserModel;
import com.tthieu.service.ICommentService;
import com.tthieu.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = {"/api-comment"})
public class CommentAPI extends HttpServlet {

    @Inject
    ICommentService commentService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        CommentModel model = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(), commentService.add(model));




//        req.setCharacterEncoding("UTF-8");
//        resp.setContentType("application/html;charset=UTF-8");
//
//        CommentModel model = new CommentModel();
//        model.setProductId(Integer.parseInt(req.getParameter("productId")));
//        model.setName(req.getParameter("name"));
//        model.setContent(req.getParameter("content"));
//        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));
//
//        if (commentService.add(model) > 0){
//            resp.sendRedirect(req.getContextPath() + "/product?id=" + model.getProductId());
//        }

    }
}
