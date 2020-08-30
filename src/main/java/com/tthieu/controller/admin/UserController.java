package com.tthieu.controller.admin;

import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-user"})
public class UserController extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/html;charset=UTF-8");
        StringBuilder url = new StringBuilder("/views/admin/user/");

        if (action != null) {
            if (action.equals("add")) {
                url.append("add.jsp");

            } else if (action.equals("edit")) {
                int id = Integer.parseInt(req.getParameter("id"));

                UserModel model = userService.findOne(id);
                System.out.println(model.toString());
                req.setAttribute("model", model);
                url.append("edit.jsp");
            }

        } else {
            List<UserModel> list = userService.findAll();
            req.setAttribute("list", list);
            url.append("list.jsp");
        }

        req.setAttribute("user",1);
        RequestDispatcher dispatcher = req.getRequestDispatcher(url.toString());
        dispatcher.forward(req, resp);
    }
}
