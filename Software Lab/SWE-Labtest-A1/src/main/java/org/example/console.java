package org.example;

public class console implements logger{
    public String type;
    public console(String type)
    {
        this.type=type;
    }


    @Override
    public void msg() {
        System.out.println(type);
    }
}
