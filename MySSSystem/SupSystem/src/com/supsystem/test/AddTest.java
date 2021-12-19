package com.supsystem.test;

import com.supsystem.bean.Inventory;
import com.supsystem.bean.Supplier;
import com.supsystem.dao.InventoryImp;
import com.supsystem.dao.SupplierImp;

import java.util.ArrayList;
import java.util.List;

public class AddTest {
    public static void main(String[] args) throws Exception {
        InventoryImp inventoryImp = new InventoryImp();
        SupplierImp supplierImp = new SupplierImp();

        List<Inventory> list1 = new ArrayList<>();
        List<Supplier> list2 = new ArrayList<>();
        for (long i = 1L; i < 100000; i++) {
//            Inventory inventory = new Inventory("g0000"+i, "s0000"+i, "香蕉"+i , 9.98 + (double) i,  10);
            Supplier supplier = new Supplier("s0000"+i, "永辉食品有限公司"+i, "张永辉"+i , "1832950",  "2021-12-13 20:45:42");
//            list1.add(inventory);
            list2.add(supplier);
        }
//        inventoryImp.addBatch(list1);
        supplierImp.addBatch(list2);
    }
}
