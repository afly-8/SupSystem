package com.supsystem.servlet.goods;

import com.supsystem.dao.GoodsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/CallDoDelGoodsServlet")
public class DoDelGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String gid = req.getParameter("gid");
        GoodsImp impGoods = new GoodsImp();
        PrintWriter out = resp.getWriter();
        try {
            int res = impGoods.delete(gid);
            if (res > 0) {
                out.write("true");
            } else {
                out.write("false");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
