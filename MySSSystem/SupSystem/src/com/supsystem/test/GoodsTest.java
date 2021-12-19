package com.supsystem.test;

import com.supsystem.bean.Goods;
import com.supsystem.dao.GoodsImp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GoodsTest {

    public static void main(String[] args) throws Exception {
        GoodsImp goodsServiceImp = new GoodsImp();
        Map<String, Object> split = goodsServiceImp.split(3, 10, "gtype", null);

// 批量添加测试
        List<Goods> list = new ArrayList<>();
        for (int i = 10; i < 100; i++) {
            Goods goods = new Goods("s00000"+i, "香蕉"+i, "食物" , 9.98, 19.9, 1);
            list.add(goods);
        }
        goodsServiceImp.addBatch(list);
//        Long allRecorders = (Long) split.get("allRecorders");
//        List<Goods> gList = (ArrayList<Goods>) split.get("allGoods");
//        for (Goods good: gList
//             ) {
//            System.out.println(good.toString());
//        }
//        System.out.println(allRecorders);
    }
}
