package com.tthieu.controller.admin.api;

import com.tthieu.model.CategoryModel;
import com.tthieu.service.ICategoryService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = { "/api-admin-category" })
public class CategoryAPI extends HttpServlet {

    @Inject
    ICategoryService categoryService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        if(action!=null){
            CategoryModel model = new CategoryModel();
            if (action.equals("add")){
                model.setName(req.getParameter("name"));

                System.out.println(categoryService.add(model));
                resp.sendRedirect(req.getContextPath() + "/admin-category");

            }
            else if (action.equals("edit")){
                model.setId(Integer.parseInt(req.getParameter("id")));
                model.setName(req.getParameter("name"));
                System.out.println(model);
                categoryService.update(model);
                resp.sendRedirect(req.getContextPath() + "/admin-category");

            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        if (req.getParameter("action").equals("delete")){
            int id  = Integer.parseInt(req.getParameter("id"));
            System.out.println(id);
            categoryService.delete(id);
            resp.sendRedirect(req.getContextPath() + "/admin-category");
        }

    }
}
