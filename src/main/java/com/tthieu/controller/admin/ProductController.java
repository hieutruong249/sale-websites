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
        StringBuilder url = new StringBuilder("/views/admin/product/");


        if(action!=null){
            List<CategoryModel> listCategory = categoryService.findAll();
            req.setAttribute("listCategory", listCategory);

            if(action.equals("add")){
                url.append("add.jsp");

            }else if(action.equals("edit")){
                int id = Integer.parseInt(req.getParameter("id"));

                ProductModel model = productService.findOne(id);
                System.out.println(model);
                req.setAttribute("model", model);
                url.append("edit.jsp");

            }

        }else {
            List<ProductModel> list = productService.findAll();
            req.setAttribute("list", list);
            url.append("list.jsp");

        }

        req.setAttribute("product",1);
        RequestDispatcher dispatcher = req.getRequestDispatcher(String.valueOf(url));
        dispatcher.forward(req, resp);

    }
}
