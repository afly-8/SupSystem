package com.supsystem.dao;

import com.supsystem.bean.Goods;
import com.supsystem.dao.abs.AbstractDAO;
import com.supsystem.interfaces.IGoods;
import com.supsystem.util.JdbcUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GoodsImp extends AbstractDAO implements IGoods {
    // JDBC工具
    JdbcUtil db = new JdbcUtil();
    List<Goods> list = new ArrayList<>();
    ResultSet rs = null;

    // 添加操作
    @Override
    public boolean insert(Goods goods) throws SQLException {
        String sql = "insert into goods values(?,?,?,?,?,?)";
        super.ps = super.conn.prepareStatement(sql);
        super.ps.setString(1, goods.getGid());
        super.ps.setString(2, goods.getgName());
        super.ps.setString(3, goods.getgType());
        super.ps.setDouble(4, goods.getgInPrice());
        super.ps.setDouble(5, goods.getgOutPrice());
        super.ps.setInt(6, goods.getStatus());
        return super.ps.executeUpdate() > 0;
    }

    /**
     * 提取出返回结果集的方法，用于复用
     * @param rs 结果集
     * @throws SQLException SQl异常
     */
    public void results(ResultSet rs) throws SQLException {
        if (rs != null) {
            while (rs.next()) {
                String gid = rs.getString(1);
                String gname = rs.getString(2);
                String gtyoe = rs.getString(3);
                double ginprice = rs.getDouble(4);
                double goutprice = rs.getDouble(5);
                int status = rs.getInt(6);
                Goods goods = new Goods(gid, gname,gtyoe, ginprice, goutprice, status);
                list.add(goods);
            }
        } else {
            System.out.println("未查到");
        }
    }

    /**
     * 无搜索条件分页
     * @param currenPage 页数
     * @param lineSize 一页显示数据量
     * @return 返回结果集
     * @throws SQLException SQl异常
     */
    @Override
    public List<Goods> findSplit(Integer currenPage, Integer lineSize) throws SQLException {
        String sql="select * from goods limit ?,?";
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

    /**
     * 有搜索条件分页
     * @param currenPage 页数
     * @param lineSize 一页显示数据量
     * @param column 搜索类型条件
     * @param keyword 搜索关键字条件
     * @return 返回结果集
     * @throws SQLException SQL异常
     */
    @Override
    public List<Goods> findSplit(Integer currenPage, Integer lineSize, String column, String keyword) throws SQLException {
        String sql="select * from goods where "+column+" like ? limit ?,?";
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

    /**
     * 批量添加操作
     * @param goods 上屏bean对象
     * @return 返回处理结果
     * @throws SQLException SQL异常
     */
    @Override
    public boolean addBatch(List<Goods> goods) throws SQLException {
        for (Goods good : goods) {
            this.insert(good); // 数据存储
        }
        return true;
    }

    /**
     * 根据不同搜索条件
     * @param currentPage 页数
     * @param lineSize 一夜显示数
     * @param column 搜索类型条件
     * @param keyword 搜索关键字条件
     * @return 结果集将页数与查询结果对象（List）一起放入Map中
     * @throws Exception 异常父类
     */
    @Override
    public Map<String, Object> split(int currentPage, int lineSize, String column, String keyword) throws Exception {
        Map<String, Object> result = new HashMap<>();
        if (super.checkEmpty(column, keyword)) { // 如果数据为空返回false
            result.put("allGoods", this.findSplit(currentPage, lineSize, column, keyword));
            result.put("allRecorders", this.getAllCount(column, keyword));
        } else {
            result.put("allGoods", this.findSplit(currentPage, lineSize));
            result.put("allRecorders", this.getAllCount());
        }
        return result;
    }

    // 不按条件获取商品数据所有行数
    public Long getAllCount () throws SQLException {
        return super.countHandle("goods");
    }

    // 按条件获取商品所有行数
    public Long getAllCount (String column, String keyword) throws SQLException {
        return super.countHandle("goods", column, keyword);
    }

    // 删除商品
    @Override
    public int delete(String gId) throws SQLException {
        return super.delHandle("goods", "gid", gId);
    }

    // 修改商品
    @Override
    public int update(Goods goods, String gId) throws SQLException {
        String sql = "UPDATE goods SET gid=?, gname=?, gtype=?, ginprice=?, goutprice=?, gstatus=? WHERE gid=?";
        ps = db.createStatement(sql);
        ps.setString(1, goods.getGid());
        ps.setString(2, goods.getgName());
        ps.setString(3, goods.getgType());
        ps.setDouble(4, goods.getgInPrice());
        ps.setDouble(5, goods.getgOutPrice());
        ps.setDouble(6, goods.getStatus());
        ps.setString(7, gId);
        return ps.executeUpdate();
    }
}
