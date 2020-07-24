package com.simple.bookshop.bean;

public class OrderDetail {
    private Integer odmunber;
    private String oisbn;
    private Integer bid;

    public Integer getOdmunber() {
        return odmunber;
    }

    public void setOdmunber(Integer odmunber) {
        this.odmunber = odmunber;
    }

    public String getOisbn() {
        return oisbn;
    }

    public void setOisbn(String oisbn) {
        this.oisbn = oisbn;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }
}
