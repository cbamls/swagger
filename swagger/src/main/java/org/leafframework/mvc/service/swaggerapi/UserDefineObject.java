package org.leafframework.mvc.service.swaggerapi;

import com.alibaba.fastjson.JSON;

import java.util.*;

/**
 * Created by cbam on 2016/6/22.
 */
public class UserDefineObject {

    private HashMap mapObject;
    //函数名即为 自定义的引用名称


    public HashMap RestSortList() {
        mapObject = new HashMap();
        HashMap hashMapProperties = new HashMap();


        /**
         * 加载Array中Object中单个Item，可重复。
         */
        /*************************************************/
        HashMap hashMapPerItem = new HashMap();

        String each_item_key = "id";
        String each_item_type = "integer";
        String each_item_description = "唯一标志";
        String each_item_format = "int64";
        hashMapPerItem.put("type", each_item_type);
        hashMapPerItem.put("description", each_item_description);
        hashMapPerItem.put("format", each_item_format);
        hashMapProperties.put(each_item_key, hashMapPerItem);

        HashMap hashMapPerItem1 = new HashMap();
        String each_item_key6 = "sortId";
        String each_item_type6 = "integer";
        String each_item_description6 = "分类ID";
        String each_item_format6 = "int64";
        hashMapPerItem1.put("type", each_item_type6);
        hashMapPerItem1.put("description", each_item_description6);
        hashMapPerItem1.put("format", each_item_format6);
        hashMapProperties.put(each_item_key6, hashMapPerItem1);

        HashMap hashMapPerItem2 = new HashMap();
        String each_item_key1 = "restId";
        String each_item_type1 = "integer";
        String each_item_description1 = "饭店ID";
        String each_item_format1 = "int64";
        hashMapPerItem2.put("type", each_item_type1);
        hashMapPerItem2.put("description", each_item_description1);
        hashMapPerItem2.put("format", each_item_format1);
        hashMapProperties.put(each_item_key1, hashMapPerItem2);


        HashMap hashMapItems = new HashMap();

        /**
         * Object的信息加载， 不需要重复加载
         */
        String items_type = "object";
        String items_format = "object";
        String items_description = "数组中的元素对象为每个图片的详细信息";

        mapObject.put("type", items_type);
        mapObject.put("format", items_format);
        mapObject.put("description", items_description);
        mapObject.put("properties", hashMapProperties);
/*********************************************************/
        return mapObject;
    }

    public HashMap User() {
        mapObject = new HashMap();

        HashMap mapProperties = new HashMap();

        /***********************/
        String perItemKey = "id";
        String perItemType = "integer";
        String perItemDescri = "唯一标志";
        String perItemFormat = "int64";
        HashMap mapItem = new HashMap();
        mapItem.put("type", perItemType);
        mapItem.put("description", perItemDescri);
        mapItem.put("format", perItemFormat);
        mapProperties.put(perItemKey, mapItem);

        String perItemKey1 = "name";
        String perItemType1 = "string";
        String perItemDescri1 = "饭店名称";
        String perItemFormat1 = "string";
        HashMap mapItem1 = new HashMap();
        mapItem1.put("type", perItemType1);
        mapItem1.put("description", perItemDescri1);
        mapItem1.put("format", perItemFormat1);
        mapProperties.put(perItemKey1, mapItem1);

        String perItemKey2 = "evaluateId";
        String perItemType2 = "integer";
        String perItemDescri2 = "评级ID";
        String perItemFormat2 = "int64";
        HashMap mapItem2 = new HashMap();
        mapItem2.put("type", perItemType2);
        mapItem2.put("description", perItemDescri2);
        mapItem2.put("format", perItemFormat2);
        mapProperties.put(perItemKey2, mapItem2);

        String perItemKey3 = "description";
        String perItemType3 = "string";
        String perItemDescri3 = "饭店描述信息";
        String perItemFormat3 = "string";
        HashMap mapItem3 = new HashMap();
        mapItem3.put("type", perItemType3);
        mapItem3.put("description", perItemDescri3);
        mapItem3.put("format", perItemFormat3);
        mapProperties.put(perItemKey3, mapItem3);

        String perItemKey4 = "recommend";
        String perItemType4 = "string";
        String perItemDescri4 = "推荐描述";
        String perItemFormat4 = "string";
        HashMap mapItem4 = new HashMap();
        mapItem4.put("type", perItemType4);
        mapItem4.put("description", perItemDescri4);
        mapItem4.put("format", perItemFormat4);
        mapProperties.put(perItemKey4, mapItem4);

        String perItemKey5 = "sts";
        String perItemType5 = "string";
        String perItemDescri5 = "饭店上下架状态";
        String perItemFormat5 = "string";
        HashMap mapItem5 = new HashMap();
        mapItem5.put("type", perItemType5);
        mapItem5.put("description", perItemDescri5);
        mapItem5.put("format", perItemFormat5);
        mapProperties.put(perItemKey5, mapItem5);

        String perItemKey6 = "showOrder";
        String perItemType6 = "integer";
        String perItemDescri6 = "展示顺序";
        String perItemFormat6 = "int64";
        HashMap mapItem6 = new HashMap();
        mapItem6.put("type", perItemType6);
        mapItem6.put("description", perItemDescri6);
        mapItem6.put("format", perItemFormat6);
        mapProperties.put(perItemKey6, mapItem6);

        String perItemKey7 = "hours";
        String perItemType7 = "string";
        String perItemDescri7 = "营业时间";
        String perItemFormat7 = "string";
        HashMap mapItem7 = new HashMap();
        mapItem7.put("type", perItemType7);
        mapItem7.put("description", perItemDescri7);
        mapItem7.put("format", perItemFormat7);
        mapProperties.put(perItemKey7, mapItem7);

        String perItemKey8 = "consumption";
        String perItemType8 = "string";
        String perItemDescri8 = "人均消费";
        String perItemFormat8 = "string";
        HashMap mapItem8 = new HashMap();
        mapItem8.put("type", perItemType8);
        mapItem8.put("description", perItemDescri8);
        mapItem8.put("format", perItemFormat8);
        mapProperties.put(perItemKey8, mapItem8);

        String perItemKey9 = "address";
        String perItemType9 = "string";
        String perItemDescri9 = "饭店地址";
        String perItemFormat9 = "string";
        HashMap mapItem9 = new HashMap();
        mapItem9.put("type", perItemType9);
        mapItem9.put("description", perItemDescri9);
        mapItem9.put("format", perItemFormat9);
        mapProperties.put(perItemKey9, mapItem9);

        String perItemKey11 = "linkPhone";
        String perItemType11 = "string";
        String perItemDescri11 = "饭店联系电话";
        String perItemFormat11 = "string";
        HashMap mapItem11 = new HashMap();
        mapItem11.put("type", perItemType11);
        mapItem11.put("description", perItemDescri11);
        mapItem11.put("format", perItemFormat11);
        mapProperties.put(perItemKey11, mapItem11);


        /******************************/

        String objectDescription = "这是对Object的描述";
        String objectFormat = "";
        mapObject.put("format", objectFormat);
        mapObject.put("description", objectDescription);
        mapObject.put("type", "object");
        mapObject.put("properties", mapProperties);
        return mapObject;
    }

