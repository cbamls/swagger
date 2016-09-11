<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/25
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>请求信息修改</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link href="http://g.hearglobal.com/resources//css/H-ui.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources//css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources//lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources//lib/webuploader/0.1.5/webuploader.css" rel="stylesheet">

    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">

</head>
<body>
<div class="page-container">
        <form action="${contextPath}/swagger/tty1?mt=2&oper=update_req&res=json" method="post" class="form form-horizontal" id="t-req">
            <legend>在这里我们可以修改我们的请求信息</legend>
            <input type="hidden" name="req_id" value="${result.dataSet.req_id}">
            <input type="hidden" name="path_item_id" value="${result.dataSet.path_item_id}">
            <input type="hidden" name="docid" value="${result.dataSet.docid}">
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">名称：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="name" value="${result.dataSet.req_info.name}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">参数位置：</label>
                <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
                               <select id="change" class="select" size="1" name="location" onchange="state_modify()">
                                   <c:choose>
                                       <c:when test="${result.dataSet.req_info.location=='query'}">
                                           <option value="query" selected>query</option>
                                           <option value="path">path</option>
                                           <option value="formData">formData</option>
                                           <option value="body">body</option>
                                           <option value="header">header</option>
                                       </c:when>
                                       <c:when test="${result.dataSet.req_info.location=='path'}">
                                           <option value="query">query</option>
                                           <option value="path" selected>path</option>
                                           <option value="formData">formData</option>
                                           <option value="body">body</option>
                                           <option value="header">header</option>
                                       </c:when>
                                       <c:when test="${result.dataSet.req_info.location=='formData'}">
                                           <option value="query">query</option>
                                           <option value="path">path</option>
                                           <option value="formData" selected>formData</option>
                                           <option value="body">body</option>
                                           <option value="header">header</option>
                                       </c:when>
                                       <c:when test="${result.dataSet.req_info.location=='body'}">
                                           <option value="query" >query</option>
                                           <option value="path">path</option>
                                           <option value="formData">formData</option>
                                           <option value="body" selected>body</option>
                                           <option value="header">header</option>
                                       </c:when>
                                       <c:when test="${result.dataSet.req_info.location=='header'}">
                                           <option value="query" >query</option>
                                           <option value="path">path</option>
                                           <option value="formData">formData</option>
                                           <option value="body">body</option>
                                           <option value="header"selected>header</option>
                                       </c:when>
                                       <c:otherwise>
                                           <option value="cookies" selected>cookies</option>
                                           <option value="query" >query</option>
                                           <option value="path">path</option>
                                           <option value="formData">formData</option>
                                           <option value="body">body</option>
                                           <option value="header">header</option>
                                       </c:otherwise>
                                   </c:choose>
                               </select>
                        </span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">参数类型：</label>
                <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="type">
									   <c:choose>
                                           <c:when test="${result.dataSet.req_info.type=='string'}">
                                               <option value="string" selected>string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='string'}">
                                               <option value="string" selected>string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='boolean'}">
                                           <option value="string" >string</option>
                                           <option value="boolean"selected>boolean</option>
                                           <option value="int">int</option>
                                           <option value="long">long</option>
                                           <option value="float">float</option>
                                           <option value="decimal">decimal</option>
                                           <option value="file">file</option>
                                           <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='int'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int"selected>int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='long'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long"selected>long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='float'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float"selected>float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='decimal'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal"selected>decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${result.dataSet.req_info.type=='file'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file"selected>file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:otherwise>
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref"selected>$ref</option>
                                           </c:otherwise>
                                       </c:choose>
									</select>
                        </span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">自定义结构：</label>
                <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select id="target" class="select" size="1" name="refId">
                                        <option value="" selected>请选择</option>
										 <c:forEach var="ref" items="${result.dataSet.def}">
                                             <c:choose>
                                                 <c:when test="${ref.id==result.dataSet.req_info.refId}">
                                                     <option value="${ref.id}" selected>${ref.userCode}</option>
                                                 </c:when>
                                                 <c:otherwise>
                                                     <option value="${ref.id}">${ref.userCode}</option>
                                                 </c:otherwise>
                                             </c:choose>
                                         </c:forEach>
									</select>
                        </span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">是否必填：</label>
                <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="isrequired">
                                        <c:choose>
                                            <c:when test="${result.dataSet.req_info.isrequired=='0'}">
                                                <option value="0" selected>否</option>
                                                <option value="1">是</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="0" >否</option>
                                                <option value="1"selected>是</option>
                                            </c:otherwise>
                                        </c:choose>
									</select>
                        </span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">是否数组：</label>
                <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="isarr">
                                        <c:choose>
                                            <c:when test="${result.dataSet.req_info.isarr=='0'}">
                                                <option value="0" selected>否</option>
                                                <option value="1">是</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="0" >否</option>
                                                <option value="1"selected>是</option>
                                            </c:otherwise>
                                        </c:choose>
									</select>
                        </span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">最大值:</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="valueMax" value="${result.dataSet.req_info.valueMax}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">最小值：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="minValue" value="${result.dataSet.req_info.minValue}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">最大长度：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="maxLength" value="${result.dataSet.req_info.maxLength}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">最小长度：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="minLength" value="${result.dataSet.req_info.minLength}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">默认值：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" name="defa" value="${result.dataSet.req_info.defa}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3">接口描述：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <textarea class="textarea"  placeholder="说点什么...最少输入10个字符" name="description" onKeyUp="$.Huitextarealength(this,500)">${result.dataSet.req_info.description}</textarea>
                    <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                </div>
            </div>
            <div class="row cl">
                <div class="col-xs-9 col-sm-10 col-xs-offset-3 col-sm-offset-2">
                    <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="submitT">
                    <input class="btn btn-secondary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;">
                </div>
            </div>
        </form>
</div>

<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//js/H-ui.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/jquery.validation/1.14.0/messages_zh.min.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/ueditor/1.4.3/ueditor.all.js"> </script>

<!--手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖配置项目里添加的语言类型-->
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/webuploader/0.1.5/webuploader.min.js"> </script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/webuploader/uploadImage.js"> </script>
<script type="text/javascript" src="http://g.hearglobal.com/resources//lib/layer/2.2/layer.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>


<script type="text/javascript">
    function state_change() {
        var target_type = document.getElementById("change").value;
        if(target_type == "query" || target_type == "body") {
            document.getElementById("target").disabled=false;
        } else {
            document.getElementById("target").disabled=true;
        }
    }
    $(function(){
        $('.icheck input').iCheck({
            checkboxClass: 'icheckbox-blue',
            increaseArea: '20%'
        });
    });

    var ue = UE.getEditor('contentEditor', {serverUrl: "http://multi.hearglobal.com/multi/uploadPic?mt=2&res=json"});

    /*前端表单校验*/
    $("#t-req").validate({
        rules:{
            name:{
                required:true,
                maxlength:100
            }
        },
        messages:{
            name:{
                required: "名称不能为空",
                maxlength: "名称最大长度为50个字"
            }
        },

        submitHandler:function(form){

            $.ajax({
                url:$("#t-req").attr("action"),
                type:"POST",
                dataType: "json",
                data:$("#t-req").serialize(),
                async: true,
                success: function(data) {
                    var json = eval(data); //数组
                    console.log(data.result.header.errorCode)
                    if( json.result.header.errorCode=="00000" ){
                        layer.msg('修改成功');
                    }else{
                        layer.alert('发生错误:'+json.result.header.errorMsg, {
                            skin: 'layui-layer-lan'
                            ,closeBtn: 0
                            ,shift: 4 //动画类型
                        });
                    }

                },error: function(XMLHttpRequest,textStatus,errorThrown,data) {
                    layer.msg("error:"+errorThrown+"   "+"textStatus:"+textStatus);

                }
            });


        }
    });

    function formReset(obj){
        //重置上传图片预览
        $('#fileList').html("");
        //重置编辑器内容
        ue.execCommand('cleardoc');
    }

    function checkPicType(){
        if( document.getElementById("subType").value=="-1" ){
            layer.msg('请选择要上传的图片类型');
            return false;
        }
    }

</script>
</body>
</html>