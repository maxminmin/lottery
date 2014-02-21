import java.util.HashMap;

/**
 * <br>
 * <b>功能：</b>详细的功能描述<br>
 * <b>作者：</b>maxmin<br>
 * <b>日期：</b> 2013-3-21 <br>
 * <b>版权所有：<b>版权所有(C) 2012，英科风睿<br>
 */
public class RegSingleton {
    static private HashMap<String, Object> map=new HashMap<String, Object>();
    static {
        RegSingleton x=new RegSingleton();
        map.put(x.getClass().getName(), x);
        System.out.println(x.getClass().getName());
    }
    /**
     * <br>
     * <b>功能：</b>利用静态工厂方法，返回此类唯一的实例<br>
     * <b>作者：</b>maxmin<br>
     * <b>日期：</b> 2013-3-21 <br>
     * @param name
     * @return
     * @throws Exception
     */
    static public RegSingleton getInstance(String name) throws Exception{
        if(name==null){
            name="RegSingleton";
        }
        if(map.get(name)==null){
            map.put(name, Class.forName(name).newInstance());
        }
        return (RegSingleton) map.get(name);
    }
    public void sayHello(){
        System.out.println("hi hi hi");
    }
    public static void main(String[] args) throws Exception {
        RegSingleton rs=RegSingleton.getInstance("RegSingleton");
        rs.sayHello();
    }
}
