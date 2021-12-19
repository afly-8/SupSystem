package com.supsystem.servlet.user;

import com.supsystem.bean.User;
import com.supsystem.dao.UserImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CallUserManageServlet")
public class ShowUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 实力化Dao
        UserImp impUser = new UserImp();
        // 搜索全部
        List<User> uList = impUser.select(null,null);
        req.setAttribute("uList", uList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/userManage.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
