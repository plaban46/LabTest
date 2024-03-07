package org.example;

public class Login implements Logger{
    public static Login ins = null;
    private Login(){}

    public static Login getInstance(){
        if(ins == null){
            ins = new Login();
        }
        return ins;
    }

    @Override
    public void msg(String msg) {

    }

    public static Logger getLogger(String type, String label){
        if(type.equalsIgnoreCase("console")){
            return ConsoleFactory.getConsole();
        }
        return null;
    }
}
