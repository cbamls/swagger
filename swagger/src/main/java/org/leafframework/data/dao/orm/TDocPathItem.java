package org.leafframework.data.dao.orm;
// Generated 2016-7-24 17:04:36 by Hibernate Tools 4.3.1



/**
 * TDocPathItem generated by hbm2java
 */
public class TDocPathItem  implements java.io.Serializable {


     private Integer id;
     private int pathId;
     private String protocol;
     private String tagIds;
     private String summary;
     private String description;
     private String operation;
     private String consumes;
     private String produces;
     private String appProtocol;
     private String createTime;
     private String updateTime;
     private String interCode;

    public TDocPathItem() {
    }

	
    public TDocPathItem(int pathId, String description) {
        this.pathId = pathId;
        this.description = description;
    }
    public TDocPathItem(int pathId, String protocol, String tagIds, String summary, String description, String operation, String consumes, String produces, String appProtocol, String createTime, String updateTime, String interCode) {
       this.pathId = pathId;
       this.protocol = protocol;
       this.tagIds = tagIds;
       this.summary = summary;
       this.description = description;
       this.operation = operation;
       this.consumes = consumes;
       this.produces = produces;
       this.appProtocol = appProtocol;
       this.createTime = createTime;
       this.updateTime = updateTime;
       this.interCode = interCode;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public int getPathId() {
        return this.pathId;
    }
    
    public void setPathId(int pathId) {
        this.pathId = pathId;
    }
    public String getProtocol() {
        return this.protocol;
    }
    
    public void setProtocol(String protocol) {
        this.protocol = protocol;
    }
    public String getTagIds() {
        return this.tagIds;
    }
    
    public void setTagIds(String tagIds) {
        this.tagIds = tagIds;
    }
    public String getSummary() {
        return this.summary;
    }
    
    public void setSummary(String summary) {
        this.summary = summary;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getOperation() {
        return this.operation;
    }
    
    public void setOperation(String operation) {
        this.operation = operation;
    }
    public String getConsumes() {
        return this.consumes;
    }
    
    public void setConsumes(String consumes) {
        this.consumes = consumes;
    }
    public String getProduces() {
        return this.produces;
    }
    
    public void setProduces(String produces) {
        this.produces = produces;
    }
    public String getAppProtocol() {
        return this.appProtocol;
    }
    
    public void setAppProtocol(String appProtocol) {
        this.appProtocol = appProtocol;
    }
    public String getCreateTime() {
        return this.createTime;
    }
    
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
    public String getUpdateTime() {
        return this.updateTime;
    }
    
    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
    public String getInterCode() {
        return this.interCode;
    }
    
    public void setInterCode(String interCode) {
        this.interCode = interCode;
    }




}


