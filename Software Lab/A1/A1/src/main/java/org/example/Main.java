package org.example;

public class Main {
    public static void main(String[] args) {
         Login login = Login.getInstance();

         Logger log = Login.getLogger("console","Debub");
         log.msg("Hello BD");
         Logger log1 = Login.getLogger("console","Debub");
         log1.msg("Hello BD");
    }
}