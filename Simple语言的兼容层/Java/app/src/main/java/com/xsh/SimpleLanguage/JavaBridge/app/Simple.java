package com.xsh.SimpleLanguage.JavaBridge.app;
import java.lang.reflect.Field;
public class Simple
{
    // 静态反射
    public static void exe(Object ClsObj,String value) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException
    {
        Field field = ClsObj.getClass().getField("dymatic_old");
        field.set(ClsObj,value);
        System.out.println(field.get(ClsObj));
    }
    // 参数2是simple语言的代码
    public static void exe(Class<?> cls,String simple_code) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException
    {      
        String[] sp = simple_code.split("->");
        //java变量值
        String value = sp[0];
        //java变量名
        String var = sp[1];
        //变量名
        Field field =  cls.getField(var);
        field.set(cls,value);
        System.out.println("反射后 "+field.get(cls));
        // todo 制作函数调用和字面量的判断,词法分析,函数调用的词法分析暂时只支持 void fx() 这种形式
    }
    //在运行时反射 创建新的变量并绑定到反射的类 可能无法实现
    public static void test(Object ClsObj)
    {
        String a  = "动态绑定";
        Class<?> cls = ClsObj.getClass();
     //   cls.getField("j").set
    }
}
