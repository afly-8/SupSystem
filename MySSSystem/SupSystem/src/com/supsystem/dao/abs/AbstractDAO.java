package com.supsystem.dao.abs;

import com.supsystem.util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class AbstractDAO {
    protected PreparedStatement ps;
    protected Connection conn;
    // 实例化util
    JdbcUtil util = new JdbcUtil();
    // 获取连接
    public AbstractDAO () {this.conn = util.getCon();}

    /**
     * 搜索一个表数据行数
     * @param tableName 按表名称查询
     * @return 统计表数据行数
     * @throws SQLException SQL异常
     */
    public Long countHandle (String tableName) throws SQLException {
        String sql = "select count(*) from " +tableName;
        this.ps = this.conn.prepareStatement(sql);
        ResultSet rs = this.ps.executeQuery();
        if (rs.next()) {
            return rs.getLong(1);
        }
        return 0L;
    }

    /**
     * 按条件统计一个表数据行数
     * @param tableName 表名称条件
     * @param column 搜字段条件
     * @param keyword 关键字条件
     * @return 统计表数据行数
     * @throws SQLException SQl异常
     */
    public Long countHandle (String tableName, String column, String keyword) throws SQLException {
        String sql = "select count(*) from " +tableName + " where " + column + " like ?" ;
        this.ps = this.conn.prepareStatement(sql);
        this.ps.setString(1, "%" +keyword +"%");
        ResultSet rs = this.ps.executeQuery();
        if (rs.next()) {
            return rs.getLong(1);
        }
        return 0L;
    }

    /**
     * 处理删除数据
     * @param tableName 表名条件
     * @param primaryKey 主键条件
     * @param target 删除目标
     * @return 返回处理结果（int）影响行数
     * @throws SQLException SQl异常
     */
    public int delHandle(String tableName, String primaryKey, String target) throws SQLException {
        String sql = "delete from " +tableName+ " where " + primaryKey + "=?";
        this.ps = this.conn.prepareStatement(sql);
        this.ps.setString(1, target);
        return this.ps.executeUpdate();
    }

    /**
     * 检查搜索是否为空
     * @param params n个参数
     * @return 返回判断结果（true/false）
     */
    public boolean checkEmpty(String ... params) {
        for (String param : params) {
            if (param == null || "".equals(param)) {
                return false;
            }
        }
        return true;
    }
}
