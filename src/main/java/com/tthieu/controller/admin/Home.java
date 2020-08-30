package com.tthieu.controller.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = { "/admin" })
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/html;charset=UTF-8");

        request.setAttribute("admin",1);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/admin/home.jsp");
        dispatcher.forward(request, response);
    }
}
