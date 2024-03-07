package org.example;


interface railroad{
    void driving();
}

class train implements railroad{

    @Override
    public void driving() {
        System.out.println("Train is running");
    }
}

class car {
    public void driving_car(){
        System.out.println("Car is driving");
    }
}

public class Adapter implements railroad{
    car car;
    public Adapter(car car){
        this.car = car;
    }
    @Override
    public void driving() {
        car.driving_car();
    }
}

class Runn{
    public static void main(String[] args) {
        railroad adapter = new Adapter(new car());
        adapter.driving();
    }
}
