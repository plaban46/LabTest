package org.example;

import java.util.HashMap;
import java.util.Map;

public class consolefactory {
    public String level;
    public consolefactory(String level)
    {
        this.level=level;
    }
    public final static Map<String , console> consoletype = new HashMap<>();




    public static logger getconsolelogger(String type)
    {
        console c = (console)consoletype.get(type);
        if(c==null)
        {
            c = new console(type);
            consoletype.put(type, c);

        }
        else
        {
            System.out.println("returning existing one console");
        }
        return c;
    }



}
