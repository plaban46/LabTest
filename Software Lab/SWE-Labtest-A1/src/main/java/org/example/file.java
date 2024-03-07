package org.example;

public class file implements logger{
    public String type;
    public file(String type)
    {
        this.type=type;
    }

    @Override
    public void msg() {
        System.out.println(type);
    }
}
