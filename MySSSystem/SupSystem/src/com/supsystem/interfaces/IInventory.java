package com.supsystem.interfaces;

import com.supsystem.bean.Inventory;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IInventory {

    public boolean insert(Inventory inventory) throws SQLException;
    public int delete(String igId) throws SQLException;
    public int update(Inventory inventory, String igId) throws SQLException;
    public List<Inventory> findSplit(Integer currenPage, Integer lineSize) throws SQLException;
    public List<Inventory> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException;
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception;
    public boolean addBatch(List<Inventory> inventories) throws SQLException;
}
