package com.supsystem.interfaces;

import com.supsystem.bean.Goods;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IGoods {
    public boolean insert(Goods goods) throws SQLException;
    public int delete(String gId) throws SQLException;
    public int update(Goods goods, String gId) throws SQLException;
    public List<Goods> findSplit(Integer currenPage, Integer lineSize) throws SQLException;
    public List<Goods> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException;
    public boolean addBatch(List<Goods> goods) throws SQLException;
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception;
}
