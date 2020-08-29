package com.tthieu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.slugify.Slugify;
import com.tthieu.model.CategoryModel;
import com.tthieu.service.ICategoryService;
import com.tthieu.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-category"})
public class CategoryAPI extends HttpServlet {

    @Inject
    ICategoryService categoryService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        CategoryModel model = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        model.setSlug(new Slugify().slugify(model.getName()));

        ObjectMapper mapper = new ObjectMapper();
        int id = categoryService.add(model);
        mapper.writeValue(resp.getOutputStream(), id);

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        CategoryModel model = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        model.setSlug(new Slugify().slugify(model.getName()));

        ObjectMapper mapper = new ObjectMapper();
        categoryService.update(model);
        mapper.writeValue(resp.getOutputStream(), 1);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        CategoryModel model = HttpUtil.of(req.getReader()).toModel(CategoryModel.class);
        model.setSlug(new Slugify().slugify(model.getName()));
        model.setIsDelete(1);

        ObjectMapper mapper = new ObjectMapper();
        categoryService.update(model);
        mapper.writeValue(resp.getOutputStream(), 1);
    }

}
