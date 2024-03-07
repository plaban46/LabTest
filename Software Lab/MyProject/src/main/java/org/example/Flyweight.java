package org.example;

import java.util.HashMap;
import java.util.Map;

interface Color_Fly{
    void display();
}
class Blue_fly implements Color_Fly{

    @Override
    public void display() {
        System.out.println("Blue");
    }
}

class Red_fly implements Color_Fly{

    @Override
    public void display() {
        System.out.println("Red");
    }
}

public class Flyweight {
    public static final Map<String,Color_Fly> shape = new HashMap<>();

    public static Color_Fly getColor(String color){
        Color_Fly colorFly = shape.get(color);
        if(colorFly == null){
            colorFly = new Blue_fly();
            shape.put(color,colorFly);
            System.out.println("Created");
        }
        return colorFly;
    }
}

class  Running{
    public static void main(String[] args) {
        (Flyweight.getColor("Red")).display();
        (Flyweight.getColor("Red")).display();
    }
}
