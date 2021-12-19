package com.supsystem.servlet;

import com.supsystem.bean.User;
import com.supsystem.dao.UserImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/CallLoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserImp impUser = new UserImp();
        List<User> uList = impUser.select(username, password);
        PrintWriter out = resp.getWriter();

        if (uList.size()>0) {
            for (User list: uList) {
                String user = list.getUsername();
                String pass = list.getPassword();
                String name = list.getName();
                String sex = list.getSex();
                String uid = list.getId();
                // 查询
                if (user.equals(username) && pass.equals(password)) {   // 用户登录合法
                    // 将当前的用户名保存在session属性范围之中，不管如何跳转，只要不关闭浏览器都可以获取该数据
                    req.getSession().setAttribute("name", name);
                    req.getSession().setAttribute("sex", sex);
                    req.getSession().setAttribute("uid", uid);
                    out.write("true");
                }
            }
        } else {
            // 错误的用户名或密码
            out.write("false");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
