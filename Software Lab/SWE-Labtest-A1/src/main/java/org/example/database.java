package org.example;

public class database implements logger{
    public String type;
    public database(String type)
    {
        this.type=type;
    }

    @Override
    public void msg() {
        System.out.println(type);
    }
}
