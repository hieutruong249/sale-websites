package com.tthieu.controller.admin.api;

import com.tthieu.model.UserModel;
import com.tthieu.service.IUserService;
import com.tthieu.utils.HttpUtil;

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
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        userService.add(model);

        //ObjectMapper mapper = new ObjectMapper();
        //mapper.writeValue(resp.getOutputStream(), );
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        userService.update(model);

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        UserModel model = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        model.setIsDelete(1);
        userService.update(model);
    }
}
