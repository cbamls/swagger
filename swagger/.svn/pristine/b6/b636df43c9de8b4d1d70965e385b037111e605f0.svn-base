package org.leafframework.mvc.service;

import com.alibaba.fastjson.JSON;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.leafframework.data.dao.mapper.SwaggerDao;
import org.leafframework.data.dao.orm.*;
import org.leafframework.http.HttpClient;
import org.leafframework.util.RETURN;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import static java.io.File.separator;
import static org.leafframework.mvc.service.swaggerapi.Test.toCamel;

/**
 * Created by ly on 2016/6/29.
 */
@Service("manifest")
@Scope("prototype")
public class manifest extends AbstractBusiness implements ServletContextAware {

    @Value("${leaf.multi.baseurl}")
    private String baseurl;
    private ServletContext servletContext;
    public static final char UNDERLINE='_';

    public  HashMap josnFormTable(String target, boolean style) throws IOException {

        HashMap map_result = new HashMap();
        logger.debug("==> " + manifest.class.getClassLoader().getResource("/"));
//        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream),"GB2312");target/idoc-0.0.1/WEB-INF/classes/dataSource.html
        BufferedReader in = new BufferedReader(new InputStreamReader(manifest.class.getClassLoader().getResource("dataSource.html").openStream(),"utf-8"));
        String line = null;

        boolean flag = false;
        while((line = in.readLine()) != null) {
            if(line.indexOf("drop table if exists") != -1) {
                continue;
            }
            if(line.indexOf(target) != -1 && line.indexOf("create") != -1) { //开始到建表语句
                in.readLine();
                String tmp = null;
                String pre_key = "";
                String pre_value = "";
                while((tmp = in.readLine()) != null ) {
                    if(tmp.indexOf(");") != -1 || tmp.indexOf("primary") != -1) {  //读到一条sql结束 就break；
                        flag = true;
                        break;
                    }
                    tmp = tmp.trim();
                    if(tmp.length() == 0) {
                        continue;
                    }
                    if(tmp.indexOf("auto_increment") != -1) {
                        map_result.put("id", "integer,唯一标识");
                        continue;
                    }
                    if(tmp.indexOf(' ') == -1) {  //判断是不是备注换行了
                        //判断是不是该截取后两个字符
                        pre_value = (String) map_result.get(pre_key);
                        if(tmp.substring(tmp.length() - 1).equals(",")) {
                            pre_value += tmp.substring(0,tmp.length() - 2);
                        } else {
                            pre_value += tmp;
                        }

                        if(style) {
                            map_result.put(underlineToCamel(pre_key), pre_value);
                        } else {
                            map_result.put(pre_key, pre_value);
                        }
                        continue;
                    }

                    String key = tmp.substring(0, tmp.indexOf(' '));

                    String value = "";
                    if(tmp.indexOf("int") != -1) {
                        value += "integer,";
                    } else if(tmp.indexOf("varchar") != -1) {
                        value += "string,";
                    } else if(tmp.indexOf("text") != -1) {
                        value += "string,";
                    } else if(tmp.indexOf("datetime") != -1) {
                        value += "datetime,";
                    } else if(tmp.indexOf("decimal") != -1 || tmp.indexOf("numeric") != -1) {
                        value += "number,";
                    } else if(tmp.indexOf("char") != -1) {
                        value += "string,";
                    } else if(tmp.indexOf("smallint") != -1) {
                        value += "string,";
                    } else if(tmp.indexOf("integer") != -1) {
                        value += "integer,";
                    } else if(tmp.indexOf("longtext") != -1) {
                        value += "string,";
                    } else if(tmp.indexOf("bigint") != -1) {
                        value += "long,";
                    }
                    int loc = tmp.indexOf("\'") + 1;
                    if(loc != -1) {
                        tmp = tmp.substring(loc);
                        //如果行的末尾不是逗号那么不用截取最后两个字符
                        if(tmp.substring(tmp.length() - 1).equals(",")) {
                            value += tmp.substring(0,(tmp).length() - 2);
                        } else {
                            value += tmp.substring(0);
                }
            }
            // System.out.println(value);
                    if(style) {
                        pre_key = underlineToCamel(key);
                    } else {
                        pre_key = key;
                    }

                    if(style) {
                        map_result.put(underlineToCamel(key), value);
                    } else {
                        map_result.put(key, value);
                    }
                    // String [] strings = tmp.trim().split(" ");
                }
            }
            if(flag) {
                break;
            }
        }
        return map_result;
    }
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


    @Override
    public RETURN execute() throws Exception {
        TDocDao tDocDao = (TDocDao) this.getDaoFactory().get("TDocDao");
        TDocContactDao tDocContactDao = (TDocContactDao) this.getDaoFactory().get("TDocContactDao");
        TDocInfoDao tDocInfoDao = (TDocInfoDao) this.getDaoFactory().get("TDocInfoDao");
        TDocPathDao tDocPathDao = (TDocPathDao) this.getDaoFactory().get("TDocPathDao");
        TDocPathItemDao tDocPathItemDao = (TDocPathItemDao) this.getDaoFactory().get("TDocPathItemDao");
        TDocReqParamDao tDocReqParamDao = (TDocReqParamDao) this.getDaoFactory().get("TDocReqParamDao");
        TDocRespParamDao tDocRespParamDao = (TDocRespParamDao) this.getDaoFactory().get("TDocRespParamDao");
        TDocTagDao tDocTagDao = (TDocTagDao) this.getDaoFactory().get("TDocTagDao");
        SwaggerDao swaggerDao = (SwaggerDao) this.getDaoFactory().get("swaggerDao");
        TDocDefinitionsDao tDocDefinitionsDao = (TDocDefinitionsDao) this.getDaoFactory().get("TDocDefinitionsDao");
        String oper = null;
        if(this.getInParam().get("oper") == null) {
            oper = (String) this.getPageUri().get("oper");
        } else {
            oper = (String) this.getInParam().get("oper");
        }
//更新一个文档的信息
        if(oper.equals("update_doc_info")) {
            HashMap map_doc_info = this.getInParam();
            TDoc tDoc = new TDoc();
            TDocInfo tDocInfo = new TDocInfo();
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocInfo.setId(Integer.parseInt((String) map_doc_info.get("info_id")));
            }
            tDocInfo.setDescription((String) map_doc_info.get("description"));
            tDocInfo.setContactId(Integer.parseInt((String) map_doc_info.get("userId")));
            tDocInfo.setVersion((String) map_doc_info.get("version"));
            tDocInfo.setTitle((String) map_doc_info.get("title"));
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocInfoDao.merge(tDocInfo);
            } else {
                tDocInfoDao.persist(tDocInfo);
            }


