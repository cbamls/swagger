package org.leafframework.mvc.service.swaggerapi;

import com.alibaba.fastjson.JSON;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 * Created by cbam on 2016/6/20.
 * 返回接口文档的一些基本信息
 */
public class PreInfo {

    private HashMap hashMapInfo;   //sava the doc basic info  and will be returned

   public HashMap  getApiInfo(HashMap mapDocMain, HashMap mapDocInfo, List listTags, HashMap mapContactInfo) {
       hashMapInfo = new HashMap();
       hashMapInfo.put("swagger", "2.0");// swagger version

       HashMap mapInfo = new HashMap();
       mapInfo.put("title", mapDocInfo.get("title")); // model name
       mapInfo.put("description", mapDocInfo.get("description"));  //model info
       mapInfo.put("version", mapDocMain.get("version"));   //doc version
       HashMap hashMapInfoContact = new HashMap();
       hashMapInfoContact.put("name", mapContactInfo.get("name")); //API author name
       hashMapInfoContact.put("url", mapContactInfo.get("url")); // API author-self homepage
       hashMapInfoContact.put("email", mapContactInfo.get("email")); //API contact email
       mapInfo.put("contact", hashMapInfoContact);
       /**
        * handle schemes;
        * The transfer protocol of the API. Value must be from the set {"http", "https", "ws", "wss"}
        */
       List list_scheme = new ArrayList();
       String schemes = (String) mapDocMain.get("schemes");
       String [] schemeSet = schemes.split(",");
       for(String scheme : schemeSet) {
           list_scheme.add(scheme);
       }

       /**
        * handle tags.
        * A list of tags used by the specification with additional metadata.
        * The order of the tags can be used to reflect on their order by the parsing tools.
        * Not all tags that are used by the Operation Object must be declared.
        * The tags that are not declared may be organized randomly or based on the tools' logic.
        * Each tag name in the list MUST be unique.
        */

       List list_tags = new ArrayList();
       Iterator iter = listTags.iterator();
       while(iter.hasNext()) {
           HashMap mapTag = objectToMap(iter.next());
           HashMap mapTags = new HashMap();
           mapTags.put("name", mapTag.get("name"));
           mapTags.put("description", mapTag.get("description"));
           list_tags.add(mapTags);
       }

       hashMapInfo.put("tags", list_tags);

       hashMapInfo.put("schemes", list_scheme);          //application layer protocol http | https | ftp | telnet
       hashMapInfo.put("host", mapDocMain.get("host")); // host domain  example：www.hearglobal.com
       hashMapInfo.put("basePath", mapDocMain.get("basePath"));  //basepath of request，example：
       System.out.println(hashMapInfo.get("host"));
       hashMapInfo.put("info", mapInfo);
       return hashMapInfo;
   }

    public HashMap objectToMap(Object object) {
        String jsonStr = JSON.toJSONString(object);
        HashMap mapObject = JSON.parseObject(jsonStr, HashMap.class);


        return mapObject;
    }
}
