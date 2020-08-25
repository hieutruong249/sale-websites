package com.tthieu.controller.web;

import com.tthieu.dao.ICategoryDAO;
import com.tthieu.dao.impl.CategoryDAO;
import com.tthieu.service.ICategoryService;
import com.tthieu.service.impl.CategoryService;

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
    private ICategoryService category;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/html;charset=UTF-8");

        System.out.println(category.findAll().size());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/web/home.jsp");
        dispatcher.forward(request, response);
    }
}