            tDoc.setInfoId(tDocInfo.getId());
            if(map_doc_info.get("docid") != null && !map_doc_info.get("docid").equals("")) {
                tDoc.setId(Integer.parseInt((String) map_doc_info.get("docid")));
            }
            tDoc.setVersion((String) map_doc_info.get("swagger"));
            tDoc.setHost((String) map_doc_info.get("host"));
            tDoc.setBasePath((String) map_doc_info.get("basePath"));
            tDoc.setSchemes((String) map_doc_info.get("schemes"));
            tDoc.setExternalDoc(map_doc_info.get("externalDoc").equals("") ? null : Integer.parseInt((String) map_doc_info.get("externalDoc")));
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDoc.setCreateTime(time);
            tDoc.setInfoId(tDocInfo.getId());
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocDao.merge(tDoc);
            } else {
                tDocDao.persist(tDoc);
            }
            tDocInfo.setDocId(tDoc.getId());

            tDocInfoDao.merge(tDocInfo);
//            if(map_doc_info.get("info_id") == null || map_doc_info.get("info_id").equals("")){
//                HashMap<String, Object> pageForm = new HashMap<String, Object>();
//                HttpClient httpClient = new HttpClient();
//                String url = "http://localhost/swagger/tty1?mt=2&oper=reflect&docid=1&res=json";
//                httpClient.postForObject(url, pageForm);
//            }
            this.getOutParam().put("docid", tDoc.getId());
            changeDocState(tDoc.getId());
            this.setLogicView("reflect_index");
            return RETURN.SUCCESS;
        }
        //添加接口文档信息
        if(oper.equals("add_doc_info")) {
            HashMap map_doc_info = this.getInParam();
            TDoc tDoc = new TDoc();
            TDocInfo tDocInfo = new TDocInfo();
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocInfo.setId(Integer.parseInt((String) map_doc_info.get("info_id")));
            }
            tDocInfo.setDescription((String) map_doc_info.get("description"));
            tDocInfo.setContactId(Integer.parseInt((String) map_doc_info.get("userId")));
            tDocInfo.setVersion((String) map_doc_info.get("version"));
            tDocInfo.setTitle((String) map_doc_info.get("title"));
            tDocInfo.setProject((String) map_doc_info.get("project"));
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocInfoDao.merge(tDocInfo);
            } else {
                tDocInfoDao.persist(tDocInfo);
            }


            tDoc.setInfoId(tDocInfo.getId());
            if(map_doc_info.get("docid") != null && !map_doc_info.get("docid").equals("")) {
                tDoc.setId(Integer.parseInt((String) map_doc_info.get("docid")));
            }
            tDoc.setVersion((String) map_doc_info.get("swagger"));
            tDoc.setHost((String) map_doc_info.get("host"));
            tDoc.setBasePath((String) map_doc_info.get("basePath"));
            tDoc.setSchemes((String) map_doc_info.get("schemes"));
            tDoc.setExternalDoc(map_doc_info.get("externalDoc").equals("") ? null : Integer.parseInt((String) map_doc_info.get("externalDoc")));
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDoc.setCreateTime(time);
            tDoc.setUpdateTime(time);
            tDoc.setInfoId(tDocInfo.getId());
            if(map_doc_info.get("info_id") != null && !map_doc_info.get("info_id").equals("")){
                tDocDao.merge(tDoc);
            } else {
                tDocDao.persist(tDoc);
            }
            tDocInfo.setDocId(tDoc.getId());

            tDocInfoDao.merge(tDocInfo);

            this.getOutParam().put("docid", tDoc.getId());

//            this.setLogicView("reflect_index");
            return RETURN.SUCCESS;
        }

//        添加一个接口的信息
        if(oper.equals("addpath")) {
            HashMap map_path_info = this.getInParam();
            TDocPathItem tDocPathItem = new TDocPathItem();
            TDocPath tDocPath = new TDocPath();

            tDocPath.setDocId(Integer.parseInt((String) map_path_info.get("docid")));
            tDocPath.setPath((String) map_path_info.get("path"));
            if(map_path_info.containsKey("path_id") && map_path_info.get("path_id") != null && !map_path_info.get("path_id").equals("")) {
                tDocPath.setId((Integer) map_path_info.get("path_id"));
                tDocPathDao.merge(tDocPath);
            } else {
                tDocPathDao.persist(tDocPath);
            }
//添加玩接口信息之后 path_id 返回去 用于再次修改刚才添加的接口
            map_path_info.put("path_id", tDocPath.getId());

            //int i = tDocPath.getId();
            tDocPathItem.setPathId(tDocPath.getId());
            tDocPathItem.setProtocol((String) map_path_info.get("protocol"));
            tDocPathItem.setTagIds((String) map_path_info.get("tag"));
            tDocPathItem.setDescription((String) map_path_info.get("description"));
            tDocPathItem.setSummary((String) map_path_info.get("summary"));
            tDocPathItem.setConsumes((String) map_path_info.get("consumes"));
            tDocPathItem.setProduces((String) map_path_info.get("produces"));
            tDocPathItem.setAppProtocol((String) map_path_info.get("appProtocol"));
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDocPathItem.setCreateTime(time);
            tDocPathItem.setUpdateTime(time);
            tDocPathItem.setInterCode((String) map_path_info.get("interCode"));
            tDocPathItemDao.persist(tDocPathItem);
            map_path_info.put("id", tDocPathItem.getId());

//            List def_init_list = tDocDefinitionsDao.findAll();
//            map_path_info.put("def", def_init_list);
            HashMap pathInfo = new HashMap();
            map_path_info.put("tagIds", tDocPathItem.getTagIds());
            pathInfo.put("pathInfo", map_path_info);
            pathInfo.put("path", tDocPath.getPath());
            this.getOutParam().put("basic", pathInfo);

            //  当编辑接口的时候我要拿到 当前所有的属于当前文档的tag 这里我用hibernate根据id查找 就是不好使
            List<TDocTag> tDocTags = swaggerDao.getTag(Integer.parseInt((String) map_path_info.get("docid")));

            this.getOutParam().put("tags", tDocTags);
            this.getOutParam().put("docid", Integer.parseInt((String) map_path_info.get("docid")));
            this.getOutParam().put("path_id", (Integer) map_path_info.get("path_id")); //t_doc_path的id
            this.getOutParam().put("id", tDocPathItem.getId());//t_doc_path_item的id
            // 拿到所有的属于此文档的所有自定义数据结构
            List def_init_list = (List) swaggerDao.getUserDefByDocId(Integer.parseInt((String) map_path_info.get("docid")));
            this.getOutParam().put("def", def_init_list);

//            this.setLogicView("inter");
            this.setLogicView("interInfoModify");
            return RETURN.SUCCESS;
        }

        //更新文档路径详情信息
        if(oper.equals("update_path")) {
            HashMap map_path_info = this.getInParam();

            TDocPath tDocPath = new TDocPath();

            tDocPath.setDocId(Integer.parseInt((String) map_path_info.get("docid")));
            tDocPath.setPath((String) map_path_info.get("path"));
            if(map_path_info.containsKey("path_id") && map_path_info.get("path_id") != null && !map_path_info.get("path_id").equals("")) {
                tDocPath.setId(Integer.parseInt((String) map_path_info.get("path_id")) );
                tDocPathDao.merge(tDocPath);
            }
            TDocPathItem tDocPathItem = tDocPathItemDao.findById(Integer.parseInt((String) map_path_info.get("id")));
            tDocPathItem.setPathId(Integer.parseInt((String) map_path_info.get("path_id")) );
            tDocPathItem.setProtocol((String) map_path_info.get("protocol"));
            tDocPathItem.setTagIds((String) map_path_info.get("tag"));
            tDocPathItem.setDescription((String) map_path_info.get("description"));
            tDocPathItem.setSummary((String) map_path_info.get("summary"));
            tDocPathItem.setConsumes((String) map_path_info.get("consumes"));
            tDocPathItem.setProduces((String) map_path_info.get("produces"));
            tDocPathItem.setAppProtocol((String) map_path_info.get("appProtocol"));
            tDocPathItem.setInterCode((String) map_path_info.get("interCode"));
            tDocPathItemDao.merge(tDocPathItem);
            changeDocState(Integer.parseInt((String) map_path_info.get("docid")));
            changeInterfaceState(Integer.parseInt((String) map_path_info.get("id")));
            return RETURN.SUCCESS;
        }

        if(oper.equals("del_inter")) {
            String param = (String) this.getPageUri().get("ids");
            String [] str = param.split(",");
            for(int i = 0; i < str.length; i++) {
                int inter_id = Integer.valueOf(str[i]);
                TDocPathItem tDocPathItem = tDocPathItemDao.findById(inter_id);
                tDocPathItemDao.delete(tDocPathItem);
                TDocPath tDocPath = tDocPathDao.findById(tDocPathItem.getPathId());
                tDocPathDao.delete(tDocPath);
                //删除请求
                TDocReqParam tDocReqParam = new TDocReqParam();
                tDocReqParam.setPathItemId(tDocPathItem.getId());
                List<TDocReqParam> tDocReqParams = tDocReqParamDao.findByExample(tDocReqParam);
                for(int j = 0; j < tDocReqParams.size(); j++) {
                    tDocReqParamDao.delete(tDocReqParams.get(j));
                }
                //删除响应
                TDocRespParam tDocRespParam = new TDocRespParam();
                tDocRespParam.setId(tDocPathItem.getId());
                List<TDocRespParam> tDocRespParams = tDocRespParamDao.findByExample(tDocRespParam);
                for(int k = 0 ; k < tDocRespParams.size(); k++) {
                    tDocRespParamDao.delete(tDocRespParams.get(k));
                }

            }
            int docid = Integer.parseInt((String) this.getPageUri().get("docid"));
            changeDocState(docid);
            return RETURN.SUCCESS;
        }

