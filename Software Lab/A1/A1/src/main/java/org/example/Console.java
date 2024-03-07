package org.example;

public class Console implements Logger{
    String type ;
    public Console(String type){
        this.type = type;
    }

    @Override
    public void msg(String msg) {
        System.out.println(msg);
    }
}
