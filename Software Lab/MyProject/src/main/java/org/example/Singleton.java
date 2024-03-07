package org.example;

public class Singleton {
    public static Singleton ins;
    private Singleton(){}

    public static Singleton getInstance(){
        if(ins == null){
            ins = new Singleton();
        }
        return ins;
    }
}
