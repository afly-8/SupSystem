package com.supsystem.servlet.goods;

import com.supsystem.bean.Goods;
import com.supsystem.dao.GoodsImp;

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

@WebServlet("/CallSearchGoodsServlet")
public class SearchGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        try {
            String searchType = req.getParameter("searchType");
            String keyword = req.getParameter("keyword");
            String currentPages = req.getParameter("currentPage");
//            GoodsServiceImp goodsServiceImp = new GoodsServiceImp();
            GoodsImp iGoods = new GoodsImp();
            Map<String, Object> split = null;
            int currentPage;
            if (currentPages == null) {
                currentPage = 1;
            } else {
                currentPage = Integer.parseInt(currentPages);
            }
            if (searchType == null && currentPages == null) {

                split = iGoods.split(currentPage, 8, null, null);
                req.setAttribute("currentPage", currentPage);
            } else if (searchType != null && keyword != null) {

                split = iGoods.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            } else {

                split = iGoods.split(currentPage, 8, searchType, keyword);
                req.setAttribute("currentPage", currentPage);
                req.setAttribute("searchType", searchType);
                req.setAttribute("keyword", keyword);
            }

            if (split != null) {
                List<Goods> gList = (ArrayList<Goods>) split.get("allGoods");
                Long allRecorders = (Long) split.get("allRecorders");
                req.setAttribute("gList", gList);
                req.setAttribute("allRecorders", allRecorders);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/goods.jsp");
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
