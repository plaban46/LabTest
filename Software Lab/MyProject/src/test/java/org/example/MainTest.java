package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MainTest {
    /**
     * Hello bangladesh
     */
    @Test
    void getName() {
        Main m = new Main();
        assertEquals("Plaban Das",m.getName());
    }
}