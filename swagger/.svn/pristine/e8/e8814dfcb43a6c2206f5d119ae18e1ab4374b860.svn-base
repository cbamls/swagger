package org.leafframework.mvc.service.swaggerapi;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by cbam on 2016/6/20.
 */
public class Test {
    public static final char UNDERLINE='_';
    public static String underlineToCamel(String param){
        if (param==null||"".equals(param.trim())){
            return "";
        }
        int len=param.length();
        StringBuilder sb=new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            char c=param.charAt(i);
            if (c==UNDERLINE){
                if (++i<len){
                    sb.append(Character.toUpperCase(param.charAt(i)));
                }
            }else{
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static synchronized String toCamel(String name, String split) {
        StringBuilder result = new StringBuilder();
        if(name != null && !name.isEmpty()) {
            if(!name.contains(split)) {
                result.append(name.substring(0, 1).toUpperCase());
                result.append(name.substring(1).toLowerCase());
                return result.toString();
            } else {
                String[] camels = name.split(split);
                String[] arr$ = camels;
                int len$ = camels.length;

                for(int i$ = 0; i$ < len$; ++i$) {
                    String camel = arr$[i$];
                    if(!camel.isEmpty()) {
                        result.append(camel.substring(0, 1).toUpperCase());
                        result.append(camel.substring(1).toLowerCase());
                    }
                }

                return result.toString();
            }
        } else {
            return "";
        }
    }

    public static void main(String[] args) throws IOException {
        String str = "addd_sadsf";
        System.out.println(toCamel(str, "_"));
        System.out.println(underlineToCamel(str));
    }
}
