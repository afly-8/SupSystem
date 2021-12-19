package com.supsystem.bean;

public class Inventory {
    private String iGid;
    private String iSid;
    private String igName;
    private double igInPrice;
    private double iSum;

    public Inventory() {
    }

    public Inventory(String iGid, String iSid, String igName, double igInPrice, double iSum) {
        this.iGid = iGid;
        this.iSid = iSid;
        this.igName = igName;
        this.igInPrice = igInPrice;
        this.iSum = iSum;
    }

    public String getiGid() {
        return iGid;
    }

    public void setiGid(String iGid) {
        this.iGid = iGid;
    }

    public String getiSid() {
        return iSid;
    }

    public void setiSid(String iSid) {
        this.iSid = iSid;
    }

    public String getIgName() {
        return igName;
    }

    public void setIgName(String igName) {
        this.igName = igName;
    }

    public double getIgInPrice() {
        return igInPrice;
    }

    public void setIgInPrice(double igInPrice) {
        this.igInPrice = igInPrice;
    }

    public double getiSum() {
        return iSum;
    }

    public void setiSum(double iSum) {
        this.iSum = iSum;
    }
}
