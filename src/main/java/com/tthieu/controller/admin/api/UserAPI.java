package com.tthieu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;
import com.tthieu.utils.HttpUtil;
import com.tthieu.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-user"})
public class UserAPI extends HttpServlet {

    @Inject
    IUserService userService;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();

        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);

        if (model.getType().equals("login")) {
            UserModel userModel = null;

            userModel = userService.findOne(model.getUsername(), model.getPassword());
            if (userModel != null) {
                String url = null;
                SessionUtil.getInstance().putValue(req, "USERMODEL", userModel);
                if (userModel.getRoleId() == 1) {
                    mapper.writeValue(resp.getOutputStream(), 1); //redirect admin page
                } else {
                    mapper.writeValue(resp.getOutputStream(), 2); //redirect user page
                }
            } else {
                mapper.writeValue(resp.getOutputStream(), 0); //err
            }
        } else if (model.getType().equals("register")) {
            mapper.writeValue(resp.getOutputStream(), userService.add(model));
        }

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        userService.update(model);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(), 1);

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        model.setIsDelete(1);
        userService.update(model);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(), 1);
    }
}
