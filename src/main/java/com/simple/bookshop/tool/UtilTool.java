package com.simple.bookshop.tool;

import java.util.Date;

public class UtilTool {
    public static String getOnumber() {

        long L = new Date().getTime();
        String l = String.valueOf(L).substring(1, 9);

        double d = Math.random();
        String s = String.valueOf(d).substring(4, 9);
        return (l + s);
    }
}