//删除一条请求信息
        if(oper.equals("del_req"))  {
            String param = (String) this.getPageUri().get("ids");
            String [] str = param.split(",");
            int path_item_id = 0;
            for(int i = 0; i < str.length; i++) {
                int req_id = Integer.valueOf(str[i]);
                TDocReqParam tDocReqParam = tDocReqParamDao.findById(req_id);
                path_item_id = tDocReqParam.getPathItemId();
                tDocReqParamDao.delete(tDocReqParam);
            }
            changeDocState(Integer.parseInt((String) this.getPageUri().get("docid")));
            changeInterfaceState(path_item_id);
            return RETURN.SUCCESS;
        }
//        批量删除响应记录
        if(oper.equals("del_res")) {
            String param = (String) this.getPageUri().get("ids");
            String [] str = param.split(",");
            int path_item_id = 0;
            for(int i = 0; i < str.length; i++) {
                int res_id = Integer.valueOf(str[i]);
                TDocRespParam tDocRespParam = tDocRespParamDao.findById(res_id);
                path_item_id = tDocRespParam.getPathItemId();
                //如果存在三级 则删除所有三级元素
                List<TDocOtherInfo> list_info = swaggerDao.getOtherInfo(res_id);
                for(int del = 0; del < list_info.size(); del++) {
                    TDocOtherInfo tDocOtherInfo = list_info.get(del);
                    TDocOtherInfoDao tDocOtherInfoDao = (TDocOtherInfoDao) this.getDaoFactory().get("TDocOtherInfoDao");
                    tDocOtherInfoDao.delete(tDocOtherInfo);
                }
                tDocRespParamDao.delete(tDocRespParam);
            }
            changeDocState(Integer.parseInt((String) this.getPageUri().get("docid")));
            changeInterfaceState(path_item_id);
            return RETURN.SUCCESS;
        }
//        持久化接口请求信息
        if(oper.equals("addreq")) {
            HashMap map_req_info = this.getInParam();
            TDocReqParam tDocReqParam = new TDocReqParam();
            tDocReqParam.setPathItemId(map_req_info.get("path_item_id") == null ? null : Integer.parseInt((String) map_req_info.get("path_item_id")) );
            tDocReqParam.setName((String) map_req_info.get("name"));
            tDocReqParam.setLocation((String) map_req_info.get("location"));
            tDocReqParam.setDescription((String) map_req_info.get("description"));
            tDocReqParam.setType((String) map_req_info.get("type"));
            tDocReqParam.setMaxLength(map_req_info.get("maxLength").equals("") ? null : Integer.parseInt((String) map_req_info.get("maxLength")));
            tDocReqParam.setMinLength(map_req_info.get("minLength").equals("") ? null : Integer.parseInt((String) map_req_info.get("minLength")));
            tDocReqParam.setValueMax(map_req_info.get("valueMax").equals("") ? null : Integer.parseInt((String) map_req_info.get("valueMax")));
            tDocReqParam.setMinValue(map_req_info.get("minValue").equals("") ? null : Integer.parseInt((String) map_req_info.get("minValue")));
            tDocReqParam.setDefa(map_req_info.get("defa").equals("") ? null : (String) map_req_info.get("defa"));
            tDocReqParam.setIsrequired(map_req_info.get("isrequired") == null || map_req_info.get("isrequired").equals("") || map_req_info.get("isrequired").equals("0") ? false : true);
            tDocReqParam.setRefId(map_req_info.get("refid") == null || map_req_info.get("refid").equals("") ? null : Integer.parseInt((String) map_req_info.get("refid")));
            tDocReqParam.setIsarr(map_req_info.get("isarr") == null || map_req_info.get("isarr").equals("0") ? false : true);

            tDocReqParamDao.persist(tDocReqParam);
            this.getOutParam().put("req_id", tDocReqParam.getId());
            this.getOutParam().put("path_item_id", tDocReqParam.getPathItemId());
            this.getOutParam().put("docid", map_req_info.get("docid"));
            this.setLogicView("interInfo");
            changeDocState(Integer.parseInt((String) map_req_info.get("docid")));
            changeInterfaceState(tDocReqParam.getPathItemId());
            return RETURN.SUCCESS;
        }
