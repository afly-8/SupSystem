package com.supsystem.interfaces;

import com.supsystem.bean.User;
import java.sql.SQLException;
import java.util.List;

public interface IUser {
    public int insert(User user) throws SQLException;
    public List<User> select(String user, String pass);
    public int delete(String userid);
    public int update(User user, String key) throws SQLException;
}
