package com.simple.bookshop.bean;

public class Order {
    private Integer oid;
    private String oisbn;
    private String oaddr;
    private String odate;
    private Integer ostate;
    private String omark;
    private String uname;
    private String uphone;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOisbn() {
        return oisbn;
    }

    public void setOisbn(String oisbn) {
        this.oisbn = oisbn;
    }

    public String getOaddr() {
        return oaddr;
    }

    public void setOaddr(String oaddr) {
        this.oaddr = oaddr;
    }

    public String getOdate() {
        return odate;
    }

    public void setOdate(String odate) {
        this.odate = odate;
    }

    public Integer getOstate() {
        return ostate;
    }

    public void setOstate(Integer ostate) {
        this.ostate = ostate;
    }

    public String getOmark() {
        return omark;
    }

    public void setOmark(String omark) {
        this.omark = omark;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

}