//        添加响应信息
        if(oper.equals("addres")) {
            HashMap map_res_info = this.getInParam();
            TDocRespParam tDocRespParam = new TDocRespParam();
            tDocRespParam.setPathItemId(Integer.parseInt((String) map_res_info.get("path_item_id")));
            tDocRespParam.setName( map_res_info.get("name") == null || map_res_info.get("name") == "" ? null : (String) map_res_info.get("name"));
            tDocRespParam.setDescription(map_res_info.get("description") == "" ? null : (String) map_res_info.get("description"));
            tDocRespParam.setType(map_res_info.get("type").equals("") || map_res_info.get("type") == null ? null : (String) map_res_info.get("type"));
            tDocRespParam.setRefId(map_res_info.get("refId") == null || map_res_info.get("refId") == "" ? null : Integer.parseInt((String) map_res_info.get("refId")));
            tDocRespParam.setIsarr(map_res_info.get("isarr").equals("0") ? false : true);
            tDocRespParamDao.persist(tDocRespParam);
            String [] p_name = null;
            if(map_res_info.get("p_name") instanceof String []) {
                p_name = (String[]) map_res_info.get("p_name");
            } else {
                p_name = new String[1];
                p_name[0] = (String) map_res_info.get("p_name");
            }
            String [] p_arr = null;
            if(map_res_info.get("p_arr") instanceof String []) {
                p_arr = (String[]) map_res_info.get("p_arr");
            } else {
                p_arr = new String[1];
                p_arr[0] = (String) map_res_info.get("p_arr");
            }
            String [] p_ref = null;
            if(map_res_info.get("p_ref") instanceof String []) {
                p_ref = (String[]) map_res_info.get("p_ref");
            } else {
                p_ref = new String[1];
                p_ref[0] = (String) map_res_info.get("p_ref");
            }
            String [] p_desc = null;
            if(map_res_info.get("p_desc") instanceof String []) {
                p_desc = (String[]) map_res_info.get("p_desc");
            } else {
                p_desc = new String[1];
                p_desc[0] = (String) map_res_info.get("p_desc");
            }
            for(int cir = 0; cir < p_name.length; cir++) {
                if(p_name[cir] == null || p_arr[cir]==null) {
                    continue;
                }
                TDocOtherInfo tDocOtherInfo = new TDocOtherInfo();
                tDocOtherInfo.setName(p_name[cir]);
                tDocOtherInfo.setRefId(p_ref[cir] == null || p_ref[cir].equals("") ? null : Integer.parseInt(p_ref[cir]));
                if(p_desc[cir] != null && !p_desc[cir].equals("")) {
                    tDocOtherInfo.setDescription(p_desc[cir]);
                }
                tDocOtherInfo.setPathItemId(tDocRespParam.getId());
                tDocOtherInfo.setIsArr(Boolean.valueOf(p_arr[cir].equals("1") ? "true" : "false"));
                TDocOtherInfoDao tDocOtherInfoDao = (TDocOtherInfoDao) this.getDaoFactory().get("TDocOtherInfoDao");
                tDocOtherInfoDao.persist(tDocOtherInfo);
                // 看看有没有三级属性
                if(swaggerDao.getOtherInfo(tDocRespParam.getId()).size() != 0) {
                    tDocRespParam.setOtherInfo(swaggerDao.getOtherInfo(tDocRespParam.getId()));
                }
            }
            this.getOutParam().put("def", tDocRespParam);
            this.getOutParam().put("res_id", tDocRespParam.getId());
            this.getOutParam().put("docid",map_res_info.get("docid"));
            this.getOutParam().put("path_item_id", Integer.parseInt((String) map_res_info.get("path_item_id")));
            this.setLogicView("interInfo");
            changeDocState(Integer.parseInt((String) map_res_info.get("docid")));
            changeInterfaceState(tDocRespParam.getPathItemId());
            return RETURN.SUCCESS;
        }

//        添加tag信息 || 修改tag信息  无论是新增还是修改都把原来和此docid关联的tag清掉 然后再做一次新增
        if(oper.equals("addtag")) {
            HashMap map_tag_info = this.getInParam();

            //先做删除或更新
            int docid = Integer.parseInt((String) map_tag_info.get("docid"));
            List<TDocTag> tDocTags = swaggerDao.getTag(docid);

            String [] tag_ids = null;
            if(map_tag_info.get("tagId") instanceof String []) {
                tag_ids = (String[]) map_tag_info.get("tagId");
            } else {
                tag_ids = new String[1];
                tag_ids[0] = (String) map_tag_info.get("tagId");
            }

            String [] tag_name = null;
            if(map_tag_info.get("name") instanceof String []) {
                tag_name = (String[]) map_tag_info.get("name");
            } else {
                tag_name = new String[1];
                tag_name[0] = (String) map_tag_info.get("name");
            }

            String [] tag_desc = null;
            if(map_tag_info.get("desc") instanceof String []) {
                tag_desc = (String[])map_tag_info.get("desc");
            } else {
                tag_desc = new String[1];
                tag_desc[0] = (String)map_tag_info.get("desc");
            }

            //插入
            for(int tag = 0; tag < tag_ids.length; tag++) {
                int le = tag_ids.length;
                if(tag_ids[tag] == null) {
                    continue;
                }
                if(tag_ids[tag].equals("")) {
                    TDocTag tDocTag = new TDocTag();
                    tDocTag.setDocId(Integer.parseInt((String) map_tag_info.get("docid")));
                    tDocTag.setName(tag_name[tag]);
                    tDocTag.setDescription(tag_desc[tag].equals("") ? null : tag_desc[tag]);
                    DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String time=format.format(new Date());
                    tDocTag.setCreateTime(time);
                    tDocTag.setUpdateTime(time);
                    swaggerDao.insertTag(tDocTag);
                }
            }

            boolean if_save = false;
            for(int each_tag_in_table = 0; each_tag_in_table < tDocTags.size(); each_tag_in_table ++) {
                boolean flag = false;
                int each_jsp_tag;
                for(each_jsp_tag = 0; each_jsp_tag < tag_name.length && !flag; each_jsp_tag++) {
                    if(tag_name[each_jsp_tag] != null && !tag_ids[each_jsp_tag].equals("") && Integer.parseInt(tag_ids[each_jsp_tag]) == tDocTags.get(each_tag_in_table).getId()) {
                        flag = true;
                    }
                }
                //如果在没有找到某个tag说明前台想删除此tag 要核查是否可以删除
                if(!flag) {
                    HashMap param = new HashMap();
                    param.put("tagIds", String.valueOf(tDocTags.get(each_tag_in_table).getId()));
                    if(swaggerDao.getPathItemByTagIds(param).size() > 0) {
                        return new RETURN("tagErr", "tag或正在被引用！");
                    } else {
                        tDocTagDao.delete(tDocTags.get(each_tag_in_table));
                    }
                } else {
                    tDocTags.get(each_tag_in_table).setDocId(Integer.parseInt((String) map_tag_info.get("docid")));
                    tDocTags.get(each_tag_in_table).setName(tag_name[--each_jsp_tag]);
                    tDocTags.get(each_tag_in_table).setDescription(tag_desc[each_jsp_tag].equals("") ? null : tag_desc[--each_jsp_tag]);
                    DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String time=format.format(new Date());
                    tDocTags.get(each_tag_in_table).setCreateTime(time);
                    tDocTags.get(each_tag_in_table).setUpdateTime(time);
                    swaggerDao.updateTag(tDocTags.get(each_tag_in_table));
                }
            }

            changeDocState(docid);
            return RETURN.SUCCESS;
        }
