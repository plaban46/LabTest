package org.example;

interface Color{
    String applycolor();
}

class RedColor implements Color{

    @Override
    public String applycolor() {
        return "Red";
    }
}

class BlueColor implements Color{

    @Override
    public String applycolor() {
        return "Blue";
    }
}

abstract class Shape{
    Color color;
    public Shape(Color color){
        this.color = color;
    }
    abstract String getShape();
}

class Circle extends Shape{

    public Circle(Color color) {
        super(color);
    }

    @Override
    String getShape() {
        return "Shape is Circle And Color : "+color.applycolor();
    }
}

class Rectangle extends Shape{
    public Rectangle(Color color) {
        super(color);
    }

    @Override
    String getShape() {
        return "Shape is rectangle and Color is : "+color.applycolor();
    }
}

class Runnn{
    public static void main(String[] args) {

        Circle sp = new Circle(new BlueColor());
        System.out.println(sp.getShape());
        Rectangle sp1 = new Rectangle(new RedColor());
        System.out.println(sp1.getShape());

        System.out.println("HI");
    }
}

