package com.supsystem.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class TestJson {


    public static void main(String[] args) {
        String j = "data={'a':12, 'b':10}";
        JSONObject json = JSON.parseObject(j);
        System.out.println(json);
    }
}
