package org.example;

public class Main {
    public static void main(String[] args) {

         login l = login.getInstance();
         logger a =  l.getlogger("console", "info");
         logger b = l.getlogger("console", "debug");
         a.msg();
         //  logger b =  l.getlogger("file", "info");
         b.msg();
         logger c = l.getlogger("database", "debug");
         c.msg();



    }
}