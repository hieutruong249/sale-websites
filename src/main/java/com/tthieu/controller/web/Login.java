package com.tthieu.controller.web;

import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;
import com.tthieu.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class Login extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/web/login.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        UserModel userModel = null;
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        userModel = userService.findOne(username, password);
        if (userModel != null) {
            String url = null;
            SessionUtil.getInstance().putValue(req,"USERMODEL", userModel);
            if (userModel.getRoleId() == 1) {
                url = "/admin";
            } else {
                url = "/trang-chu";
            }
            resp.sendRedirect(req.getContextPath() + url);
        } else {
            req.setAttribute("message", "Username or password is wrong!!!");
            req.setAttribute("username", username);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/web/login.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
