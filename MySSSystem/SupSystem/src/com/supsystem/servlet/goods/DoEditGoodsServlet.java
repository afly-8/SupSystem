package com.supsystem.servlet.goods;

import com.supsystem.bean.Goods;
import com.supsystem.dao.GoodsImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/CallDoEditGoodsServlet")
public class DoEditGoodsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");


        PrintWriter out = resp.getWriter();
        String gid = req.getParameter("gid");
        String gname = req.getParameter("gname");
        String gtype = req.getParameter("gtype");
        String inprice = req.getParameter("inprice");
        String outprice = req.getParameter("outprice");
        String status = req.getParameter("status");
        GoodsImp impGoods = new GoodsImp();
        Goods goods = new Goods(gid, gname, gtype, Double.parseDouble(inprice), Double.parseDouble(outprice), Integer.parseInt(status));
        try {
            if (impGoods.update(goods, gid) > 0) {
                out.write("true");
            } else {
                out.write("false");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
