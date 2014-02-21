/**
 * 
 * <br>
 * <b>功能：</b>详细的功能描述<br>
 * <b>作者：</b>maxmin<br>
 * <b>日期：</b> 2013-3-21 <br>
 * <b>版权所有：<b>版权所有(C) 2012，英科风睿<br>
 */
public class Singleton{
    /**
     * 饿汉模式，当类加载时，将自己初始化
     */
    private Singleton(){}
    private static Singleton singleton=new Singleton();
    
    public static Singleton getSingleton(){
        return singleton;
    }
    
}