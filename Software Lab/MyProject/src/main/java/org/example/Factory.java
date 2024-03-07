package org.example;

import java.awt.*;

interface shape{
    void display();
}

class circle implements shape{
    @Override
    public void display() {
        System.out.println("This is Circle");
    }
}

class rectangle implements shape{
    @Override
    public void display() {
        System.out.println("This is rectangle");
    }
}


class Factory {
    public shape getShape(String shape){
        if(shape == null){
            return  null;
        }else if(shape.equalsIgnoreCase("Circle")){
            return new circle();
        }else if(shape.equalsIgnoreCase("Rectangle")){
            return new rectangle();
        }
        return null;
    }
}


class Run{
    public static void main(String[] args) {
        Factory factory = new Factory();
        shape sp1 = factory.getShape("circle");
        sp1.display();

        shape sp2 = factory.getShape("rectangle");
        sp2.display();
    }
}