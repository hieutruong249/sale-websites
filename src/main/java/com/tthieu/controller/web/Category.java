package com.tthieu.controller.web;

import com.tthieu.service.ICategoryService;
import com.tthieu.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/category"})
public class Category extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Inject
    IProductService productService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("listProduct", productService.findByCategoryId(id));
        req.setAttribute("listCategory", categoryService.findAll());

        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/web/productByCategory.jsp");
        dispatcher.forward(req, resp);
    }
}
