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

        if(action!=null){
            //System.out.println(action);
            if(action.equals("add")){
                RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/category/add.jsp");
                dispatcher.forward(req, resp);
            }else if(action.equals("edit")){
                int id = Integer.parseInt(req.getParameter("id"));

                CategoryModel model = category.findOne(id);
                req.setAttribute("model", model);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/category/edit.jsp");
                dispatcher.forward(req, resp);
            }

        }else {

            List<CategoryModel> list = category.findAll();
            req.setAttribute("list", list);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/category/list.jsp");
            dispatcher.forward(req, resp);
        }


    }
}
