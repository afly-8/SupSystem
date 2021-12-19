package com.supsystem.servlet.supplier;

import com.supsystem.bean.Supplier;
import com.supsystem.dao.SupplierImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet("/CallSearchSupplierServlet")
public class SearchSupplierServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        try {
            Map<String, Object> split = null;
            int currentPage;
            String searchType = "speople";
            String keyword = req.getParameter("keyword");
            String currentPages = req.getParameter("currentPage");
            SupplierImp supplierImp = new SupplierImp();
            if (currentPages == null) {
                currentPage = 1;
            } else {
                currentPage = Integer.parseInt(currentPages);
            }
            if (searchType == null && currentPages == null) {

                split = supplierImp.split(currentPage, 8, null, null);
                req.setAttribute("currentPage", currentPage);
            } else if (searchType != null && keyword != null) {

                split = supplierImp.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            } else {

                split = supplierImp.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            }

            if (split != null) {
                List<Supplier> sList = (ArrayList<Supplier>) split.get("allSupplier");
                Long allRecorders = (Long) split.get("allRecorders");
                req.setAttribute("sList", sList);
                req.setAttribute("allRecorders", allRecorders);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/supplier.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
