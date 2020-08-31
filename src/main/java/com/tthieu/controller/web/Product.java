package com.tthieu.controller.web;

import com.tthieu.model.ProductModel;
import com.tthieu.service.ICategoryService;
import com.tthieu.service.ICommentService;
import com.tthieu.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/product"})
public class Product extends HttpServlet {

    @Inject
    ICategoryService categoryService;

    @Inject
    IProductService productService;

    @Inject
    ICommentService commentService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));

        ProductModel model = productService.findOne(id);
        model.setViews(model.getViews() + 1);
        productService.update(model);

        req.setAttribute("model", model);
        req.setAttribute("listCategory", categoryService.findAll());
        req.setAttribute("listComment", commentService.findByProductId(id));
        req.setAttribute("categoryId", model.getCategoryId());

        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/web/detailProduct.jsp");
        dispatcher.forward(req, resp);
    }
}
