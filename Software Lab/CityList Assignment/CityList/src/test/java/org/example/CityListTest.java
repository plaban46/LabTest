package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CityListTest {

    @Test
    void add() {
        CityList c = new CityList();
        City c5=new City("Los Angeles","California");
        assertThrows(IllegalArgumentException.class, ()->{
            c.delete(c5);;
        });
    }
}