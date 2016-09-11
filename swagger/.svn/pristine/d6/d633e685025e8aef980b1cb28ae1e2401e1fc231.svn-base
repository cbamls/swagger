package org.leafframework.mvc.service.swaggerapi;

import org.apache.log4j.Logger;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;
/**
 *   1      void setQuery()  可以设置简单的query path  formData 请求  前两者参数会出现在地址栏 formDate 是表单提交文件
 *   2      void setQueryArray()  get array  地址栏出现由分隔符分割的数组，比如要批量根据id查询
 *   3      void setbodyArray()   这个是把第二条的数组放在body消息体传递而已。也就是post这个数组 而不是get
 *   4      void setObject()    用来表示  "":{}的情况，比如要向后台传入一个对象（用户、商品等）的信息
 *   5      void setComplexArrayList()   只不过把第三条中的对象放在 数组中而已 。如：" ":[{}, {}, {}]
 *   6      void setComplexQuery()  用户实现综合查询，形式如：" ":{"":"", "":""}
 */

/**
 * Created by cbam on 2016/6/21.
 */
public class InterfaceRequestInfo {

    protected Logger logger = Logger.getLogger(this.getClass());

//  query      简单query 和path       1
    public HashMap setQuery(HashMap mapParam) {

        HashMap mapTmp = new HashMap();

        String name = (String) mapParam.get("name");
        String in = (String) mapParam.get("location");
        String description = (String) mapParam.get("description");
        String required = String.valueOf(mapParam.get("isrequired"));
        String type = (String) mapParam.get("type");
        String defau = (String) mapParam.get("defa");

        if(mapParam.get("minValue") != null) {
            mapTmp.put("min_value", mapParam.get("minValue"));
        }
        if(mapParam.get("valueMax") != null) {
            mapTmp.put("max_value", mapParam.get("valueMax"));
        }
        if(mapParam.get("minLength") != null) {
            mapTmp.put("min_length", mapParam.get("minLength"));
        }
        if(mapParam.get("maxLength") != null) {
            mapTmp.put("max_length", mapParam.get("maxLength"));
        }
        String format = "";
        if(type.equals("integer")) {
             format = "int32";
        }

        mapTmp.put("name", name);
        mapTmp.put("in", in);
        mapTmp.put("description", description);
        mapTmp.put("required", required);
        mapTmp.put("type", type);
        mapTmp.put("default", defau);
        mapTmp.put("format", format);

        return mapTmp;
    }


    // queryarray   用户get请求 批量查询
  public HashMap setQueryArray(HashMap mapParam) {

      HashMap mapTmp = new HashMap();
      String name = (String) mapParam.get("name");
      String description = (String) mapParam.get("description");
      String each_item_type = (String) mapParam.get("type");
      String required = mapParam.get("isrequired") == 0 ? "false" : "true";

      HashMap mapItems = new HashMap();  //数组中单个元素类型
      mapItems.put("type", each_item_type);

      mapTmp.put("name", name);
      mapTmp.put("in", "query");
      mapTmp.put("required", required);
      mapTmp.put("description", description);
      mapTmp.put("items", mapItems);
      mapTmp.put("type", "array");
      mapTmp.put("collectionFormat", mapParam.get("ch") == null ? "csv" : mapParam.get("ch"));

      return mapTmp;
  }
// bodyarray         用于post body中有简单类型的数值        3
    public HashMap setbodyArray(HashMap mapTmp) {

        HashMap mapParam = new HashMap();

        String name = (String) mapTmp.get("name");                   //数组名
        String description = (String) mapTmp.get("description");
        String each_item_type = (String) mapTmp.get("type");     //数组内每个元素的类型  此数组内元素是简单类型
        String required = String.valueOf(mapTmp.get("isrequired"));
        HashMap mapItems = new HashMap();  //数组中单个元素类型
        mapItems.put("type", each_item_type);

        HashMap mapSchema = new HashMap();

        mapSchema.put("type", "array");
        mapSchema.put("format", "json");
        mapSchema.put("items", mapItems);

        mapParam.put("schema", mapSchema);
        mapParam.put("name", name);
        mapParam.put("in", "body");
        mapParam.put("description", description);
        mapParam.put("required", required);

        return mapParam;
    }
// object  用户添加信息  在UserDefineObject 自定义内容  用于post  结构：值为单个Object  4
    public HashMap setObject(HashMap mapParam, String $ref) {

        HashMap mapTmp = new HashMap();

        String name = (String) mapParam.get("name");
        String description = (String) mapParam.get("description");
        String required = String.valueOf(mapParam.get("isrequired"));
        String getJsonObject_$ref = $ref;

        HashMap mapSchema = new HashMap();


        mapSchema.put("schema", new ParseObject().getMapTableObject(getJsonObject_$ref));
        mapTmp.put("name", name);
        mapTmp.put("in", "body");
        mapTmp.put("description", description);
        mapTmp.put("required", required);
        mapTmp.putAll(mapSchema);

        return mapTmp;
    }

    // arraylist   复杂 array 对象 里面包含多个Object  5
    public HashMap setComplexArrayList(HashMap mapTmp, String $ref) {

        HashMap mapParam = new HashMap();

        String name = (String) mapTmp.get("name");
        String description = (String) mapTmp.get("description");
        String getJsonObject_$ref = $ref;
        String required = String.valueOf(mapTmp.get("isrequired"));

        HashMap mapSchema = new HashMap();
        mapSchema.put("type", "array");
        mapSchema.put("items", new ParseObject().getMapTableObject(getJsonObject_$ref));

        mapParam.put("name", name);
        mapParam.put("in", "array");
        mapParam.put("description", description);
        mapParam.put("required", required);
        mapParam.put("schema", mapSchema);

        return mapParam;
    }
    // complexquery 实现综合查询 用于get——query请求  用户自定义          6
    public  List setComplexQuery(HashMap mapParam, String $ref) {
        String $ref_1 = $ref;
        return new ParseObject().getReqListFromStr( $ref_1, (String) mapParam.get("location"));
    }
    // formdata                                                     7

    public List setFormDate(HashMap mapParam) {
        String $ref = (String) mapParam.get("$ref");
        return  new ParseObject().getReqForm( $ref );
    }

    //  这里设置了两个请求参数

    public List getMapReqParam() {
        List listParam = new ArrayList();
        HashMap mapAuth_token = new HashMap();
        mapAuth_token.put("name", "auth_token");
        mapAuth_token.put("in", "query");
        mapAuth_token.put("description", "非必须,测试通行令牌,正式环境不使用");
        mapAuth_token.put("required", false);
        mapAuth_token.put("type", "string");
        mapAuth_token.put("default", "hear7ee322911e6ad3200163e1c1b5e");
        listParam.add(mapAuth_token);

        HashMap mapRes = new HashMap();
        mapRes.put("name", "res");
        mapRes.put("in", "query");
        mapRes.put("description", "请求返回资源类型json | xml | view ");
        mapRes.put("required", true);
        mapRes.put("default", "json");
        mapRes.put("type", "string");
        listParam.add(mapRes);


       // mapReq.put("parameters", listParam);
        return listParam;
    }
}
