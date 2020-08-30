package com.tthieu.controller.admin;

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
import java.util.List;

@WebServlet(urlPatterns = {"/admin-category"})
public class CategoryController extends HttpServlet {

    @Inject
    private ICategoryService category;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/html;charset=UTF-8");
        StringBuilder url = new StringBuilder("/views/admin/category/");

        if (action != null) {
            if (action.equals("add")) {
                url.append("add.jsp");

            } else if (action.equals("edit")) {
                int id = Integer.parseInt(req.getParameter("id"));

                CategoryModel model = category.findOne(id);
                req.setAttribute("model", model);
                url.append("edit.jsp");
            }

        } else {
            List<CategoryModel> list = category.findAll();
            req.setAttribute("list", list);
            url.append("list.jsp");
        }
        req.setAttribute("category",1);
        RequestDispatcher dispatcher = req.getRequestDispatcher(url.toString());
        dispatcher.forward(req, resp);
    }
}
