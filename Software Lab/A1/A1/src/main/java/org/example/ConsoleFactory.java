package org.example;

import java.util.HashMap;
import java.util.Map;

public class ConsoleFactory {
    public static final Map<String,Console> console = new HashMap<>();
    public static final String type = "console";

    public static Logger getConsole(){
        Console c = console.get(type);
        if(c == null){
            c = new Console(type);
            console.put(type,c);

        }else {
            System.out.println("Exist : ");
        }
        return c;
    }
}
