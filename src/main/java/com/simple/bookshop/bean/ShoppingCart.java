package com.simple.bookshop.bean;

public class ShoppingCart {
    private Integer cid;
    private String bimage;
    private Integer cnumber;
    private String bname;
    private double bprice;
    private Integer bid;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getBimage() {
        return bimage;
    }

    public void setBimage(String bimage) {
        this.bimage = bimage;
    }

    public Integer getCnumber() {
        return cnumber;
    }

    public void setCnumber(Integer cnumber) {
        this.cnumber = cnumber;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public double getBprice() {
        return bprice;
    }

    public void setBprice(double bprice) {
        int b = (int) (bprice * 10);
        bprice = b / 10.0;
        this.bprice = bprice;
    }

    @Override
    public String toString() {

        return cid + "|" + bimage + "|" + cnumber + "|" + bname + "|" + bprice;
    }
}