    public HashMap RestList() {
        mapObject = new HashMap();
        HashMap hashMapProperties = new HashMap();


        /**
         * 加载Array中Object中单个Item，可重复。
         */
        /*************************************************/
        HashMap hashMapPerItem = new HashMap();

        String each_item_key = "id";
        String each_item_type = "integer";
        String each_item_description = "唯一标志";
        String each_item_format = "int64";
        hashMapPerItem.put("type", each_item_type);
        hashMapPerItem.put("description", each_item_description);
        hashMapPerItem.put("format", each_item_format);
        hashMapProperties.put(each_item_key, hashMapPerItem);

        HashMap hashMapPerItem1 = new HashMap();
        String each_item_key6 = "imgId";
        String each_item_type6 = "integer";
        String each_item_description6 = "图片ID";
        String each_item_format6 = "int64";
        hashMapPerItem1.put("type", each_item_type6);
        hashMapPerItem1.put("description", each_item_description6);
        hashMapPerItem1.put("format", each_item_format6);
        hashMapProperties.put(each_item_key6, hashMapPerItem1);

        HashMap hashMapPerItem2 = new HashMap();
        String each_item_key1 = "restId";
        String each_item_type1 = "integer";
        String each_item_description1 = "饭店ID";
        String each_item_format1 = "int64";
        hashMapPerItem2.put("type", each_item_type1);
        hashMapPerItem2.put("description", each_item_description1);
        hashMapPerItem2.put("format", each_item_format1);
        hashMapProperties.put(each_item_key1, hashMapPerItem2);

        HashMap hashMapPerItem3 = new HashMap();
        String each_item_key2 = "imgSrc";
        String each_item_type2 = "string";
        String each_item_description2 = "图片地址";
        String each_item_format2 = "string";
        hashMapPerItem3.put("type", each_item_type2);
        hashMapPerItem3.put("description", each_item_description2);
        hashMapPerItem3.put("format", each_item_format2);
        hashMapProperties.put(each_item_key2, hashMapPerItem3);

        HashMap hashMapPerItem5 = new HashMap();
        String each_item_key3 = "isMain";
        String each_item_type3 = "string";
        String each_item_description3 = "是否是主图片";
        String each_item_format3 = "string";
        hashMapPerItem5.put("type", each_item_type3);
        hashMapPerItem5.put("description", each_item_description3);
        hashMapPerItem5.put("format", each_item_format3);
        hashMapProperties.put(each_item_key3, hashMapPerItem5);

        HashMap hashMapPerItem4 = new HashMap();
        String each_item_key4 = "showOrder";
        String each_item_type4 = "integer";
        String each_item_description4 = "展示顺序";
        String each_item_format4 = "integer";
        hashMapPerItem4.put("type", each_item_type4);
        hashMapPerItem4.put("description", each_item_description4);
        hashMapPerItem4.put("format", each_item_format4);
        hashMapProperties.put(each_item_key4, hashMapPerItem4);

        HashMap hashMapPerItem6 = new HashMap();
        String each_item_key5 = "imgType";
        String each_item_type5 = "string";
        String each_item_description5 = "土坯那";
        String each_item_format5 = "string";
        hashMapPerItem6.put("type", each_item_type5);
        hashMapPerItem6.put("description", each_item_description5);
        hashMapPerItem6.put("format", each_item_format5);
        hashMapProperties.put(each_item_key5, hashMapPerItem6);
        /*************************************************/



        HashMap hashMapItems = new HashMap();

        /**
         * Object的信息加载， 不需要重复加载
         */
        String items_type = "object";
        String items_format = "object";
        String items_description = "数组中的元素对象为每个图片的详细信息";

        mapObject.put("type", items_type);
        mapObject.put("format", items_format);
        mapObject.put("description", items_description);
        mapObject.put("properties", hashMapProperties);
/*********************************************************/
        return mapObject;
    }
    public HashMap ListTestRespones () {

        mapObject = new HashMap();
        HashMap hashMapProperties = new HashMap();


        /**
         * 加载Array中Object中单个Item，可重复。
         */
        /*************************************************/
        HashMap hashMapPerItem = new HashMap();

        String each_item_key = "a";
        String each_item_type = "string";
        String each_item_description = "这是字母a";
        String each_item_format = "string";
        hashMapPerItem.put("type", each_item_type);
        hashMapPerItem.put("description", each_item_description);
        hashMapPerItem.put("format", each_item_format);
        hashMapProperties.put(each_item_key, hashMapPerItem);
        /*************************************************/



        HashMap hashMapItems = new HashMap();

        /**
         * Object的信息加载， 不需要重复加载
         */
        String items_type = "object";
        String items_format = "object";
        String items_description = "这是一个Object";

        mapObject.put("type", items_type);
        mapObject.put("format", items_format);
        mapObject.put("description", items_description);
        mapObject.put("properties", hashMapProperties);
/*********************************************************/

        return mapObject;
    }

