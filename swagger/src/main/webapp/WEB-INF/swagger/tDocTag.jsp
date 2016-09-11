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
            width:810px;
            height: 888px;
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
        <div class="panel-header">Tag管理页面</div>
        <form action="${contextPath}/swagger/tty1?mt=2&res=json" method="post" class="form form-horizontal" id="tag-info">

        <div class="panel-body">
            <div class="row cl">
                <div class="form-label col-xs-3 col-sm-2"><a _href="javascript:;" data-title="添加Tag" onClick="add_attribute(this);" class="btn btn-primary size-L radius"><i class="Hui-iconfont">&#xe600;</i> 添加Tag</a></div>
            </div>
            <div class="row cl">

            </div>

                    <input type="hidden" name="oper" value="addtag">
                     <input type="hidden" name="docid" value="${result.dataSet.docid}">
                    <legend>Tag就是对当前模块下的接口再分组</legend>
                    <div id="attributeDIV">
                        <c:forEach var="tag" items="${result.dataSet.tags}">

                            <div class="row cl">

                                <div class="form-label col-xs-3 col-sm-2"><input type="text"   class="input-text" name="name" style="width:auto; margin-left: 30px" placeholder="标签名称" value="${tag.name}"/></div>
                                <div class="formControls col-xs-9 col-sm-9">
                                    <%--<input type="text"  class="input-text" name="name" style="width:200px;" value="${tag.name}"/>--%>
                                    <input type="text"  class="input-text" name="desc" style="width: 200px" value="${tag.description}"/>
                                        <input name="tagId" value="${tag.id}" type="hidden">
                                    <a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right">
                                        <i class="Hui-iconfont">&#xe6e2;</i> 删除参数</a>

                                </div>
                                <div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div>
                            </div>
                        </c:forEach>
                    </div><br><br>
                    <input style="" class="btn btn-success radius size-L radius" type="submit" value="保存"> </div>

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

    function add_attribute(){
        var processHtml='';
        var $processDIV = $("#attributeDIV");
        processHtml=processHtml+'<div class="row cl">';
        processHtml=processHtml+'<input name="tagId" value="" type="hidden">'
        processHtml=processHtml+    '<div class="form-label col-xs-3 col-sm-2"><input type="text"  class="input-text" name="name" style="width:auto; margin-left: 30px" placeholder="标签名称"/></div>';
        processHtml=processHtml+    '<div class="formControls col-xs-9 col-sm-9">';
        processHtml=processHtml+            '<input type="text"  class="input-text" name="desc" style="width:200px;" placeholder="标签描述"/>';
        processHtml=processHtml+                '<a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right"><i class="Hui-iconfont">&#xe6e2;</i> 删除参数</a>';
        processHtml=processHtml+    '</div>';
        processHtml=processHtml+    '<div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div>';
        processHtml=processHtml+'</div>';

        $processDIV.prepend(processHtml);

    }

    function del_attribute(i){
        i.parentNode.removeChild(i);
    }
    /*前端表单校验*/
    $("#tag-info").validate({
        rules:{
                name:{
                    required:true,
                    maxlength:10
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
                url:$("#tag-info").attr("action"),
                type:"POST",
                dataType: "json",
                data:$("#tag-info").serialize(),
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