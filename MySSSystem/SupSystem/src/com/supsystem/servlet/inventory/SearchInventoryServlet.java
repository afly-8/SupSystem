package com.supsystem.servlet.inventory;

import com.supsystem.bean.Inventory;
import com.supsystem.dao.InventoryImp;

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

@WebServlet("/CallSearchInventoryServlet")
public class SearchInventoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        try {
            Map<String, Object> split = null;
            int currentPage;
            String searchType = "igname";
            String keyword = req.getParameter("keyword");
            String currentPages = req.getParameter("currentPage");
            InventoryImp inventoryImp = new InventoryImp();
            if (currentPages == null) {
                currentPage = 1;
            } else {
                currentPage = Integer.parseInt(currentPages);
            }
            if (searchType == null && currentPages == null) {

                split = inventoryImp.split(currentPage, 8, null, null);
                req.setAttribute("currentPage", currentPage);
            } else if (searchType != null && keyword != null) {

                split = inventoryImp.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            } else {

                split = inventoryImp.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            }

            if (split != null) {
                List<Inventory> iList = (ArrayList<Inventory>) split.get("allInventory");
                Long allRecorders = (Long) split.get("allRecorders");
                req.setAttribute("iList", iList);
                req.setAttribute("allRecorders", allRecorders);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/stockManage.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
