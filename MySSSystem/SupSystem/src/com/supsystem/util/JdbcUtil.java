package com.supsystem.util;

import java.sql.*;

public class JdbcUtil {
     final String URL="jdbc:mysql://localhost/supsystem?useUnicode=true&characterEncoding=utf8";
     final String USERNAME="root";
     final String PASSWORD="111111";
     PreparedStatement ps=null;
     Connection con=null;

    //将jar包driver加载到JVM中
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //封装交通管道创建细节
    public Connection getCon() {
        try {
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    //创建statement对象
    public PreparedStatement createStatement(String sql) {
        try {
            ps = getCon().prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ps;
    }

    // PreparedStatement与Connection 销毁细节 insert，update，delete
    public void close() {
        if (ps != null){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //销毁结果集重载
    public void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
