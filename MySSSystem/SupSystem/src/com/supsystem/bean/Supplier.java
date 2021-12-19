package com.supsystem.bean;

public class Supplier {
    private String sId;
    private String sName;
    private String sPeople;
    private String sPhone;
    private String sTime;

    public Supplier() {
    }

    public Supplier(String sId, String sName, String sPeople, String sPhone, String sTime) {
        this.sId = sId;
        this.sName = sName;
        this.sPeople = sPeople;
        this.sPhone = sPhone;
        this.sTime = sTime;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getsPeople() {
        return sPeople;
    }

    public void setsPeople(String sPeople) {
        this.sPeople = sPeople;
    }

    public String getsPhone() {
        return sPhone;
    }

    public void setsPhone(String sPhone) {
        this.sPhone = sPhone;
    }

    public String getsTime() {
        return sTime;
    }

    public void setsTime(String sTime) {
        this.sTime = sTime;
    }
}
