package com.supsystem.dao;

import com.supsystem.bean.Supplier;
import com.supsystem.dao.abs.AbstractDAO;
import com.supsystem.interfaces.ISupplier;
import com.supsystem.util.JdbcUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SupplierImp extends AbstractDAO implements ISupplier {
    JdbcUtil db = new JdbcUtil();
    List<Supplier> list = new ArrayList<>();
    ResultSet rs = null;

    @Override
    public boolean insert(Supplier supplier) throws SQLException {
        String sql = "insert into supplier values(?,?,?,?,?)";
        super.ps = super.conn.prepareStatement(sql);
        super.ps.setString(1, supplier.getsId());
        super.ps.setString(2, supplier.getsName());
        super.ps.setString(3, supplier.getsPeople());
        super.ps.setString(4, supplier.getsPhone());
        super.ps.setString(5, supplier.getsTime());
        return super.ps.executeUpdate() > 0;
    }

    @Override
    public int delete(String sId) throws SQLException {
        return 0;
    }

    @Override
    public int update(Supplier supplier, String sId) throws SQLException {
        return 0;
    }

    // 返回结果集的方法，提取出来便于在分页查询中复用
    public void results(ResultSet rs) throws SQLException {
        if (rs != null) {
            while (rs.next()) {
                String sId = rs.getString(1);
                String sName = rs.getString(2);
                String sPeople = rs.getString(3);
                String sPhone = rs.getString(4);
                String sTime = rs.getString(5);
                Supplier supplier = new Supplier(sId, sName, sPeople, sPhone, sTime);
                list.add(supplier);
            }
        } else {
            System.out.println("未查到");
        }
    }

    @Override
    public List<Supplier> findSplit(Integer currenPage, Integer lineSize) throws SQLException {
        String sql="select * from supplier limit ?,?";
        try {
            ps = db.createStatement(sql);
            ps.setInt(1, (currenPage - 1) * lineSize);
            ps.setInt(2, lineSize);
            rs = ps.executeQuery();
            results(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Supplier> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException {
        String sql="select * from supplier where "+column+" like ? limit ?,?";
        try {
            ps = db.createStatement(sql);
            ps.setString(1, "%"+keyword+"%");
            ps.setInt(2, (currenPage - 1) * lineSize);
            ps.setInt(3, lineSize);
            rs = ps.executeQuery();
            results(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean addBatch(List<Supplier> suppliers) throws SQLException {
        for (Supplier supplier : suppliers) {
            this.insert(supplier); // 数据存储
        }
        return true;
    }

    public Long getAllCount () throws SQLException {
        return super.countHandle("supplier");
    }

    public Long getAllCount (String column, String keyword) throws SQLException {
        return super.countHandle("supplier", column, keyword);
    }

    @Override
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception {
        Map<String, Object> result = new HashMap<>();
        if (super.checkEmpty(column, keyword)) { // 如果数据为空返回false
            result.put("allSupplier", this.findSplit(currentPage, lineSize, column, keyword));
            result.put("allRecorders", this.getAllCount(column, keyword));
        } else {
            result.put("allSupplier", this.findSplit(currentPage, lineSize));
            result.put("allRecorders", this.getAllCount());
        }
        return result;
    }
}
