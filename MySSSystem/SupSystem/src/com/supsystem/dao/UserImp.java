package com.supsystem.dao;
// 本系统
import com.supsystem.bean.User;
import com.supsystem.interfaces.IUser;
import com.supsystem.util.JdbcUtil;
// java
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserImp implements IUser {
    // JDBC工具
    JdbcUtil db = new JdbcUtil();
    PreparedStatement ps = null;
    List<User> list = new ArrayList<>();
    ResultSet rs = null;

    @Override
    public int insert(User user) throws SQLException {
        return 0;
    }


    // 判断不同的查询方法，全查寻与条件查询
    @Override
    public List<User> select(String uName, String uPassword) {
        try {
            if (uName != null && uPassword != null) {
                // 带参数查询
                String sql = "select * from user where username=? and password=?";
                ps = db.createStatement(sql);
                try {
                    ps.setString(1, uName);
                    ps.setString(2, uPassword);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            } else {
                // 不带参数查询
                String sql = "select * from user";
                ps = db.createStatement(sql);
            }
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    String id = rs.getString(1);
                    String name = rs.getString(2);
                    String username = rs.getString(3);
                    String password = rs.getString(4);
                    String sex = rs.getString(5);
                    String phone = rs.getString(6);
                    String joinTime = rs.getString(7);
                    int status = rs.getInt(8);
                    User user = new User(id, name,username, password, sex, phone, joinTime, status);
                    list.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.close(rs);
        }
        return list;
    }

    @Override
    public int delete(String sno) {
        return 0;
    }

    @Override
    public int update(User user, String key) throws SQLException {
        String sql = "UPDATE user SET password = ? where userid=?";
        ps = db.createStatement(sql);
        ps.setString(1, user.getPassword());
        ps.setString(2, key);
        return ps.executeUpdate();
    }
}
