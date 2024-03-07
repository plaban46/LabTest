package org.example;

public class Main {

    public String getName(){
        return "Plaban Das";
    }

    public static void main(String[] args) {
        Singleton x = Singleton.getInstance();
        Singleton y = Singleton.getInstance();
        Singleton z = Singleton.getInstance();

        System.out.println(x.hashCode());
        System.out.println(y.hashCode());
        System.out.println(z.hashCode());
    }
}