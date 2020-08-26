package com.tthieu.controller.admin;

import com.tthieu.model.CategoryModel;
import com.tthieu.model.ProductModel;
import com.tthieu.service.ICategoryService;
import com.tthieu.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-product"})
public class ProductController extends HttpServlet {

    @Inject
    IProductService productService;

    @Inject
    ICategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/html;charset=UTF-8");
        String action = req.getParameter("action");

        if(action!=null){
            //System.out.println(action);
            List<CategoryModel> listCategory = categoryService.findAll();
            req.setAttribute("listCategory", listCategory);

            if(action.equals("add")){
                RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/product/add.jsp");
                dispatcher.forward(req, resp);
            }else if(action.equals("edit")){
                int id = Integer.parseInt(req.getParameter("id"));

                ProductModel model = productService.findOne(id);
                System.out.println(model);
                req.setAttribute("model", model);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/product/edit.jsp");
                dispatcher.forward(req, resp);
            }

        }else {
            List<ProductModel> list = productService.findAll();
            req.setAttribute("list", list);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/product/list.jsp");
            dispatcher.forward(req, resp);
        }

    }
}
