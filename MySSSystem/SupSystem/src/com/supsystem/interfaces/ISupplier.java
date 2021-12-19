package com.supsystem.interfaces;

import com.supsystem.bean.Supplier;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ISupplier {
    public boolean insert(Supplier supplier) throws SQLException;
    public int delete(String sId) throws SQLException;
    public int update(Supplier supplier, String sId) throws SQLException;
    public List<Supplier> findSplit(Integer currenPage, Integer lineSize) throws SQLException;
    public List<Supplier> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException;
    public boolean addBatch(List<Supplier> suppliers) throws SQLException;
    // 分页
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception;
}
