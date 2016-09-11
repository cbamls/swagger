package org.leafframework.mvc.service;

import com.alibaba.fastjson.JSON;
import org.leafframework.data.dao.mapper.SwaggerDao;
import org.leafframework.data.dao.orm.*;
import org.leafframework.mvc.service.swaggerapi.*;
import org.leafframework.util.RETURN;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

/**
 * Created by ly on 2016/6/29.
 */
@Service("Swagger")
@Scope("prototype")
public class Swagger extends AbstractBusiness{

    private  HashMap mapParam = null;

    @Override
    public RETURN execute() throws Exception {
        return RETURN.SUCCESS;
    }

    @Override
    public RETURN init() throws Exception {

        //get basic doc message
        String id = (String)this.getPageUri().get("id");
        if(id == null||id.isEmpty())
            return RETURN.METHOD_ERROR;
        TDocDao tDocDao = (TDocDao)this.getDaoFactory().get("TDocDao");
        int docId = Integer.parseInt(id);
        TDoc tDoc = tDocDao.findById(docId);
        if(tDoc == null)
            return RETURN.CHK_DATAQUERY_VERIFIED;
        this.getOutParam().put("doc", tDoc);
        //get doc info message
        Integer infoId = tDoc.getInfoId();
        if(infoId == null)
            return RETURN.CHK_DATAQUERY_VERIFIED;
        TDocInfoDao tDocInfoDao = (TDocInfoDao)this.getDaoFactory().get("TDocInfoDao");
        TDocInfo tDocInfo = tDocInfoDao.findById(infoId);
        if(tDocInfo == null)
            return RETURN.CHK_DATAQUERY_VERIFIED;
        this.getOutParam().put("docInfo", tDocInfo);
        //get contact message
        Integer contactId = tDocInfo.getContactId();
        if(contactId == null)
            return RETURN.CHK_DATAQUERY_VERIFIED;
        TDocContactDao tDocContactDao = (TDocContactDao)this.getDaoFactory().get("TDocContactDao");
        TDocContact tDocContact = tDocContactDao.findById(contactId);
        if(tDocContact == null)
            return RETURN.CHK_DATAQUERY_VERIFIED;
        this.getOutParam().put("contactInfo", tDocContact);
        //get basic path message
        SwaggerDao swaggerDao = (SwaggerDao)this.getDaoFactory().get("swaggerDao");
        List<TDocPath> tDocPaths = swaggerDao.getPath(docId);
        this.getOutParam().put("pathInfo", tDocPaths);
        //get detail path message
        List<Integer> pathIdList = new ArrayList<>();
        for(int i = 0; i < tDocPaths.size(); i++){
            int pathId = tDocPaths.get(i).getId();
            pathIdList.add(pathId);
        }
        List<TDocPathItem> tDocPathItems = swaggerDao.getPathItem(pathIdList);
        if(tDocPathItems.isEmpty())
            return RETURN.CHK_DATAQUERY_VERIFIED;
        this.getOutParam().put("pathDetail", tDocPathItems);
        //get request parameters
        List<Integer> pathItemIdList = new ArrayList<>();
        for(int i = 0; i < tDocPathItems.size(); i++){
            int pathItemId = tDocPathItems.get(i).getId();
            pathIdList.add(pathItemId);
        }
        List<TDocReqParam> tDocReqParams = swaggerDao.getReqParam(pathIdList);
        if(tDocReqParams.isEmpty())
            return RETURN.CHK_DATAQUERY_VERIFIED;
        this.getOutParam().put("requestParameters", tDocReqParams);
        //get tag message, allow null
        List<TDocTag> list_tDocTag = swaggerDao.getTag(docId);
        this.getOutParam().put("tags", list_tDocTag);
        //get response parameters
        List <TDocRespParam> tDocRespParams = swaggerDao.getRespParam(pathIdList);
        this.getOutParam().put("responseParameters", tDocRespParams);

        mapParam = this.getOutParam();
        HashMap dataStuct = getfinalDoc();  //解析持久层数据后的数据结构 为树状
        HashMap mapDoc = createDoc(dataStuct);             //在此函数中利用此结构调用“生产”类
        String str = JSON.toJSONString(mapDoc);
        logger.debug("result = ====\n" + str);
        this.getOutParam().put("result", str);
//        this.getSession().put("value", tDocRespParams);
//        HashMap map = new finalDoc(listParam).getMapDoc();
        return RETURN.SUCCESS;
    }

