package org.example;

import java.util.HashMap;
import java.util.Map;

public class databasefactory {
    public final static Map<String , database> databasetype = new HashMap<>();
    public String level;
    public databasefactory(String level)
    {
        this.level=level;
    }

    public static logger getdatabaselogger(String type)
    {
        database c = (database) databasetype.get(type);
        if(c==null)
        {
            c = new database(type);
            databasetype.put(type, c);

        }
        else
        {
            System.out.println("returning existing one database");
        }
        return c;
    }
}
