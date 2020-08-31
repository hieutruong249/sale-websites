package com.tthieu.controller.web;

import com.tthieu.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/user"})
public class User extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        StringBuilder url = new StringBuilder("/views/web/");

        if (action != null) {
            if (action.equals("login")) {
                url.append("login.jsp");
            } else if (action.equals("register")) {
                url.append("register.jsp");
            }
            RequestDispatcher dispatcher = req.getRequestDispatcher(url.toString());
            dispatcher.forward(req, resp);
        } else {
            SessionUtil.getInstance().removeValue(req, "USERMODEL");
            resp.sendRedirect(req.getContextPath() + "/home");
        }
    }
}
