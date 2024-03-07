package org.example;

import java.util.HashMap;
import java.util.Map;

public class filefactory {


    public final static Map<String , file> filetype = new HashMap<>();
    public String level;
    public filefactory(String level)
    {
        this.level=level;
    }


    public static logger getfilelogger(String type)
    {
        file c = (file)filetype.get(type);
        if(c==null)
        {
            c = new file(type);
            filetype.put(type, c);

        }
        else
        {
            System.out.println("returning existing one file");
        }
        return c;
    }

}
