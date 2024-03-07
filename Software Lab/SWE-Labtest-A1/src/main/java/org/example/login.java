package org.example;

public class login {
    public static login ins=null;
    private login(){}
    public static login getInstance()
    {
        if(ins == null)
        {
            ins = new login();
        }
        return ins;
    }

    public logger getlogger(String loggertype , String level)
    {
        if(loggertype==null)
        {
            System.out.println("Null returned");
            return null;
        }
        else if(loggertype.equalsIgnoreCase("console"))
        {
            return (console) consolefactory.getconsolelogger(level);
        }
        else if(loggertype.equalsIgnoreCase("file"))
        {
            return (file) filefactory.getfilelogger(level);
        }
        else if(loggertype.equalsIgnoreCase("database"))
        {
            return (database) databasefactory.getdatabaselogger(level);
        }
        return null;
    }
}