//        添加自定义数据结构
        if(oper.equals("add_define")) {
            TDocDefinitions tDocDefinitions = new TDocDefinitions();
            HashMap map_def_info = this.getInParam();
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDocDefinitions.setCreateTime(time);
            tDocDefinitions.setDocId(Integer.parseInt((String) map_def_info.get("docid")));
            tDocDefinitions.setJson( map_def_info.get("json") == null || map_def_info.get("json") == "" ? null : (String) map_def_info.get("json"));
            tDocDefinitions.setDescription((String) map_def_info.get("description"));
            tDocDefinitions.setUserCode((String) map_def_info.get("userCode"));
            tDocDefinitionsDao.persist(tDocDefinitions);

            int docid = Integer.parseInt((String) map_def_info.get("docid"));
            List<TDocDefinitions> def_list = swaggerDao.getUserDefByDocId(docid);
            this.getOutParam().put("def_list", def_list);
            this.setLogicView("tDocUserDifine");
            changeDocState(Integer.parseInt((String) map_def_info.get("docid")));
            return RETURN.SUCCESS;
        }
        //更新自定义
        if(oper.equals("update_define")) {
            TDocDefinitions tDocDefinitions = new TDocDefinitions();
            HashMap map_def_info = this.getInParam();
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDocDefinitions.setCreateTime(time);
            tDocDefinitions.setId(Integer.parseInt((String) map_def_info.get("id")));
            tDocDefinitions.setDocId(Integer.parseInt((String) map_def_info.get("docid")));
            tDocDefinitions.setJson( map_def_info.get("json") == null || map_def_info.get("json") == "" ? null : (String) map_def_info.get("json"));
            tDocDefinitions.setDescription((String) map_def_info.get("description"));
            tDocDefinitions.setUserCode((String) map_def_info.get("userCode"));
            tDocDefinitionsDao.merge(tDocDefinitions);
            this.getOutParam().put("def", tDocDefinitions);
            changeDocState(Integer.parseInt((String) map_def_info.get("docid")));
            return RETURN.SUCCESS;
        }
        //添加开发者
        if(oper.equals("add_user")) {
            TDocContact tDocContact = new TDocContact();
            HashMap map_receive = this.getInParam();
            tDocContact.setName((String) map_receive.get("name"));
            tDocContact.setEmail((String) map_receive.get("email"));
            tDocContact.setUrl(map_receive.get("per_url").equals("") ? null : (String) map_receive.get("per_url"));
            tDocContact.setPhone(map_receive.get("phone").equals("") ? null : (String) map_receive.get("phone"));
            DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=format.format(new Date());
            tDocContact.setRegTime(time);
            tDocContact.setRemark(map_receive.get("remark").equals("") ? null : (String) map_receive.get("remark"));
            tDocContactDao.persist(tDocContact);
            List<TDocContact> user_list = tDocContactDao.findAll();
            this.getOutParam().put("user_list", user_list);
            this.setLogicView("tDocContact");
            return RETURN.SUCCESS;
        }
        /**
         * 以下为查询部分
         */
        //查询当前项目的所有开发者
        if(oper.equals("find_user")) {
            List<TDocContact> user_list = tDocContactDao.findAll();
            this.getOutParam().put("user_list", user_list);
            this.setLogicView("tDocContact");
            return RETURN.SUCCESS;
        }
        //查询路径详情
        if(oper.equals("find_path_list")) {
           int doc_id = Integer.parseInt((String) this.getPageUri().get("docid"));
            this.getOutParam().put("docid", doc_id);
            List path_list = new ArrayList();
            HashMap map_path = new HashMap();
            TDocPath tDocPath = new TDocPath();
            tDocPath.setDocId(doc_id);
            List<TDocPath> paths = tDocPathDao.findByExample(tDocPath);
            for(int i = 0; i < paths.size(); i++) {
                TDocPath tDocPath1 = paths.get(i);
                map_path.put("inter_id", tDocPath1.getId());  //接口路径表id
                map_path.put("path", tDocPath1.getPath());
                map_path.put("docid", doc_id);
                int path_id = tDocPath1.getId();
                TDocPathItem tDocPathItem = new TDocPathItem();
                tDocPathItem.setPathId(path_id);
                List<TDocPathItem> pathItems = tDocPathItemDao.findByExample(tDocPathItem);

                for(int j = 0; j < pathItems.size(); j++) {
                    HashMap map_path_tmp = new HashMap();
                    TDocPathItem tDocPathItem1 = pathItems.get(j);
                    HashMap map_tmp = new Swagger().objectToMap(tDocPathItem1);
                    if(tDocPathItem1.getTagIds() != null) {
                        map_tmp.put("tagName", tDocTagDao.findById(Integer.parseInt(tDocPathItem1.getTagIds())).getName());
                    } else {
                        map_tmp.put("tagName", null);
                    }
                    map_path_tmp.putAll(map_tmp);
                    map_path_tmp.putAll(map_path);
                    path_list.add(map_path_tmp);
                }
            }
            this.getOutParam().put("path_list", path_list);
            //tm还得根据docid拿到初始化tag 用来在新增接口的时候用
            List<TDocTag> tDocTags = swaggerDao.getTag(doc_id);
            this.getOutParam().put("tags", tDocTags);
            setLogicView("interList");
            return RETURN.SUCCESS;
        }
        //编辑接口信息所需要的初始化的东东
        if(oper.equals("find_inter_info")) {
            HashMap map_result = new HashMap();
            HashMap map_basic = new HashMap();
            HashMap map_receive = this.getPageUri();
            map_basic.put("path", map_receive.get("path"));
//            String str = (String) map_receive.get("path_id");
            TDocPathItem tDocPathItem = swaggerDao.getPathItemById(Integer.parseInt((String) map_receive.get("id")));
            map_basic.put("pathInfo", tDocPathItem);
            map_result.put("basic", map_basic);
            List<Integer> path_item_id_list = new ArrayList();
            path_item_id_list.add(Integer.parseInt((String) map_receive.get("id")));
            List<TDocReqParam> tDocReqParams = swaggerDao.getReqParam(path_item_id_list);
            for(int i = 0; i < tDocReqParams.size(); i++) {
                TDocReqParam tDocReqParam = tDocReqParams.get(i);
                if(tDocReqParam.getRefId() != null) {
                    int ref_id = tDocReqParam.getRefId();
                    TDocDefinitions tDocDefinitions = tDocDefinitionsDao.findById(ref_id);
                    tDocReqParam.setUserCode(tDocDefinitions.getUserCode());
                }
            }
            map_result.put("req_info", tDocReqParams);
            List<Integer> path_item_id_list_2 = new ArrayList();
            path_item_id_list_2.add(Integer.parseInt((String) map_receive.get("id")));
            List<TDocRespParam> tDocRespParams = swaggerDao.getRespParam(path_item_id_list_2);
            for(int i = 0; i < tDocRespParams.size(); i++) {
                TDocRespParam tDocRespParam = tDocRespParams.get(i);
                if(tDocRespParam.getRefId() != null) {
                    int ref_id = tDocRespParam.getRefId();
                    TDocDefinitions tDocDefinitions = tDocDefinitionsDao.findById(ref_id);
                    tDocRespParam.setUserCode(tDocDefinitions.getUserCode());
                    // 看看有没有三级属性
                    if(swaggerDao.getOtherInfo(tDocRespParam.getId()).size() != 0) {
                        tDocRespParam.setOtherInfo(swaggerDao.getOtherInfo(tDocRespParam.getId()));
                    }
                }
            }
            map_result.put("res_info", tDocRespParams);

//  当编辑接口的时候我要拿到 当前所有的属于当前文档的tag 这里我用hibernate根据id查找 就是不好使
            List<TDocTag> tDocTags = swaggerDao.getTag(Integer.parseInt((String) map_receive.get("docid")));

            this.getOutParam().put("tags", tDocTags);
            this.getOutParam().put("docid", Integer.parseInt((String) map_receive.get("docid")));
            this.getOutParam().put("path_id", map_receive.get("path_id")); //t_doc_path的id
            this.getOutParam().put("id", map_receive.get("id"));//t_doc_path_item的id
            // 拿到所有的属于此文档的所有自定义数据结构
            List def_init_list = (List) swaggerDao.getUserDefByDocId(Integer.parseInt((String) map_receive.get("docid")));
            this.getOutParam().put("def", def_init_list);

            this.getOutParam().putAll(map_result);
            this.setLogicView("interInfoModify");

            return RETURN.SUCCESS;
        }
        //请求信息修改页面 要初始化的东西
        if(oper.equals("modify_req_init")) {
            HashMap map_receive = this.getPageUri(),
                    map_result = new HashMap();
            TDocReqParam tDocReqParam = tDocReqParamDao.findById(Integer.parseInt((String) map_receive.get("req_id")));
            map_result.put("req_info", tDocReqParam);
            //拿到属于当前文档的所有自定义数据结构
            List def_init_list = (List) swaggerDao.getUserDefByDocId(Integer.parseInt((String) map_receive.get("docid")) );
            this.getOutParam().put("def", def_init_list);
            List<TDocTag> tDocTags = swaggerDao.getTag(Integer.parseInt((String) map_receive.get("docid")));
            this.getOutParam().put("tags", tDocTags);
            this.getOutParam().putAll(map_result);
            this.getOutParam().put("req_id", Integer.parseInt((String) map_receive.get("req_id")));
            this.getOutParam().put("path_item_id", map_receive.get("path_item_id"));
            this.getOutParam().put("docid", Integer.parseInt((String) map_receive.get("docid")));
            this.setLogicView("editReq");
            return RETURN.SUCCESS;
        }

        // 修改请求信息
        if(oper.equals("update_req")) {
            HashMap map_req_info = this.getInParam();
            TDocReqParam tDocReqParam = new TDocReqParam();
            tDocReqParam.setId(Integer.parseInt((String) map_req_info.get("req_id")));
            tDocReqParam.setPathItemId(map_req_info.get("path_item_id") == null ? null : Integer.parseInt((String) map_req_info.get("path_item_id")) );
            tDocReqParam.setName((String) map_req_info.get("name"));
            tDocReqParam.setLocation((String) map_req_info.get("location"));
            tDocReqParam.setDescription((String) map_req_info.get("description"));
            tDocReqParam.setType((String) map_req_info.get("type"));
            tDocReqParam.setMaxLength(map_req_info.get("maxLength").equals("") ? null : Integer.parseInt((String) map_req_info.get("maxLength")));
            tDocReqParam.setMinLength(map_req_info.get("minLength").equals("") ? null : Integer.parseInt((String) map_req_info.get("minLength")));
            tDocReqParam.setValueMax(map_req_info.get("valueMax").equals("")? null : Integer.parseInt((String) map_req_info.get("valueMax")));
            tDocReqParam.setMinValue(map_req_info.get("minValue").equals("") ? null : Integer.parseInt((String) map_req_info.get("minValue")));
            tDocReqParam.setDefa(map_req_info.get("defa").equals("") ? null : (String) map_req_info.get("defa"));
            tDocReqParam.setIsrequired(map_req_info.get("isrequired") == null ? false : true);
            tDocReqParam.setRefId(map_req_info.get("refId") == null || map_req_info.get("refId").equals("") ? null : Integer.parseInt((String) map_req_info.get("refId")));
            tDocReqParam.setIsarr(map_req_info.get("isarr") == null || map_req_info.get("isarr").equals("") || map_req_info.get("isarr").equals("0") ? false : true);

            tDocReqParamDao.merge(tDocReqParam);
            this.getOutParam().put("req_id", tDocReqParam.getId());
            changeInterfaceState(Integer.parseInt((String) map_req_info.get("path_item_id")) );
            changeDocState(Integer.parseInt((String) this.getInParam().get("docid")));
            this.setLogicView("interInfoModify");
            return RETURN.SUCCESS;
        }

        //初始化响应页面
        if(oper.equals("modify_res")) {
            HashMap map_receive = this.getPageUri(),
                    map_result = new HashMap();
            TDocRespParam tDocRespParam = tDocRespParamDao.findById(Integer.parseInt((String) map_receive.get("res_id")));
            map_result.put("res_info", tDocRespParam);
            //拿到属于当前文档的所有自定义数据结构
            List def_init_list = (List) swaggerDao.getUserDefByDocId(Integer.parseInt((String) map_receive.get("docid")) );
            this.getOutParam().put("def", def_init_list);
            List<TDocTag> tDocTags = swaggerDao.getTag(Integer.parseInt((String) map_receive.get("docid")));
            this.getOutParam().put("tags", tDocTags);
            this.getOutParam().putAll(map_result);
            this.getOutParam().put("res_id", Integer.parseInt((String) map_receive.get("res_id")));
            this.getOutParam().put("docid", Integer.parseInt((String) map_receive.get("docid")));
            this.getOutParam().put("path_item_id", map_receive.get("path_item_id"));
            this.setLogicView("editRes");
            return RETURN.SUCCESS;
        }
        //修改响应信息
        if(oper.equals("update_res")) {
            HashMap map_res_info = this.getInParam();
            logger.debug("map_res_info==========="+map_res_info);
            TDocRespParam tDocRespParam = new TDocRespParam();
            tDocRespParam.setId(Integer.parseInt((String) map_res_info.get("res_id")));
            tDocRespParam.setPathItemId(Integer.parseInt((String) map_res_info.get("path_item_id")));
            tDocRespParam.setName( map_res_info.get("name") == null || map_res_info.get("name").equals("") ? null : (String) map_res_info.get("name"));
            tDocRespParam.setDescription(map_res_info.get("description").equals("") ? null : (String) map_res_info.get("description"));
            tDocRespParam.setType((String) map_res_info.get("type"));
            tDocRespParam.setRefId(map_res_info.get("refId") == null || map_res_info.get("refId").equals("") ? null : Integer.parseInt((String) map_res_info.get("refId")));
            tDocRespParam.setIsarr(map_res_info.get("isarr").equals("0") || map_res_info.get("isarr").equals("") ? false : true);
            tDocRespParamDao.merge(tDocRespParam);
            if(map_res_info.get("refId") != null && !map_res_info.get("refId").equals("")) {
                TDocDefinitions tDocDefinitions = tDocDefinitionsDao.findById(Integer.parseInt((String) map_res_info.get("refId")));
                tDocRespParam.setUserCode(tDocDefinitions.getUserCode());
            }
            String [] p_name = null;
            if(map_res_info.get("p_name") instanceof String []) {
                p_name = (String[]) map_res_info.get("p_name");
            } else {
                p_name = new String[1];
                p_name[0] = (String) map_res_info.get("p_name");
            }
            String [] p_arr = null;
            if(map_res_info.get("p_arr") instanceof String []) {
                p_arr = (String[]) map_res_info.get("p_arr");
            } else {
                p_arr = new String[1];
                p_arr[0] = (String) map_res_info.get("p_arr");
            }
            String [] p_ref = null;
            if(map_res_info.get("p_ref") instanceof String []) {
                p_ref = (String[]) map_res_info.get("p_ref");
            } else {
                p_ref = new String[1];
                p_ref[0] = (String) map_res_info.get("p_ref");
            }
            String [] p_desc = null;
            if(map_res_info.get("p_desc") instanceof String []) {
                p_desc = (String[]) map_res_info.get("p_desc");
            } else {
                p_desc = new String[1];
                p_desc[0] = (String) map_res_info.get("p_desc");
            }
            //丫的 这个肯定可以先删除和响应参数相关联的所有三级信息， 然后再插入~
            //删除


            TDocOtherInfoDao tDocOtherInfoDao = (TDocOtherInfoDao) this.getDaoFactory().get("TDocOtherInfoDao");
            List<TDocOtherInfo> tDocOtherInfos = swaggerDao.getOtherInfo(tDocRespParam.getId());
            for(int each = 0; each < tDocOtherInfos.size(); each++) {
                TDocOtherInfo tDocOtherInfo = tDocOtherInfos.get(each);
                tDocOtherInfoDao.delete(tDocOtherInfo);
            }
            for(int cir = 0; cir < p_name.length; cir++) {
                if(p_name.length == 1 && p_name[cir]==null) {
                    break;
                }
                TDocOtherInfo tDocOtherInfo = new TDocOtherInfo();
                tDocOtherInfo.setName(p_name[cir]);
                tDocOtherInfo.setIsArr(p_arr[cir] == null || p_arr[cir].equals("0")? false : true);
                tDocOtherInfo.setRefId(Integer.parseInt(p_ref[cir]));
                if(p_desc[cir] != null && !p_desc[cir].equals("")) {
                    tDocOtherInfo.setDescription(p_desc[cir]);
                } else {
                    tDocOtherInfo.setDescription(p_desc[cir]);
                }
                tDocOtherInfo.setPathItemId(tDocRespParam.getId());
                tDocOtherInfoDao.persist(tDocOtherInfo);
            }
            this.getOutParam().put("res_id", tDocRespParam.getId());
            this.getOutParam().put("res", tDocRespParam);
            changeDocState(Integer.parseInt((String) this.getInParam().get("docid")));
            changeInterfaceState(Integer.parseInt((String) map_res_info.get("path_item_id")));
//            this.setLogicView("interInfo");
            return RETURN.SUCCESS;
        }
        //根据文档id查询出此文档下的所有的数据结构
        if(oper.equals("find_def")) {
            int docid = Integer.parseInt((String) this.getPageUri().get("docid"));
            List<TDocDefinitions> def_list = swaggerDao.getUserDefByDocId(docid);
            this.getOutParam().put("def_list", def_list);
            this.getOutParam().put("docid", docid);
            this.setLogicView("tDocUserDifine");
            return RETURN.SUCCESS;
        }
