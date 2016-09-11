package org.leafframework.mvc.service.swaggerapi;

import com.alibaba.fastjson.JSON;
import org.leafframework.data.dao.orm.TDocOtherInfo;

import java.util.*;

/**
 * CopyRright (c)2014-2016 Haerbin Hearglobal Co.,Ltd
 * Project: rest
 * Comments:
 * Author:cbam
 * Create Date:2016/6/27
 * Modified By:
 * Modified Date:
 * Modified Reason:
 */
public class ParseObject {

    public HashMap getCombine(HashMap mapMaster, List info_list, String ref_desc) {
        HashMap map_properties = (HashMap) mapMaster.get("properties");
        Iterator iterator = map_properties.entrySet().iterator();
        while(iterator.hasNext()) {
            Map.Entry entry = (Map.Entry) iterator.next();
            for(int i = 0; i < info_list.size(); i++) {
                TDocOtherInfo tDocOtherInfo = (TDocOtherInfo) info_list.get(i);
                if(tDocOtherInfo.getName().equals(entry.getKey())) {
                    HashMap map_slave = getMapTableObject(tDocOtherInfo.getJson());
                    HashMap map_slave_remove = (HashMap) map_slave.get("properties");
                    map_slave_remove.remove(entry.getKey());
                    map_slave.put("description", ref_desc);
                    Boolean isArr = tDocOtherInfo.getIsArr();
                    if(isArr) {
                        HashMap map_list = new HashMap();
                        map_list.put("type", "array");
                        map_list.put("format", "");
                        map_list.put("description", tDocOtherInfo.getDescription());
                        map_list.put("items", map_slave);
                        map_properties.put(entry.getKey(), map_list);
                    } else {
                        map_properties.put(entry.getKey(), map_slave);
                    }
                    break;
                }
            }

        }
        return mapMaster;
    }
    // 表字段的描述 解析用户自定义
    public HashMap getMapTableObject(String jsonStr) {
        HashMap mapResult = new HashMap();
        HashMap mapJson = JSON.parseObject(jsonStr, HashMap.class);
        Iterator iterator = mapJson.entrySet().iterator();
        while(iterator.hasNext()) {
            Map.Entry entry = (Map.Entry) iterator.next();
            HashMap mapTmp = new HashMap();
            String str = (String) entry.getValue();
            if (((String) entry.getValue()).split(",").length == 1) {
                mapTmp.put("type", "undefined");
                mapTmp.put("description", "undefined");
            } else {
                mapTmp.put("type", ( (String) entry.getValue() ).split(",")[0]);
                mapTmp.put("description", ( (String) entry.getValue() ).split(",")[1]);
            }

            if(str.split(",")[0].equals("string")) {
                mapTmp.put("format", "");
            } else if(str.split(",")[0].equals("integer")) {
                mapTmp.put("format", "int32");
            } else if(str.split(",")[0].equals("number")) {
                mapTmp.put("format", "double");
            } else if(str.split(",")[0].equals("long")) {
                mapTmp.put("format", "int64");
            } else if(str.split(",")[0].equals("date")) {
                mapTmp.put("format", "date");
            } else {
                mapTmp.put("format", "");
            }
            mapResult.put(entry.getKey(), mapTmp);
        }
        HashMap mapSchema = new HashMap();
        mapSchema.put("type", "object");

        mapSchema.put("properties", mapResult);
        return mapSchema;
    }
    //用于 get 综合查询 in  为 query | path | file | formdata
    public List getReqListFromStr(String jsonStr, String location) {

        List listMap = new ArrayList();
        HashMap mapJson = JSON.parseObject(jsonStr, HashMap.class);
        Iterator iterator = mapJson.entrySet().iterator();
        while(iterator.hasNext()) {

            Map.Entry entry = (Map.Entry) iterator.next();
            HashMap mapTmp = new HashMap();
            String str = (String) entry.getValue();
            mapTmp.put("type", str.split(",")[0]);
            mapTmp.put("description", str.split(",")[1]);
            mapTmp.put("in", location);
            mapTmp.put("name", entry.getKey());
//            if(entry.getKey().equals("id")) {
//                mapTmp.put("required", true);
//            } else {
//                mapTmp.put("required", false);
//            }
            if(str.split(",")[0].equals("string")) {
                mapTmp.put("format", "");
            } else if(str.split(",")[0].equals("integer")) {
                mapTmp.put("format", "int32");
            } else if(str.split(",")[0].equals("number")) {
                mapTmp.put("format", "double");
            }else if(str.split(",")[0].equals("long")) {
                mapTmp.put("format", "int64");
            } else if(str.split(",")[0].equals("date")) {
                mapTmp.put("format", "date-time");
            } else {
                mapTmp.put("format", "");
            }
            listMap.add(mapTmp);
        }
        return listMap;
    }

    public List getReqForm(String jsonStr) {

        List listMap = new ArrayList();
        HashMap mapJson = JSON.parseObject(jsonStr, HashMap.class);
        Iterator iterator = mapJson.entrySet().iterator();
        while(iterator.hasNext()) {

            Map.Entry entry = (Map.Entry) iterator.next();
            HashMap mapTmp = new HashMap();
            String str = (String) entry.getValue();
            mapTmp.put("type", str.split(",")[0]);
            mapTmp.put("description", str.split(",")[1]);
            mapTmp.put("in", "formData");
            mapTmp.put("name", entry.getKey());
            if(entry.getKey().equals("id")) {
                mapTmp.put("required", true);
            } else {
                mapTmp.put("required", false);
            }
            if(str.split(",")[0].equals("string")) {
                mapTmp.put("format", "");
            } else if(str.split(",")[0].equals("integer")) {
                mapTmp.put("format", "int64");
            } else if(str.split(",")[0].equals("number")) {
                mapTmp.put("format", "double");
            } else if(str.split(",")[0].equals("long")) {
                mapTmp.put("format", "int64");
            } else if(str.split(",")[0].equals("date")) {
                mapTmp.put("format", "date");
            } else {
                mapTmp.put("format", "");
            }
            listMap.add(mapTmp);
        }
        return listMap;
    }
}
