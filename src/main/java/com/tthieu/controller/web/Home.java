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

@WebServlet(urlPatterns = {"/trang-chu"})
public class Home extends HttpServlet {

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/html;charset=UTF-8");

        request.setAttribute("listCategory", categoryService.findAll());
        request.setAttribute("listProduct", productService.findAll());
        request.setAttribute("home",1);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/web/home.jsp");
        dispatcher.forward(request, response);
    }
}