//        批量删除自定义结构
        if(oper.equals("del_def")) {
            String param = (String) this.getPageUri().get("ids");
            String [] str = param.split(",");
            for(int i = 0; i < str.length; i++) {
                int def_id = Integer.valueOf(str[i]);
                if(swaggerDao.getReqParamByRef(def_id).size() != 0 || swaggerDao.getRespParamByRef(def_id).size() != 0 || swaggerDao.getOtherInfoByDef(def_id).size() != 0) {
                    return new RETURN("deleteError", "已被引用，不能删");
                }
                TDocDefinitions tDocDefinitions = tDocDefinitionsDao.findById(def_id);
                tDocDefinitionsDao.delete(tDocDefinitions);
            }
            return RETURN.SUCCESS;
        }
        //根据结构编码模糊查询自定义数据结构
        if(oper.equals("find_def_by_code")) {
            TDocDefinitions tDocDefinitions = new TDocDefinitions();
            String target = (String) this.getPageUri().get("userCode");
            HashMap map = this.getPageUri();
            int id = Integer.parseInt((String) this.getPageUri().get("docid"));
            int docid = Integer.parseInt((String) this.getPageUri().get("docid"));
            tDocDefinitions.setUserCode(target);
            tDocDefinitions.setDocId(docid);
            List<TDocDefinitions> def_list = swaggerDao.getDefByCode(tDocDefinitions);
            this.getOutParam().put("def_list", def_list);
            this.setLogicView("tDocUserDifine");
            return RETURN.SUCCESS;
        }

        //根据docid查询Tag
        if(oper.equals("find_tag")) {
            int docid = Integer.parseInt((String) this.getPageUri().get("docid"));
            TDocTag tDocTag = new TDocTag();
//            tDocTag.setDocId(docid);
//            List<TDocTag> tDocTags = tDocTagDao.findByExample(tDocTag);
            List<TDocTag> tDocTags = swaggerDao.getTag(docid);
            this.getOutParam().put("tags", tDocTags);
            this.getOutParam().put("docid", docid);
            this.setLogicView("tDocTag");
            return RETURN.SUCCESS;
        }

        //删除用户
        if(oper.equals("del_user")) {
            String param = (String) this.getPageUri().get("ids");
            String [] str = param.split(",");
            for(int i = 0; i < str.length; i++) {
                int req_id = Integer.valueOf(str[i]);
                TDocContact tDocContact = tDocContactDao.findById(req_id);
                tDocContactDao.delete(tDocContact);
            }
            return RETURN.SUCCESS;
        }

        //查询文档信息和联系人信息
        if(oper.equals("getDocAndUser")) {
            List<TDoc> tDocs = tDocDao.findAll();
            List result_list = new ArrayList();
            for(int i = 0; i < tDocs.size(); i++) {
                HashMap map_result = new HashMap();
                TDoc tDoc = tDocs.get(i);
                map_result.put("docId", tDoc.getId());
                map_result.put("host", tDoc.getHost());
                map_result.put("basePath", tDoc.getBasePath());
                map_result.put("createTime", tDoc.getCreateTime());
                map_result.put("updateTime", tDoc.getUpdateTime());
                TDocInfo tDocInfo = tDocInfoDao.findById(tDoc.getInfoId());

                map_result.put("description", tDocInfo.getDescription());
                map_result.put("title",tDocInfo.getTitle());

                TDocContact tDocContact = tDocContactDao.findById(tDocInfo.getContactId());
                map_result.put("contactName", tDocContact.getName());
                result_list.add(map_result);
            }
            List list = tDocContactDao.findAll();
            this.getOutParam().put("contacts", list);
            this.getOutParam().put("list_doc", result_list);
            this.setLogicView("init");
            return RETURN.SUCCESS;
        }

        //根据模块名称和开发者条件查询DocAndUser
        if(oper.equals("DocAndUser")) {
            HashMap param = new HashMap();
            param.put("name", (String) this.getPageUri().get("develName"));
            param.put("title", (String) this.getPageUri().get("modalName"));
            List list = tDocContactDao.findAll();
            this.getOutParam().put("list_doc", swaggerDao.findMain(param));
            this.getOutParam().put("contacts", list);
            this.getOutParam().putAll(this.getPageUri());
            this.setLogicView("init");
            return RETURN.SUCCESS;

        }
        if(oper.equals("create")) {

            int id = Integer.parseInt((String) this.getPageUri().get("docid"));
            TDoc tDoc = tDocDao.findById(Integer.parseInt((String) this.getPageUri().get("docid")));
            TDocInfo tDocInfo = tDocInfoDao.findById(tDoc.getInfoId());
            // 处理生成的json接口文档
            //分类按照项目分类
            String classify = "gudaomai";
            if (classify == null || classify.isEmpty()) {
                classify = "default";
            }

            String path = servletContext.getRealPath("interface_dir/" + classify ) + separator;

            logger.debug("path=====" + path);

            File dir = new File(path);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            String file_name = String.format("%04d", tDoc.getId()) + ".json";
            logger.debug("file_name ==> " + file_name);

            //获取生成结果
            HttpClient httpClient = new HttpClient();
            HashMap map_param = new HashMap();
            String url = "http://idoc.hearglobal.com/swagger/swagger?&res=json&id=" + id;
            HashMap map_create = httpClient.postForObject(url, map_param);
            String s= JSON.toJSONString(map_create);
            //写入json串到指定文件
            File file = new File(path + file_name);
//            if(file.createNewFile()) {
//                Runtime.getRuntime().exec("chmod o+w /app/idoc/interface_dir/gudaomai/" + file_name);
//            }
            FileOutputStream os = new FileOutputStream(file);
            HashMap result = (HashMap)map_create.get("result");
            HashMap dataSet = (HashMap) result.get("dataSet");
            String jsonStr = (String) dataSet.get("result");
            logger.debug(jsonStr);
            os.write(jsonStr.getBytes());
            os.close();
            //获取资源定位路径
//            String URL = "local.hearglobal.com/interface_dir/" + classify +"/" + file.getName();
//            logger.debug("URL ==> " + URL);
            this.getOutParam().put("create", file.getName());
            return RETURN.SUCCESS;
        }

        //对首页做映射 根据所要编辑的文档进入相应的管理端
        if(oper.equals("reflect")) {
            HashMap map_receive = this.getPageUri();
            this.getOutParam().put("docid", map_receive.get("docid"));
            this.setLogicView("reflect_index");
            return RETURN.SUCCESS;
        }

        //逆向生成自定义数据结构
        if(oper.equals("getJson")) {

            String table_name = (String) this.getInParam().get("name");
            //判断输入框是否为空字符串
            if(table_name.equals("")) {
                return new RETURN("400", "请输入表名");
            }
            String flag = (String) this.getInParam().get("style");
            boolean style = flag.equals("1") ? true:false;
            HashMap str = new manifest().josnFormTable(table_name, style);
            if(str.size() == 0) {
                return new RETURN("404", "表名错误!");
            }
            String jsonStr = JSON.toJSONString(str, true);
            this.getOutParam().put("json", jsonStr);
            this.setLogicView("datasource");
            return RETURN.SUCCESS;
        }

        //获取当前数据库的所有表名
        if(oper.equals("getTable")) {
            List table_list = new ArrayList();
            File file = new File("WEB-INF/swagger/dataSource.html");
            BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(file),"GB2312"));
            String line = null;
            while((line = in.readLine()) != null) {
                while(line.indexOf("drop table if exists") != -1) {
                    int loc = line.lastIndexOf(' ');
                    String tmp = line.substring(loc);
                    table_list.add(tmp.substring(0,tmp.length() - 1));
                    //System.out.println(tmp.substring(0,tmp.length() - 1));
                    line = in.readLine();
                }
            }
            this.getOutParam().put("table_list", table_list);
            this.setLogicView("dataSource");
            return RETURN.SUCCESS;
        }

        //获取当前文档的基本信息
        if(oper.equals("doc")) {
            if(this.getPageUri().get("docid") != null && !((String)this.getPageUri().get("docid")).equals("")) {
                TDoc tDoc = tDocDao.findById(Integer.parseInt((String) this.getPageUri().get("docid")));
                int tDocId = tDoc.getInfoId();
                TDocInfo tDocInfo = tDocInfoDao.findById(tDocId);
                TDocContact tDocContact = tDocContactDao.findById(tDocInfo.getContactId());
                this.getOutParam().put("contact", tDocContact);
                this.getOutParam().put("docInfo", tDocInfo);
                this.getOutParam().put("doc", tDoc);
            }
            List<TDocContact> tDocContacts = tDocContactDao.findAll();
            this.getOutParam().put("contacts", tDocContacts);
            this.setLogicView("tDoc");
            return RETURN.SUCCESS;
        }
        //获取当前文档的详细信息
        if(oper.equals("doc_detail")) {

        }
        return RETURN.SUCCESS;
    }

    public void changeDocState(int docid) {
        TDocDao tDocDao = (TDocDao) this.getDaoFactory().get("TDocDao");
        TDoc tDoc = tDocDao.findById(docid);
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(new Date());
        tDoc.setUpdateTime(time);
        tDocDao.merge(tDoc);
    }

    public void changeInterfaceState(int path_item_id) {
        TDocPathItemDao tDocPathItemDao = (TDocPathItemDao) this.getDaoFactory().get("TDocPathItemDao");
        TDocPathItem tDocPathItem = tDocPathItemDao.findById(path_item_id);
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(new Date());
        tDocPathItem.setUpdateTime(time);
        tDocPathItemDao.merge(tDocPathItem);
    }
    @Override
    public RETURN init() throws Exception {
        this.setLogicView("tDocInfo");
        return RETURN.SUCCESS;
    }

    @Override
    public RETURN query() throws Exception {
        String oper = null;
        if(this.getInParam().get("oper") == null) {
            oper = (String) this.getPageUri().get("oper");
        } else {
            oper = (String) this.getInParam().get("oper");
        }

        if(oper.equals("cbam_1")) {
            this.getOutParam().put("docid", this.getPageUri().get("docid"));
            this.setLogicView("reflect_index");
            return RETURN.SUCCESS;
        }
        if(oper.equals("cbam_2")) {
            this.setLogicView("tDocContact");
            return RETURN.SUCCESS;
        }
        if(oper.equals("cbam_3")) {
            this.setLogicView("tDocDefine");
            return RETURN.SUCCESS;
        }
        if(oper.equals("cbam_4")) {
            this.setLogicView("inter");
            return RETURN.SUCCESS;
        }
        if(oper.equals("cbam_5")) {
            this.setLogicView("interList");
            return RETURN.SUCCESS;
        }
        if(oper.equals("cbam_6")) {
            this.setLogicView("datasource");
            return RETURN.SUCCESS;
        }
        return RETURN.SUCCESS;
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }


}
