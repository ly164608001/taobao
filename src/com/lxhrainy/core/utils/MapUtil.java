package com.lxhrainy.core.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;











import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;




import oracle.sql.TIMESTAMP;


public class MapUtil {
    
    /**
     * 将Map(大写)转为Object
     * @param map
     * @param class1
     * @return

     */
    public static <T> List<T> CMapToList(List<Map> maps,Class c)
    {
        return CMapToList(maps,c,null);
    }
    
    public static <T> List<T> CMapToList(List<Map> maps,Class c,String noinstring)
    {
        List<String> mylist = StringUtil.getStringListByString(noinstring);
        List<T> result = new ArrayList<T>();
        for(Map map : maps)
        {
            if(!StringUtils.isEmpty(noinstring))
            {
                List<Object> removeList = new ArrayList<Object>();
                for(Object o : map.keySet())
                {
                    String so = (String)o;
                    for(String s : mylist)
                    {
                        if(so.toLowerCase().equals(s.toLowerCase()))
                        {
                            removeList.add(o);
                        }
                    }
                }
                for(Object o : removeList)
                {
                    map.remove(o);
                }
            }
            result.add((T)CMapToObject(map, c));
        }
        return result;
    }
    
      public static Object CMapToObject(Map map,Class class1) {
          Field[] fields=class1.getDeclaredFields();
          Object t = null;
          if(fields.length>0)
          {
            try {
                t= class1.newInstance();
            } catch (InstantiationException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
          }
          try{
              boolean flag;
              for (Field field : fields) {
                  String name = field.getName();
                  if(!map.containsKey(name))
                      name = name.toUpperCase();
                  if(map.containsKey(name)&&map.get(name)!=null)
                  {
                      flag=false;
                      if(!field.isAccessible())
                      {
                          field.setAccessible(true);
                          flag=true;
                      }
                      if((field.getType() == java.util.Date.class || field.getType() == java.sql.Date.class) && map.get(name).getClass()!=field.getType())
                      {
                          //时间类型的转换
                          SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                          field.set(t,format.parse(map.get(name).toString()));
                      }else if(field.getType() == java.sql.Timestamp.class&&map.get(name).getClass()!=field.getType())
                      {
                          //Timestamp转换
                          try{
                              field.set(t,new Timestamp(Long.parseLong(JSONObject.fromObject(map.get(name)).getString("time"))));
                          }
                          catch(Exception ex){
                              field.set(t,Timestamp.valueOf(getDateBySqlTimestamp(map.get(name),""))); 
                          }
                          
                          
                          
                      }else if( (field.getType() == java.lang.Long.class || field.getType() == long.class)&&map.get(name).getClass()!=field.getType())
                      {
                          //Long
                          field.set(t,Long.parseLong(map.get(name).toString()));
                      }else if((field.getType() == int.class || field.getType() == java.lang.Integer.class)&& map.get(name).getClass()!=field.getType())
                      {
                          //int
                          field.set(t,Integer.parseInt(map.get(name).toString()));
                      }else if((field.getType() == double.class || field.getType() == java.lang.Double.class)&& map.get(name).getClass()!=field.getType()){
                          //double
                          field.set(t,Double.parseDouble(map.get(name).toString()));
                      }
                      else if((field.getType() == boolean.class || field.getType() == java.lang.Boolean.class)&& map.get(name).getClass()!=field.getType()){
                          //double
                          boolean myresult = false;
                          String v = map.get(name).toString();
                          if(v.equals("1")|| v.toLowerCase().equals("true"))
                              myresult = true;
                          field.set(t,myresult);
                      }
                      
                      else 
                      {
                          field.set(t,map.get(name));
                      }
                      if(flag)
                      {
                          field.setAccessible(false);
                      }
                  }
              }
          }
          catch(Exception ex)
          {
              System.out.println(ex.toString());
          }
          return t;
    }
    /** 
    * 根据oracle的Timestamp获取字符串日期时间 
    * @param t Timestamp时间 
    * @param formatStr 格式化字符串，如果是null默认yyyy-MM-dd hh:mm:ss 
    * @return 格式化后的字符串 
    */  
    public static String getDateBySqlTimestamp(Object obj, String formatStr) {  
            try {  
                TIMESTAMP t = (TIMESTAMP)obj;  
                if (formatStr == null || formatStr.equals("")) {  
                    formatStr = "yyyy-MM-dd hh:mm:ss";  
                }  
                Timestamp tt;  
                tt = t.timestampValue();  
                Date date = new Date(tt.getTime());  
                SimpleDateFormat sd = new SimpleDateFormat(formatStr);  
                return sd.format(date);  
            } catch (SQLException e) {  
                e.printStackTrace();  
            }  
            return "";  
      } 
      /**
       * 将Object转成map Json格式 
       * @param map
       * @param obj
       */
    public static void getObjectToMap(Map map,Object obj)
    {
        getObjectToMap(map, obj,false);
    }
    /**
    * 将Object转成map Json格式 
    * @param map
    * @param obj
    */  
    public static void getObjectToMap(Map map, Object obj ,boolean isjson)
    {
          Field[] fields = obj.getClass().getDeclaredFields();
          for(Field f : fields)
          {
              String name = f.getName();
              String getname = name;
              String strGet = "get" + getname.substring(0, 1).toUpperCase() + getname.substring(1, getname.length());  
              Method methodGet;
              try {
                    methodGet = obj.getClass().getDeclaredMethod(strGet);
                    Object object = methodGet.invoke(obj); 
                    map.put(f.getName(),object);
                    if(object!=null)
                    {
                    	if(isjson)
                        {
                            if(object.getClass().getSimpleName().toLowerCase().equals("timestamp"))
                            {
                                map.put(f.getName(), DateTime.getStringByTimestamp(((Timestamp)object)));
                            }
                            else {
                                map.put(f.getName(),object);
                            }
                        }
                    }
                    else {
                    	if(isjson)
                        {
                    		map.put(f.getName(),"");
                        }
					}
              } catch (NoSuchMethodException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
              } catch (SecurityException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
              } catch (IllegalAccessException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
              } catch (IllegalArgumentException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
              } catch (InvocationTargetException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
              }  
          }
    }
}