    public static void restImgStr () {

        String jsonStr = "{\n" +
                "  \"id\":\"integer, 唯一标志\",\n" +
                "  \"imgId\":\"integer, 图片唯一标志ID\",\n" +
                "  \"restId\":\"integer,饭店ID\",\n" +
                "  \"imgSrc\":\"string,图片地址\",\n" +
                "  \"isMain\":\"string,是否是主图片\",\n" +
                "  \"showOrder\":\"integer, 展示顺序\",\n" +
                "  \"imgType\":\"string, 图片类型\"\n" +
                "}";
    }

    public static String restStr() {
        String jsonStr = "{\n" +
                "    \"id\": \"integer, 唯一标志\",\n" +
                "    \"name\": \"string,integer\",\n" +
                "    \"evaluateId\": \"integer, 评价等级\",\n" +
                "    \"description\": \"string,饭店介绍\",\n" +
                "    \"sts\": \"string, 饭店状态\",\n" +
                "    \"showOrder\": \"integer, 显示顺序\",\n" +
                "    \"hours\": \"string, 营业时间\",\n" +
                "    \"consumption\": \"string, 人均消费\",\n" +
                "    \"address\": \"string, 地址\",\n" +
                "    \"linkPhone\": \"string, 联系电话\",\n" +
                "    \"recommend\": \"string, 推荐描述\",\n" +
                "    \"latitude\": \"string,纬度\",\n" +
                "    \"longitude\": \"string,经度\",\n" +
                "    \"province\": \"integer, 省\",\n" +
                "    \"city\": \"integer, 市\",\n" +
                "    \"area\": \"integer, 区县\",\n" +
                "    \"createTime\": \"string, 创建时间\",\n" +
                "    \"updateTime\": \"string, 更新时间\",\n" +
                "    \"remark\": \"string, 备注\",\n" +
                "    \"imgUrl\": \"string, 图片地址\"\n" +
                "}";
        return jsonStr;
    }

    public static String imgJsonStr() {

        String jsonStr = "{\n" +
                "    \"id\": \"integer, 唯一标志\",\n" +
                "    \"name\": \"string, 图片名称\",\n" +
                "    \"description\": \" string, 图片描述\",\n" +
                "    \"typeId\": \"integer, 图片分类标志\",\n" +
                "    \"onFileName\": \"string, 原文件名\",\n" +
                "    \"saveFileName\": \"string, 保存文件名\",\n" +
                "    \"state\": \"integer,图片状态\",\n" +
                "    \"path\": \"string,路径\",\n" +
                "    \"url\": \"string, URL\",\n" +
                "    \"width\": \"integer, 宽度\",\n" +
                "    \"height\": \"integer, 高度\",\n" +
                "    \"size\": \"integer, 空间占用\",\n" +
                "    \"createTime\": \"string, 创建时间\",\n" +
                "    \"updateTime\": \"string, 更新时间\"\n" +
                "}";
        return jsonStr;
    }
}
