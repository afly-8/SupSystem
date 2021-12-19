package com.supsystem.dao;

import com.supsystem.bean.Inventory;
import com.supsystem.dao.abs.AbstractDAO;
import com.supsystem.interfaces.IInventory;
import com.supsystem.util.JdbcUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InventoryImp extends AbstractDAO implements IInventory {
    JdbcUtil db = new JdbcUtil();
    List<Inventory> list = new ArrayList<>();
    ResultSet rs = null;

    @Override
    public boolean insert(Inventory inventory) throws SQLException {
        String sql = "insert into inventory values(?,?,?,?,?)";
        super.ps = super.conn.prepareStatement(sql);
        super.ps.setString(1, inventory.getiGid());
        super.ps.setString(2, inventory.getiSid());
        super.ps.setString(3, inventory.getIgName());
        super.ps.setDouble(4, inventory.getIgInPrice());
        super.ps.setDouble(5, inventory.getiSum());
        return super.ps.executeUpdate() > 0;
    }

    @Override
    public boolean addBatch(List<Inventory> inventories ) throws SQLException {
        for (Inventory inventory : inventories) {
            this.insert(inventory); // 数据存储
        }
        return true;
    }

    @Override
    public int delete(String igId) throws SQLException {
//        return super.delHandle("inventory", "gid", igId);
        return 0;
    }

    @Override
    public int update(Inventory inventory, String igId) throws SQLException {
        return 0;
    }

    // 返回结果集的方法，提取出来便于在分页查询中复用
    public void results(ResultSet rs) throws SQLException {
        if (rs != null) {
            while (rs.next()) {
                String igId = rs.getString(1);
                String isId = rs.getString(2);
                String igName = rs.getString(3);
                double igInPrice = rs.getDouble(4);
                int iSum = rs.getInt(5);
                Inventory inventory = new Inventory(igId, isId, igName, igInPrice, iSum);
                list.add(inventory);
            }
        } else {
            System.out.println("未查到");
        }
    }

    @Override
    public List<Inventory> findSplit(Integer currenPage, Integer lineSize) throws SQLException {
        String sql="select * from inventory limit ?,?";
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
    public List<Inventory> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException {
        String sql="select * from inventory where "+column+" like ? limit ?,?";
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

    public Long getAllCount () throws SQLException {
        return super.countHandle("inventory");
    }

    public Long getAllCount (String column, String keyword) throws SQLException {
        return super.countHandle("inventory", column, keyword);
    }

    @Override
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception {
        Map<String, Object> result = new HashMap<>();
        if (super.checkEmpty(column, keyword)) { // 如果数据为空返回false
            result.put("allInventory", this.findSplit(currentPage, lineSize, column, keyword));
            result.put("allRecorders", this.getAllCount(column, keyword));
        } else {
            result.put("allInventory", this.findSplit(currentPage, lineSize));
            result.put("allRecorders", this.getAllCount());
        }
        return result;
    }
}
