package com.supsystem.bean;

public class Goods {
    private String gid;
    private String gName;
    private String gType;
    private double gInPrice;
    private double gOutPrice;
    private int status;

    public Goods() {
    }
    public Goods(String gid, String gName, String gType, double gInPrice, double gOutPrice, int status) {
        this.gid = gid;
        this.gName = gName;
        this.gType = gType;
        this.gInPrice = gInPrice;
        this.gOutPrice = gOutPrice;
        this.status = status;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public String getgType() {
        return gType;
    }

    public void setgType(String gType) {
        this.gType = gType;
    }

    public double getgInPrice() {
        return gInPrice;
    }

    public void setgInPrice(double gInPrice) {
        this.gInPrice = gInPrice;
    }

    public double getgOutPrice() {
        return gOutPrice;
    }

    public void setgOutPrice(double gOutPrice) {
        this.gOutPrice = gOutPrice;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