    @Override
    public RETURN query() throws Exception {

        return RETURN.SUCCESS;
    }

    /**
     * 解析数据库传回来的数据，结构化为一棵树，根节点为 ”路径“ 第二层为 ”路径详情“ 可能有 ”get“ 或”post“子树  第三层为 ”请求参数“
     * 和 ”响应参数“两个叶子， 然后可以往之前 要填写的地方 成堆的塞参数
     * @return
     */
    public HashMap getfinalDoc() {
        //拿到返回的数据进行遍历
        List listPathInfo = (List) mapParam.get("pathInfo");
        List listPathDetail = (List) mapParam.get("pathDetail");
        List listResponseParameters = (List) mapParam.get("responseParameters");
        List listRequestParameters = (List) mapParam.get("requestParameters");

        HashMap mapPaths = new HashMap();
        for(int i = 0; i < listPathInfo.size(); i++) {              //路径信息遍历

            HashMap mapPath = objectToMap(listPathInfo.get(i));

            HashMap mapDetailPath = new HashMap();
            for(int j = 0; j < listPathDetail.size(); j++) {//路径详情遍历

                HashMap mapMethod = objectToMap(listPathDetail.get(j));   //保存每个路径详情信息
                int id1 = (int) mapPath.get("id");
                int id2 = (int) mapMethod.get("pathId");
               if(mapPath.get("id") == mapMethod.get("pathId" ) || id1 == id2) {

                   HashMap rrb = new HashMap();  //保存了一个接口的基本信息、响应信息、请求信息、外部标签分组信息

                   List req = new ArrayList();              //保存所有请求

                   for(int k = 0; k < listRequestParameters.size(); k++) {          //请求信息遍历

                       HashMap mapParama = objectToMap(listRequestParameters.get(k));
                       int id3 = (int) mapParama.get("pathItemId");
                       int id4 = (int) mapMethod.get("id");
                       if(id3 == id4) {
                           InterfaceRequestInfo interfaceRequestInfo = new InterfaceRequestInfo();
                           HashMap mapReq = null;
                           String loc = (String) mapParama.get("location");
//                           if(mapParama.get("isarr") == 0) {
//                               boolean isArray = false;
//                           } else {
//                               boolean isArray = true;
//                           }
                           boolean isArray = (boolean) mapParama.get("isarr");
//                           int id = (int) mapParama.get("refId") ;
//
                           String $refId = null;

                           int id;
                           if(mapParama.get("refId") != null) {
                               id = (int) mapParama.get("refId") ;
                               SwaggerDao swaggerDao = (SwaggerDao)this.getDaoFactory().get("swaggerDao");
                               TDocDefinitions tDocDefinitions = swaggerDao.getUserDefine(id);
                               $refId = tDocDefinitions.getJson().trim();
                           } else {
                               id = 0;
                           }
                           if( (loc.equals("formData") || loc.equals("query")) && id == 0 && !isArray) {
                               mapReq = interfaceRequestInfo.setQuery(mapParama);
                           }
                           if(loc.equals("query") && isArray && id == 0) {
                               mapReq = interfaceRequestInfo.setQueryArray(mapParama);
                           }
                           if(loc.equals("query")  && !isArray && id != 0) {
                               logger.debug("ok");
                           } else {
                               logger.debug("no");
                           }
                           if( (loc.equals("query") || loc.equals("formData") ) && !isArray && id != 0) {
                               List list = interfaceRequestInfo.setComplexQuery(mapParama, $refId);
                               req.addAll(list);
                           }
                           if(loc.equals("body") && !isArray && id == 0) {
                               mapReq = (interfaceRequestInfo.setQuery(mapParama));
                           }
                           if(loc.equals("body") && isArray && id == 0 ) {
                               mapReq = interfaceRequestInfo.setbodyArray(mapParama);
                           }
                           if(loc.equals("body") && !isArray  && id !=0 ) {
                               mapReq = interfaceRequestInfo.setObject(mapParama, $refId);
                           }
                           if(loc.equals("body") && isArray && id != 0) {
                               mapReq = interfaceRequestInfo.setComplexArrayList(mapParama, $refId);
                           }

                           if(mapReq != null) {
                               req.add(mapReq);
                           }
                       }

                   }
                   req.addAll(new InterfaceRequestInfo().getMapReqParam());
                   HashMap pro = new HashMap();
                   pro.put("parameters", req);
                   HashMap ppIndex = new HashMap();
                   ppIndex.put("tty", pro);
                   HashMap res = new HashMap();
                   for(int m = 0; m < listResponseParameters.size(); m++) {         //响应信息遍历
                       HashMap mapParam = objectToMap(listResponseParameters.get(m));
                       int id3 = (int) mapMethod.get("id");
                       int id4 = (int) mapParam.get("pathItemId");
                       if(id3 == id4) {
                           InterfaceResponseInfo interfaceResponseInfo = new InterfaceResponseInfo();

                           boolean isArray = (boolean) mapParam.get("isarr");
//                           int id = (int) mapParam.get("refId");
                           TDocOtherInfo tDocOtherInfo = new TDocOtherInfo();
                           tDocOtherInfo.setPathItemId((Integer) mapParam.get("id"));
                           TDocOtherInfoDao tDocOtherInfoDao = (TDocOtherInfoDao) this.getDaoFactory().get("TDocOtherInfoDao");
                           List info_list = tDocOtherInfoDao.findByExample(tDocOtherInfo);
                           if(info_list.size() > 0) {
                               for(int each_info = 0; each_info < info_list.size(); each_info++) {
                                   TDocOtherInfo tDocOtherInfo1 = (TDocOtherInfo) info_list.get(each_info);
                                   TDocDefinitionsDao tDocDefinitionsDao = (TDocDefinitionsDao) this.getDaoFactory().get("TDocDefinitionsDao");
                                   TDocDefinitions tDocDefinitions = tDocDefinitionsDao.findById(tDocOtherInfo1.getRefId());
                                   tDocOtherInfo1.setJson(tDocDefinitions.getJson());
                               }
                               logger.debug("li==>" + info_list.size());
                           }

                           String $refId = null;
                           String ref_desc = null;
                           int id;
                           if(mapParam.get("refId") != null) {
                               id = (int) mapParam.get("refId") ;
                               SwaggerDao swaggerDao = (SwaggerDao)this.getDaoFactory().get("swaggerDao");
                               TDocDefinitions tDocDefinitions = swaggerDao.getUserDefine(id);
                               $refId = tDocDefinitions.getJson().trim();
                               ref_desc = tDocDefinitions.getDescription();
                           } else {
                               id = 0;
                           }
                           if(id != 0) {
                               SwaggerDao swaggerDao = (SwaggerDao)this.getDaoFactory().get("swaggerDao");
                               TDocDefinitions tDocDefinitions = swaggerDao.getUserDefine(id);
                               $refId = tDocDefinitions.getJson();
                           }
                           if(!isArray && id == 0) {
                               res.putAll(interfaceResponseInfo.setCommResponse(mapParam));
                           }
                           if(!isArray && id != 0) {
                               logger.debug("$refId ============ " + $refId);
                               res.putAll(interfaceResponseInfo.setObjectInfo(mapParam, $refId, info_list, ref_desc));
                           }
                           if(isArray && id == 0 ) {
                               res.putAll(interfaceResponseInfo.setArray(mapParam));
                           }
                           if(isArray && id != 0 ) {
                               res.putAll(interfaceResponseInfo.setComplexArrayList(mapParam, $refId, info_list, ref_desc));
                           }
//                           if(!isArray && !id ) {
//                               res.putAll(interfaceResponseInfo.setObjectInfo(mapParam));
//                           }
//                           switch ((Integer) mapParam.get("resType")) {
//                               case 1:
//                                   res.putAll(interfaceResponseInfo.setCommResponse(mapParam));
//                                   break;
//                               case 2:
//                                   res.putAll(interfaceResponseInfo.setArray(mapParam));
//                                   break;
//                               case 3:
//                                   res.putAll(interfaceResponseInfo.setComplexArrayList(mapParam));
//                                   break;
//                               case 4:
//                                   res.putAll(interfaceResponseInfo.setObjectInfo(mapParam));
//                                   break;
//                               default:
//                                   break;
//                           }
                       }
                   }
                   HashMap map_res = null;
                   // 设置每个post 或着get方法的 tag
                   List list_tag = null;
                   list_tag = (List) mapParam.get("tags");
                   List list_sub_tag = new ArrayList();
                   String sub_tags = (String) mapMethod.get("tagIds");
                   String [] pathIds = sub_tags.split(",");
                   for(String tag : pathIds) {
                       list_sub_tag.add(Integer.parseInt(tag));
                   }
                   List ans_tag = new ArrayList();
                   for(int tag = 0; tag < list_tag.size(); tag++) {
                       HashMap each_tag = objectToMap(list_tag.get(tag));
                       logger.debug(list_sub_tag + "   " + each_tag.get("id"));
                       if(list_sub_tag.contains(each_tag.get("id"))) {
//                           HashMap mapTmpTag = new HashMap();
//                           mapTmpTag.put("name", each_tag.get("name"));
//                           mapTmpTag.put("description", each_tag.get("description"));

                           ans_tag.add(each_tag.get("name"));
                       }
                   }
                   HashMap map = null;
                   if(map_res == null) {
                       map = getResResult(res);
                   } else {
                       map = getResResult(map_res);
                   }

                   rrb.put("b", mapMethod);        //基本信息
                   rrb.putAll(ppIndex);    //请求信息
                   rrb.put("res", map);     //响应信息
                   rrb.put("tags", ans_tag);
                   mapDetailPath.put(mapMethod.get("protocol"), rrb);//保存了每个子路径（不同请求）详情之下的所有信息 post 或 get结点之下
               }
            }
            mapPaths.put(mapPath.get("path"), mapDetailPath);    //保存了整个路径下的所有信息，包含一个路径下的有所请求

        }
        return mapPaths;
    }


