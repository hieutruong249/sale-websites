package com.tthieu.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.slugify.Slugify;
import com.tthieu.model.ProductModel;
import com.tthieu.service.ICategoryService;
import com.tthieu.service.IProductService;
import com.tthieu.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(urlPatterns = {"/api-admin-product"})
public class ProductAPI extends HttpServlet {

    @Inject
    ICategoryService categoryService;

    @Inject
    IProductService productService;

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        if (req.getParameter("action").equals("delete")) {
//            int id = Integer.parseInt(req.getParameter("id"));
//            productService.delete(id);
//            resp.sendRedirect(req.getContextPath() + "/admin-product");
//        }
//
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        ProductModel model = HttpUtil.of(req.getReader()).toModel(ProductModel.class);

        model.setSlug(new Slugify().slugify(model.getName()));
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));

        System.out.println(model.toString());
        productService.add(model);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(), 1);


    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ProductModel model = HttpUtil.of(req.getReader()).toModel(ProductModel.class);

        model.setSlug(new Slugify().slugify(model.getName()));
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));

        System.out.println(model.toString());
        productService.update(model);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(), 1);

    }
}
