<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/22
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <LINK rel="Bookmark" href="/favicon.ico" >
    <LINK rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script src="http://g.hearglobal.com/resources/lib/html5.js"></script>
    <script src="http://g.hearglobal.com/resources/lib/respond.min.js"></script>
    <script src="http://g.hearglobal.com/resources/lib/PIE_IE678.js"></script>
    <![endif]-->
    <link href="http://g.hearglobal.com/resources/css/H-ui.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet">

    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">

    <!--[if IE 6]>
    <script type="text/javascript" src="http://g.hearglobal.com/resources/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>饭店列表</title>

    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">

    <style type="text/css">
        .btn-upload{position: relative; display:inline-block;height:36px; *display:inline;overflow:hidden;vertical-align:middle;cursor:pointer}
        .upload-url{cursor: pointer}
        .input-file{position:absolute; right:0; top:0; cursor: pointer; z-index:1; font-size:30em; *font-size:30px;opacity:0;filter: alpha(opacity=0)}
        .btn-upload .input-text{ width:auto;}
        .form-group .upload-btn{ margin-left:-1px}
    </style>
    <style type="text/css">
        .modal-open{overflow:hidden}/*当弹出层出现时，隐藏body右侧滚动条*/
        .page-overflow{margin-right:16px}/*隐藏body滚动条时，页面偏移*/
        .modal-scrollable{position:fixed;top:0;right:0;bottom:0;left:0;overflow: auto}/*弹出层的最外层，全屏，用户响应点击和滚动*/
        .modal-overflow .modal-scrollable{overflow-y:scroll}/*弹窗超出屏幕高度时，弹出层替代body右侧滚动条，实现弹出层的整体滚动*/
        .modal-backdrop {position:fixed;top:0;right:0;bottom:0;left:0;width:100%;height:100%;z-index:1040;background-color:#000}/*默认遮罩层，全屏黑色*/
        * html .modal-backdrop{position:absolute;left:expression(documentElement.scrollLeft + documentElement.clientWidth - this.offsetWidth);top:expression(documentElement.scrollTop + documentElement.clientHeight - this.offsetHeight)}/*解决IE下 遮罩层兼容性*/
        .modal-backdrop.fade {opacity:0;filter: alpha(opacity=0)}/*遮罩层失去时，透明度为0*/
        .modal-backdrop,.modal-backdrop.fade.in {opacity: 0.7;filter: alpha(opacity=70)}/*遮罩层进入 0.7透明度*/

        .modal.container{width: 980px}/*满页面宽度*/
        .modal {position:absolute;top:50%;left:50%; width:500px;margin-left:-250px;z-index:1050;overflow: visible;background-color: #fff;background-clip: padding-box;
            box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
            -webkit-background-clip:padding-box;
            -khtml-background-clip:padding-box;
            -moz-background-clip:padding-box;
            -ms-background-clip:padding-box;
            -o-background-clip:padding-box;
            background-clip:padding-box;
            border-radius:6px;
            border:1px solid rgba(0, 0, 0, 0.3);*border:1px solid #999}/*弹出层，绝对定位，默认【宽度500px，高度自适应，背景白色，6px圆角，带阴影】，自定义宽度可在data-width中设置参数*/
        .fade {opacity: 0;filter: alpha(opacity=0);-webkit-transition: opacity 0.2s linear;-moz-transition: opacity 0.2s linear;-o-transition: opacity 0.2s linear;transition: opacity 0.2s linear}
        .fade.in {opacity: 1;filter: alpha(opacity=100)}
        .modal.fade {top: -100%}/*弹出层进入动画效果*/
        .modal.fade.in{top:50%}/*弹出层进入后居顶距离，配合margin-top负值，实现上下自动居中*/
        .modal.modal-overflow.fade.in{top:0px}/*如果弹出层高度大于窗口，弹出窗口距顶0像素*/
        .loading-spinner {position: absolute;top: 50%;left: 50%;margin: -12px 0 0 -12px}/*Ajax加载数据时loading*/
        /*弹出层header区*/
        .modal-header {padding: 9px 15px;border-bottom: 1px solid #eee; position:relative}/*弹出层头部*/
        .modal-header .close{position:absolute; right:10px; top:10px}/*关闭按钮，请调用4.1.1 按钮 .close*/
        .modal-header h3{margin:0}/*标题*/
        .modal-body {overflow-y:visible;padding: 15px} /*内容不限高度，内填充15px，不满意可自行修改*/
        .modal-form {margin-bottom: 0} /*弹出层表单*/
        /*弹出层footer区，放按钮*/
        .modal-footer {padding: 14px 15px 15px;margin-bottom: 0;text-align: right;background-color: #f5f5f5;border-top: 1px solid #ddd;*zoom: 1;border-radius: 0 0 6px 6px;box-shadow: inset 0 1px 0 #fff}
        .modal-footer:before,.modal-footer:after {display: table;content: ""}
        .modal-footer:after {clear: both}
        .modal-footer .btn + .btn {margin-left: 5px;margin-bottom: 0}
        .modal-footer .btn-group .btn + .btn {margin-left: -1px}
    </style>

</head>
<body>


<div class="page-container">

    <div style="margin: 0 auto;display: inline-block" >
        <form id="search-form" class="text-l" method="post" action="${contextPath}/swagger/tty1?&res=json">
            <input type="hidden" name="mt" value="2"/>
            <input type="hidden" name="oper" value="getJson"/>
            <input type="hidden" name="style" value="0"/>

            下划线字段
            <input type="text" value="" name="name" id="name" class="input-text radius size-M" style="width: 100px" placeholder="名称" value="${result.dataSet.searchName}">

            <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;导出&nbsp;&nbsp;"
                   id="submitT2">
        </form>
    </div>    <div style="margin: 0 auto;display: inline-block" >

<form id="search-form2" class="text-l" method="post" action="${contextPath}/swagger/tty1?&res=json">
                <input type="hidden" name="mt" value="2"/>
                <input type="hidden" name="oper" value="getJson"/>
                 <input type="hidden" name="style" value="1"/>

    驼峰字段
            <input type="text" value="" name="name" id="" class="input-text radius size-M" style="width: 100px" placeholder="名称" value="${result.dataSet.searchName}">

            <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;导出&nbsp;&nbsp;"
                   >
        </form>
</div>
    <br>
    <hr>
    <br>
    <div>
    <pre id="pre-id">
        ${result.dataSet.json}
    </pre>
        <div id="pagination" class="text-c padding-top-10"></div>
    </div>
</div>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/js/H-ui.js"></script>

<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/ueditor.all.js"></script>

<!--手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖配置项目里添加的语言类型-->
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/webuploader/uploadImage.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/layer/2.2/layer.js"></script>


<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modal.js"></script>

<script type="text/javascript">

    /*前端表单校验*/
    $("#search-form").validate({
        rules: {
            name: {
                required: true,
                maxlength: 100
            }

        },
        messages: {
            name: {
                required: "表名不能为空",
                maxlength: "表名最大长度为50个字"
            }
        },

        submitHandler: function (form) {
            $.ajax({
                url: $("#search-form").attr("action"),
                type: "post",
                dataType: "json",
                data: $("#search-form").serialize(),
                async: true,
                success: function (data) {
                    console.log(data.result.header.errorCode)
                    var json = eval(data); //数组

                    if (json.result.header.errorCode == "00000") {
                        layer.msg('生成成功');
                        var pre = document.getElementById("pre-id");
                        var text = document.createTextNode(json.result.dataSet.json);
                        pre.appendChild(text);
                    } else {
                        layer.alert('发生错误:' + json.result.header.errorMsg, {
                            skin: 'layui-layer-lan'
                            , closeBtn: 0
                            , shift: 4 //动画类型
                        });
                    }

                }, error: function (XMLHttpRequest, textStatus, errorThrown, data) {
                    layer.msg("error:" + errorThrown + "   " + "textStatus:" + textStatus);

                }
            });


        }
    });
    /*前端表单校验*/
    $("#search-form2").validate({
        rules: {
            name: {
                required: true,
                maxlength: 100
            }

        },
        messages: {
            name: {
                required: "表名不能为空",
                maxlength: "表名最大长度为50个字"
            }
        },

        submitHandler: function (form) {
            $.ajax({
                url: $("#search-form2").attr("action"),
                type: "post",
                dataType: "json",
                data: $("#search-form2").serialize(),
                async: true,
                success: function (data) {
                    console.log(data.result.header.errorCode)
                    var json = eval(data); //数组

                    if (json.result.header.errorCode == "00000") {
                        layer.msg('生成成功');
                        var pre = document.getElementById("pre-id");
                        var text = document.createTextNode(json.result.dataSet.json);
                        pre.appendChild(text);
                    } else {
                        layer.alert('发生错误:' + json.result.header.errorMsg, {
                            skin: 'layui-layer-lan'
                            , closeBtn: 0
                            , shift: 4 //动画类型
                        });
                    }

                }, error: function (XMLHttpRequest, textStatus, errorThrown, data) {
                    layer.msg("error:" + errorThrown + "   " + "textStatus:" + textStatus);

                }
            });


        }
    });
</script>
</body>
</html>

