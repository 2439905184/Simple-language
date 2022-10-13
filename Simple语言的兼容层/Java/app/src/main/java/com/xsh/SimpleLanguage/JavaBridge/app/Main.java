package com.xsh.SimpleLanguage.JavaBridge.app;
import java.util.*;
import com.xsh.SimpleLanguage.JavaBridge.app.Simple;

public class Main
{
	//public static String a = "";
    public String dymatic_old = "动态变量:初始值";
    public static String static_old = "静态变量:初始值";
    public static Main self;
    //在运行时动态修改变量的值 动态反射
    private static void dymatic_set() throws IllegalArgumentException, NoSuchFieldException, IllegalAccessException
    {
        System.out.println("动态反射前"+self.dymatic_old);
        //动态反射
        Simple.exe(self,"动态反射1");
        Simple.exe(self,"动态反射2");
        Simple.exe(self,"动态反射3");
        Simple.exe(self,"动态反射4");
        System.out.println("动态反射最终值 "+self.dymatic_old);
    }
    //在运行时动态修改变量的值 静态反射
    private static void static_set() throws IllegalArgumentException, NoSuchFieldException, IllegalAccessException
    {
        System.out.println("静态反射前 "+static_old);
        Simple.exe(Main.class,"静态反射1->static_old");
        Simple.exe(Main.class,"静态反射2->static_old");
     /*   Simple.exe(Main.class,"静态反射3");
        Simple.exe(Main.class,"静态反射4");*/
        System.out.println("静态反射最终值 "+static_old);
    }
	public static void main(String[] args) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException
    { 
        //引用
        self=new Main(); 
        //dymatic_set();
        static_set();
    }
    
}
