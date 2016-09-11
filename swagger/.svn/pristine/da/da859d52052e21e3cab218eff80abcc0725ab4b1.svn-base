<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/26
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
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
            name:{
                required:true,
                maxlength:100
            },
            shopPrice:{
                required: true
            },
            costPrice:{
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