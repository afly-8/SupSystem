package com.supsystem.servlet.user;

import com.supsystem.bean.User;
import com.supsystem.dao.UserImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Objects;

@WebServlet("/CallDoEditUserServlet")
public class DoEditUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();
        String newPwd = req.getParameter("newPwd");
        String uid = (String) req.getSession().getAttribute("uid");
        User user = new User();
        user.setPassword(newPwd);
        UserImp impUser = new UserImp();
        if (!Objects.equals(newPwd, "")) {
            try {
                if (impUser.update(user, uid) > 0) {
                    out.write("true");
                } else {
                    out.write("false");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
