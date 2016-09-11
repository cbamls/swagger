package org.leafframework.mvc.service.swaggerapi;


import org.apache.log4j.Logger;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
/**
 * 1        void setCommResponse() 如果要响应一个很简单的 json ，可用它 。如: {" ":" "}
 * 2        void setArray()   返回数组类型json 如  {"":[1,3,4]}
 * 3        void setObjectInfo() 返回单个Object {" ":{" ":" ", " ":" "} }
 * 4        void setComplexArrayList() 返回数组,内包Object，如：{"":[{},{},{}]}
 */

/**
 * Created by cbam on 2016/6/21.
 */
public class InterfaceResponseInfo {

    public Logger logger = Logger.getLogger(this.getClass());

// 1    设置简单键值对 json
    public HashMap setCommResponse(HashMap mapParam) {

        HashMap mapRes = new HashMap();
        String key = (String) mapParam.get("name");
        String value_type = (String) mapParam.get("type");
       // String value_format = (String) mapParam.get("format");
        String value_description = (String) mapParam.get("description");
        String value_title = "";

        HashMap mapValueAttr = new HashMap();
        mapValueAttr.put("type", value_type);
      //  mapValueAttr.put("format", value_format);
        mapValueAttr.put("description", value_description);
        mapValueAttr.put("title", value_title);

        mapRes.put(key, mapValueAttr);
        System.out.println(mapRes);
        return mapRes;

    }

   //  2 array 返回json值为array
    public HashMap setArray(HashMap mapParam) {
        HashMap mapRes = new HashMap();
        String ArrayKey = (String) mapParam.get("name");
        String perItemType = (String) mapParam.get("type");
        String perTtemDescri = (String) mapParam.get("description");

        HashMap mapItem = new HashMap();
        mapItem.put("description", perTtemDescri);
        mapItem.put("type", perItemType);
        HashMap hashMap = new HashMap();
        hashMap.put("items", mapItem);
        HashMap hashMapArray = new HashMap();
        hashMapArray.put("type", "array");
        hashMapArray.put("items", mapItem);

        mapRes.put(ArrayKey, hashMapArray);
        return mapRes;
    }

    // 3  值为单个object
    public HashMap setObjectInfo(HashMap mapParam, String ref, List info_list, String ref_desc) {
        HashMap mapRes = new HashMap();

        String objectKey = (String) mapParam.get("name");
        String description = (String) mapParam.get("description");  // 响应表的描述
        String $ref = ref;
        if( !$ref.equals("") ) {
            HashMap map_tmp = new ParseObject().getMapTableObject($ref);
            if(info_list.size() != 0) {
                map_tmp = new ParseObject().getCombine(map_tmp, info_list, ref_desc);
            }
            map_tmp.put("description", description);
            mapRes.put(objectKey, map_tmp);
        }
        return mapRes; //返回的响应信息的一个元素
    }

// 4   array内包含多个object
    public HashMap setComplexArrayList(HashMap mapParam, String ref, List info_list, String ref_desc) {
        HashMap mapRes = new HashMap();
        String list_key = (String) mapParam.get("name");
        String list_description = (String) mapParam.get("description");
        String $ref = ref;

        HashMap hashMapList = new HashMap();
        hashMapList.put("type", "array");
        hashMapList.put("description", list_description);
        HashMap map_rtn = new ParseObject().getMapTableObject($ref);
        if(info_list.size() != 0) {
            map_rtn = new ParseObject().getCombine(map_rtn, info_list, ref_desc);
        }

        hashMapList.put("items", map_rtn);

        mapRes.put(list_key, hashMapList);
        return mapRes;
    }
}
