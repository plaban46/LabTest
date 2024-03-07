package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class loginTest {

    @Test
    void getInstance() {
        login a = login.getInstance();
        login b = login.getInstance();

        assertEquals(a.hashCode(),b.hashCode());
    }
}