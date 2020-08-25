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
        if(action!=null){
            System.out.println(action);
        }else {
            resp.setContentType("application/html;charset=UTF-8");
            List<CategoryModel> list = category.findAll();
            req.setAttribute("list", list);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/category/list.jsp");
            dispatcher.forward(req, resp);
        }


    }
}
