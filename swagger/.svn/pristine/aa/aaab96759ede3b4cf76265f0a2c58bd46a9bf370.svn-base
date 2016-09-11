<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商品发布</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link href="http://g.hearglobal.com/resources/css/H-ui.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet">

    <style type="text/css">
        #wrap{
            width:710px;
            height: 650px;
            background-color: #F7F7F7 ;
            z-index: 0;
            text-align: center;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="page-container">
    <div id ="wrap"  class="panel panel-default">
        <div class="panel-header">基本信息</div>
        <div class="panel-body">

            <form action="${contextPath}/swagger/tty1?mt=2&res=json" method="post" class="form form-horizontal" id="goods-form">
                <legend>接口文档的基本信息</legend>
                <input type="hidden" name="oper" value="update_doc_info">
                <input type="hidden" name="docid" value="${result.dataSet.doc.id}">
                <input type="hidden" name="info_id" value="${result.dataSet.doc.infoId}">
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">文档名称：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="2~16个字符，字母/中文/数字/下划线" name="title" id="title" value="${result.dataSet.docInfo.title}">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">所属项目：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="2~16个字符，字母/中文/数字/下划线" name="project" id="project" value="贵州鼓岛买" readonly="readonly">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">访问主机：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" name="host" class="input-text" autocomplete="off" placeholder="url" value="${result.dataSet.doc.host}">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">基路径：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <%--<input type="text" class="input-text" placeholder="/" name="basePath" id="basePath" value="${result.dataSet.doc.basePath}" readonly="readonly">--%>
                            <input type="text" class="input-text" name="basePath" id="basePath" value="/" readonly="readonly">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">作者 ：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                            <span class="select-box">
                                  <select class="select" size="1" name="userId">
                                      <c:forEach var="item"  items="${result.dataSet.contacts}">
                                          <c:choose>
                                              <c:when test="${result.dataSet.contact.name==item.name}">
                                                  <option value="${result.dataSet.contact.id}" selected>${item.name}</option>
                                              </c:when>
                                              <c:otherwise>
                                                  <option value="${item.id}">${item.name}</option>
                                              </c:otherwise>
                                          </c:choose>
                                      </c:forEach>
                                  </select>
                            </span><br>
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">应用层协议：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="schemes">
                                        <c:choose>
                                            <c:when test="${result.dataSet.doc.schemes=='http'}">
                                                <option value="http" selected>http</option>
                                                <option value="https">https</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="http">http</option>
                                                <option value="https"selected>https</option>
                                            </c:otherwise>
                                        </c:choose>

									</select>
                        </span>
                    </div>
                </div>


                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">文档版本 ：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="1.0" name="version" id="version"value="${result.dataSet.docInfo.version}">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">Swagger版本：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="/" name="swagger" id="swagger" value="2.0" readonly="readonly">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">外部文档：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" name="externalDoc" id="externalDoc" value="${result.dataSet.doc.externalDoc}" readonly="readonly">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">模块描述：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea class="textarea"  placeholder="说点什么...最少输入10个字符" name="description" onKeyUp="$.Huitextarealength(this,500)">${result.dataSet.docInfo.description}</textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                    </div>
                </div>

                <div class="row cl">
                    <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                        <input class="btn btn-primary" type="submit" value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/js/H-ui.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/ueditor.all.js"> </script>

<!--手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖配置项目里添加的语言类型-->
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.min.js"> </script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/webuploader/uploadImage.js"> </script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/layer/2.2/layer.js"></script>

<script type="text/javascript">
    var ue = UE.getEditor('contentEditor', {serverUrl: "http://multi.hearglobal.com/multi/uploadPic?mt=2&res=json"});


    /*前端表单校验*/
    $("#goods-form").validate({
        rules:{
            host:{
                required:true,
                maxlength:100
            },
            title:{
                required: true
            },
            description:{
                required: true
            }
        },
        messages:{
            username:{
                required: "名称不能为空",
                maxlength: "名称最大长度为50个字"
            }
        },

        submitHandler:function(form){

            $.ajax({
                url:$("#goods-form").attr("action"),
                type:"POST",
                dataType: "json",
                data:$("#goods-form").serialize(),
                async: true,
                success: function(data) {

                    var json = eval(data); //数组

                    if( json.result.header.errorCode=="00000" ){
                        layer.msg('提交成功');
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