    public HashMap objectToMap(Object object) {
        //String jsonStr = JSON.toJSONString(object);
        //HashMap mapObject = JSON.parseObject(jsonStr, HashMap.class);
        HashMap mapObject = new HashMap();
        Class c = object.getClass();
        Method [] m = c.getDeclaredMethods();
        for(int i = 0; i < m.length; i++) {
            if(m[i].getName().indexOf("get") == 0) {
                try {
                    String str = m[i].getName().substring(3);
                    String tmp = str.substring(0,1).toLowerCase() + str.substring(1); //获取对象中的参数名称
                    mapObject.put(tmp, m[i].invoke(object, new Object[0]));
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }
        }
        return mapObject;
    }

    /**
     * 封装好”协议“结点之内的所有数据
     * @param mapDoc
     * @return
     * @throws IOException
     */
    public HashMap resultJson(HashMap mapDoc) throws IOException {
        HashMap JSONAPI = new HashMap();

        HashMap JSONAPI_req = new HashMap();
        HashMap JSONAPI_res = new HashMap();
        HashMap JSONAPI_bas = new HashMap();

        JSONAPI_req = (HashMap) mapDoc.get("tty");

        JSONAPI_res = (HashMap) mapDoc.get("res");


        JSONAPI_bas = InterfaceBasicInfo.getMapBasic((HashMap) mapDoc.get("b"), (List) mapDoc.get("tags"));  // 返回接口基本信息

        if(JSONAPI_bas != null) {
            JSONAPI.putAll(JSONAPI_bas);
        }
        if(JSONAPI_req != null) {
            JSONAPI.putAll(JSONAPI_req);
        }

        if(JSONAPI_res != null) {
            JSONAPI.putAll(JSONAPI_res);
        }

        String str = JSON.toJSONString(JSONAPI);
        //get request path
        HashMap mapMethod = new HashMap();
        mapMethod.put(((HashMap) mapDoc.get("b")).get("protocol"), JSONAPI);
//        // 控制台打印最终结果
//        System.out.println("interface description below:======================= \n" + str);

        return mapMethod;
    }

    /**
     * 结构化后的数据和 原来项目的输入接口整合的函数，在此函数中将 拿到的mapDoc结构化的数据 塞入对应位置
     * 循环用来模拟 递归后序遍历 在过程中填塞数据 形成整个文档结构
     * @param mapDoc
     * @return
     * @throws IOException
     */
    public HashMap createDoc(HashMap mapDoc) throws IOException {

        HashMap allPath = new HashMap();
        Iterator iter_each_path = mapDoc.entrySet().iterator();

        while(iter_each_path.hasNext()) {                               //遍历每个接口路径
            Map.Entry entry = (Map.Entry) iter_each_path.next();
            String key = (String) entry.getKey();                       //为 path路径
            HashMap each_method = (HashMap) entry.getValue();
             //接口路径下
           Iterator iter_sub_path = each_method.entrySet().iterator();

           HashMap method = new HashMap();

           while(iter_sub_path.hasNext()) {                                 //每个接口的post 或 get方法
               Map.Entry entry1 = (Map.Entry) iter_sub_path.next();
               String keyMethod = (String) entry1.getKey();
               HashMap mapRRB = (HashMap) entry1.getValue();
               HashMap mapMethod = resultJson(mapRRB);    // 把请求信息和响应信息放到 生成类中去  返回的是 整个post 或着get结点

               method.putAll(mapMethod);
           }

           HashMap mapP = new HashMap();
           mapP.put(key, method);
           allPath.putAll(mapP);           //把post 或 get结点 塞进去
        }
        HashMap mapPaths = new HashMap();
        // 第一个参数是 文档主表信息  第二个参数是文档详情信息 第三个参数是文档的外部tags信息  第四个是 contact信息
        mapPaths.putAll( new PreInfo().getApiInfo( objectToMap(mapParam.get("doc")) , objectToMap( mapParam.get("docInfo")),(List) mapParam.get("tags"), objectToMap(mapParam.get("contactInfo"))));
        // get paths
        mapPaths.put("paths", allPath);
//
//        String str4 = JSON.toJSONString(mapPaths);
//        System.out.println("interface description below: \n" + str4);
        return mapPaths;
    }

    /**
     * 写死的将数据一层层往上封装
     * @param mapRes
     * @return
     */

    public  HashMap getResResult(HashMap mapRes)
    {
        HashMap hashMap = mapRes;
        HashMap mapDataSet = new HashMap();
        mapDataSet.put("description", "这是返回的结果集");
        mapDataSet.put("type", "object");
        HashMap hashMapProperties = new HashMap();
        hashMapProperties.put("properties", hashMap);
        mapDataSet.putAll(hashMapProperties);// 拿到dataset结果集
        HashMap mapHeader = getResult(1);
        HashMap mapPro = new HashMap();
        mapPro.putAll(mapHeader);
        mapPro.put("dataSet", mapDataSet);

        HashMap mapResult  = new HashMap();
        mapResult.put("type", "object");
        mapResult.put("properties", mapPro);
        HashMap mapResponse = new HashMap();
        mapResponse.put("result", mapResult);
        mapResponse.putAll(getResult(0));

        HashMap mapSchema = new HashMap();
        mapSchema.put("properties", mapResponse);
        mapSchema.put("type", "object");

        HashMap mapCode = new HashMap();
        mapCode.put("description", "调用成功返回信息");
        mapCode.put("schema", mapSchema);

        HashMap hashMapLastRes = new HashMap();
        hashMapLastRes.put("200", mapCode);
        HashMap map400 = new HashMap();
        map400.put("description", "无效的调用");
        hashMapLastRes.put("400", map400);
        HashMap map404 = new HashMap();
        map404.put("description", "API方法未找到");
        hashMapLastRes.put("404", map404);


//        List list = new ArrayList();
//        list.add(mapResponse);
//        String jsonstr = JSON.toJSONString(list);
//        System.out.println(jsonstr);

        HashMap tt = new HashMap();
        tt.put("responses", hashMapLastRes);
        return tt;

    }

    /**
     * 写死的返回状态消息
     * @param flag
     * @return
     */

    public static HashMap getResult(int flag) {

        String jsonStr = "{\n" +
                "    \"header\": {\n" +
                "        \"type\": \"object\",\n" +
                "        \"properties\": {\n" +
                "            \"appName\": {\n" +
                "                \"type\": \"string\",\n" +
                "                \"description\": \"应用模块名称\"\n" +
                "            },\n" +
                "            \"errorCode\": {\n" +
                "                \"type\": \"string\",\n" +
                "                \"description\": \"返回码\"\n" +
                "            },\n" +
                "            \"errorMsg\": {\n" +
                "                \"type\": \"string\",\n" +
                "                \"description\": \"返回信息\"\n" +
                "            },\n" +
                "            \"requestURL\": {\n" +
                "                \"type\": \"string\",\n" +
                "                \"description\": \"请求URL地址\"\n" +
                "            },\n" +
                "            \"success\": {\n" +
                "                \"type\": \"boolean\",\n" +
                "                \"description\": \"业务处理结果\"\n" +
                "            }\n" +
                "        }\n" +
                "    }\n" +
                "}";

        String jsonStr2 = "{\n" +
                "    \"formData\": {\n" +
                "        \"type\": \"object\",\n" +
                "        \"description\": \"不知道干啥的\",\n" +
                "        \"properties\": {\n" +
                "            \"fd\": {\n" +
                "                \"type\": \"\",\n" +
                "                \"description\": \"这里面一般没有东西\"\n" +
                "            }\n" +
                "        }\n" +
                "    }\n" +
                "}";


        if(flag == 1) {
            return JSON.parseObject(jsonStr, HashMap.class);
        } else {
            return   JSON.parseObject(jsonStr2, HashMap.class);
        }

    }

}
