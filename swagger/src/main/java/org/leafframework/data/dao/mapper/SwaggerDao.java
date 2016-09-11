package org.leafframework.data.dao.mapper;

import org.leafframework.data.dao.IDao;
import org.leafframework.data.dao.orm.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Handler;

/**
 * Created by ly on 2016/6/30.
 */
public interface SwaggerDao extends IDao {
    public List<TDocPath> getPath(int docId);   //根据文档id 获取接口路径
    public List<TDocPathItem> getPathItem(List list);   // 根据接口路径的ids 找出所有路径详情表
    public List<TDocReqParam> getReqParam(List list);   // 根据所有路径详情表 找出所有的请求参数
    public List<TDocTag> getTag(int docId);                   //根据文档id获取 文档外部tag
    public List<TDocRespParam> getRespParam(List list); //根据所有路径详情表 找出所有的响应
    public TDocDefinitions getUserDefine(int refId);
    public List<TDocDefinitions> getUserDefByDocId(int refId);
    public List<TDocOtherInfo> getOtherInfo(int id);
    public TDocPathItem getPathItemById(int id);
    public List<TDocDefinitions> getDefByCode(TDocDefinitions tDocDefinitions);
    public HashMap getCreateTableInfo(String str);
    public List<TDocInfo> getDocInfo(int docid);
    public void insertTag(TDocTag tDocTag);
    public void updateTag(TDocTag tDocTag);
    public List<TDocPathItem> getPathItemByTagIds(Map map);
    public List<TDocReqParam>getReqParamByRef(int refId);
    public List<TDocRespParam>getRespParamByRef(int refId);
    public List<Map>findMain(Map map);
    public List<TDocOtherInfo>getOtherInfoByDef(int refId);
}
