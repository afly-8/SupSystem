package com.supsystem.test;

import com.supsystem.bean.User;
import com.supsystem.dao.UserImp;

import java.util.List;

public class UserTest {
    public static void main(String[] args) {
        UserImp impUser = new UserImp();
        List<User> uList = impUser.select("admin", "admin");
        if (uList.size()>0) {
            for (User list: uList) {
                // 查询
                System.out.println(list.getName());
                System.out.println(list.getUsername());
                System.out.println(list.getPassword());
                System.out.println("yes");
            }
        } else {    // 错误的用户名或密码
            System.out.println("no");
        }
    }
}
