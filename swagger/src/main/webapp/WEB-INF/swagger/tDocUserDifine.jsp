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
    <script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>

    <link href="http://g.hearglobal.com/resources/css/H-ui.min.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/skin/default/skin.css" rel="stylesheet" id="skin">
    <link href="http://g.hearglobal.com/resources/css/style.css" rel="stylesheet">
    <!--[if IE 6]>
    <script type="text/javascript" src="http://g.hearglobal.com/resources/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>当前分类</title>
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
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <h3 id="myModalLabel">编辑数据结构</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
        </div>
        <div class="modal-body">
            <p>把生成的 json串 添加到这里,比如我要返回一个主表的的信息，可以在生成数据菜单中根据表名导出主表json。结构名称是给这个自定义的结构起个名字方便引用</p>
            <form action="${contextPath}/swagger/tty1?mt=2&oper=add_define" method="post" class="form form-horizontal" id="tag-form">
                <legend>编辑</legend>
                <input type="hidden" name="docid" id="docid" value="${result.dataSet.docid}">
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">结构名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input id="tag_name" type="text" name="userCode" value="" class="input-text" autocomplete="off" placeholder="就是给 你的数据结构起个名">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">自定义内容：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea id="tag_def" class="textarea"  placeholder="json串" name="json" onKeyUp="$.Huitextarealength(this,10000)"></textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/∞</p>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">描述：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea id="tag_desc" class="textarea"  placeholder="说点什么..." name="description" onKeyUp="$.Huitextarealength(this,500)"></textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                    </div>
                </div>
                <div class="row cl">
                    <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                        <input class="btn btn-primary" type="button" onclick="check_param()" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <form id="search-form" class="text-l" method="get" action="${contextPath}/swagger/tty1">
        <input type="hidden" name="mt" value="2"/>
        <input type="hidden" name="oper" value="find_def_by_code"/>
        <input type="hidden" name="docid" value="${result.dataSet.docid}"/>
        结构名
        <input type="text" value="" name="userCode" id="name" class="input-text radius size-M" style="width: 100px" placeholder="名称">
        <input id="page-no" name="page" type="hidden" value="1">
        <button type="submit" class="btn btn-success radius">
            <i class="Hui-iconfont">&#xe665;</i> 筛选
        </button>
    </form>
    <table id="add" class="table table-border table-bordered table-hover table-bg table-sort mt-20 skin-minimal" >
        <thead>
        <tr>
            <th scope="col" colspan="7">
                        <span class="l">
                        <a data-toggle="modal" href="#myModal" class="btn btn-primary size-M radius"><i class="Hui-iconfont">&#xe600;</i>&nbsp;新增</a>
                        <a href="javascript:;" onclick="del_batch()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 删除</a>
                        </span>

            </th>
        </tr>

        </thead>
        <tbody id="td">
        <tr class="text-c skin-minimal"  Bgcolor=#D4D4D4>

            <th class="wt10" style="padding-bottom: 30px">
                <div class="check-box">
                    <input id="" type="checkbox" name="" value="">
                </div>
            </th>

            <th class="htext-l wt40" Bgcolor=#D4D4D4>ID</th>
            <th class="htext-l wt40" Bgcolor=#D4D4D4>结构名</th>
            <th class="htext-l wt30" Bgcolor=#D4D4D4>自定义内容</th>
            <th class="htext-l wt70" Bgcolor=#D4D4D4>描述</th>
            <th class="htext-l wt30" Bgcolor=#D4D4D4>创建时间</th>
            <th class="wt60">操作</th>

        </tr>
        <c:forEach var="item" items="${result.dataSet.def_list}">
            <tr class="text-c " id="id-${item.id}">
                <td style="padding-bottom: 30px">
                    <div class="check-box">
                        <input type="checkbox" name="check" value="${item.id}">
                    </div>
                </td>
                <td class="text-1">${item.id}</td>
                <td style="text-align: center" name="userCode">${item.userCode}</td>
                <td style="width: 500px" name="json">${item.json}</td>
                <td style="text-align: center" name="description">${item.description}</td>
                <td style="text-align: center" name="createTime">${item.createTime}</td>
                <td class="td-manage">
                    <a data-toggle="modal"  href="#myModal${item.id}" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                    <!--<a title="删除" href="javascript:;" onclick="admin_del(this,'')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>-->
                </td>
            </tr>
            <div id="myModal${item.id}" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <h3 id="myModalLabel'+${item.id}+'">编辑数据结构</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
                </div>
                <div class="modal-body">
                    <p>把生成的 json串 添加到这里,比如我要返回一个主表的的信息，可以在生成数据菜单中根据表名导出主表json。结构名称是给这个自定义的结构起个名字方便引用</p>
                    <form action="${contextPath}/swagger/tty1?mt=2&oper=update_define&res=json" method="post" class="form form-horizontal" id="def-${item.id}">
                        <legend>编辑</legend>
                        <input type="hidden" name="docid" value="${item.docId}">
                        <input type="hidden" name="id" value="${item.id}">
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-3">结构名：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" name="userCode" value="${item.userCode}" class="input-text" autocomplete="off" placeholder="就是给 你的数据结构起个名">
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-3">自定义内容：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <textarea class="textarea"  placeholder="json串" name="json" onKeyUp="$.Huitextarealength(this,10000)">${item.json}</textarea>
                                <p class="textarea-numberbar"><em class="textarea-length">0</em>/1000</p>
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-3">描述：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <textarea class="textarea" placeholder="说点什么..." name="description" onKeyUp="$.Huitextarealength(this,500)">${item.description}</textarea>
                                <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                            </div>
                        </div>
                        <div class="row cl">
                            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                                <input class="btn btn-primary" type="button" onclick="update_def('${item.id}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                                <button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%--<script>--%>
                <%--modify(${item.userCode}, ${item.json}, ${item.description});--%>
            <%--</script>--%>

        </c:forEach>
        </tbody>
    </table>
    <div id="pagination" class="text-c padding-top-10"></div>
</div>
<script src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script src="http://g.hearglobal.com/resources/lib/layer/2.2/layer.js"></script>
<script src="http://g.hearglobal.com/resources/lib/laypage/1.2/laypage.js"></script>
<script src="http://g.hearglobal.com/resources/lib/My97DatePicker/WdatePicker.js"></script>
<script src="http://g.hearglobal.com/resources/js/H-ui.js"></script>
<script src="http://g.hearglobal.com/resources/js/H-ui.admin.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modal.js"></script>
<script>
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });
    });
    $('#myModal').on('hidden.bs.modal', function (e) {
        // 处理代码...

    })
    function check_param() {
        //校验表单
        var form = document.getElementById("myModal");
        var inputs = form.getElementsByTagName("input");
        for(var i = 0; i < inputs.length; i++) {
            if(inputs[i].name=="userCode") {
                if(inputs[i].value=="") {
                    layer.msg("填写接口编码");
                    return false;
                }
                if(inputs[i].value.length > 10) {
                    layer.msg("编码过长");
                    return ;
                }
            }
            if(inputs[i].name=="json") {
                if(inputs[i].value== "") {
                    layer.msg("填写json串");
                    return false;
                }
                if(inputs[i].value > 1000) {
                    layer.msg("json串过长");
                    return false;
                }
            }
            if(inputs[i].name=="description") {
                if(inputs[i].value > 500) {
                    layer.msg("描述过长");
                    return false;
                }
            }
        }
        var sub = document.getElementById("tag-form");
        sub.submit();
    }
    function update_def(id) {
        //校验表单
        var form = document.getElementById("myModal" + id);
        var inputs = form.getElementsByTagName("input");
        for(var i = 0; i < inputs.length; i++) {
            if(inputs[i].name=="userCode") {
                if(inputs[i].value=="") {
                    layer.msg("填写接口编码");
                    return ;
                }
                if(inputs[i].value.length > 10) {
                    layer.msg("编码过长");
                    return ;
                }
            }
            if(inputs[i].name=="json") {
                if(inputs[i].value== "") {
                    layer.msg("填写json串");
                    return ;
                }
                if(inputs[i].value > 1000) {
                    layer.msg("json串过长");
                    return ;
                }
            }
            if(inputs[i].name=="description") {
                if(inputs[i].value > 500) {
                    layer.msg("描述过长");
                    return ;
                }
            }
        }
        var form_id = '#def-'+ id;
        var id = 'id-'+id;
        $.ajax({
            url:$(form_id).attr("action"),
            type:"POST",
            dataType: "json",
            data:$(form_id).serialize(),
            async: true,
            success: function(data) {

                var json = eval(data); //数组

                if( json.result.header.errorCode=="00000" ){
                    layer.msg('修改成功');
                    var tr = document.getElementById(id);
                    var tds = tr.childNodes;
                    for(var i =0; i < tds.length; i++) {
                        if(tds[i].nodeName=="TD" && tds[i].getAttribute("name")=="userCode") {

                            var text = document.createTextNode(json.result.dataSet.def.userCode);
                            tds[i].removeChild(tds[i].firstChild);
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName=="TD" && tds[i].getAttribute("name")=="json") {
                            tds[i].removeChild(tds[i].firstChild);
                            var text = document.createTextNode(json.result.dataSet.def.json);
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName=="TD" && tds[i].getAttribute("name")=="description") {
                            tds[i].removeChild(tds[i].firstChild);
                            var text = document.createTextNode(json.result.dataSet.def.description);
                            tds[i].appendChild(text);
                        }
                    }

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

//        var td_userCode = tds[0];
    }
    var modifyIndex = 1;
    function modify(userCode, json, description) {
        alert(modifyIndex);
        modifyHtml = modifyHtml + '<div id="myModal '+ modifyIndex +'" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">';
        modifyHtml = modifyHtml +            '<div class="modal-header">';
        modifyHtml = modifyHtml +  '<h3 id="myModalLabel">编辑数据结构</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>';
        modifyHtml = modifyHtml + '</div>';
        modifyHtml = modifyHtml + '<div class="modal-body">'
        modifyHtml = modifyHtml +       '<p>把生成的 json串 添加到这里,比如我要返回一个主表的的信息，可以在生成数据菜单中根据表名导出主表json。结构名称是给这个自定义的结构起个名字方便引用</p>';
        modifyHtml = modifyHtml + ' <form action="${contextPath}/swagger/tty1?mt=2&oper=add_define" method="post" class="form form-horizontal" id="tag-form">';
        modifyHtml = modifyHtml +      '<legend>编辑</legend>';
        modifyHtml = modifyHtml +   '<input type="hidden" name="docid" id="docid" value="1">';
        modifyHtml = modifyHtml +      '<div class="row cl">';
        modifyHtml = modifyHtml +    '<label class="form-label col-xs-4 col-sm-3">结构名：</label>';
        modifyHtml = modifyHtml +   '<div class="formControls col-xs-8 col-sm-9">';
        modifyHtml = modifyHtml + '<input id="tag_name" type="text" name="userCode" value="" class="input-text" autocomplete="off" placeholder="就是给 你的数据结构起个名">';
        modifyHtml = modifyHtml +     '</div>';
        modifyHtml = modifyHtml +    '</div>';
        modifyHtml = modifyHtml +    '<div class="row cl">';
        modifyHtml = modifyHtml +    '<label class="form-label col-xs-4 col-sm-3">自定义内容：</label>';
        modifyHtml = modifyHtml + '<div class="formControls col-xs-8 col-sm-9">';
        modifyHtml = modifyHtml +    '  <textarea id="tag_def" class="textarea"  placeholder="json串" name="json" onKeyUp="$.Huitextarealength(this,10000)"></textarea>';
        modifyHtml = modifyHtml +   '  <p class="textarea-numberbar"><em class="textarea-length">0</em>/∞</p>';
        modifyHtml = modifyHtml +  '</div>';
        modifyHtml = modifyHtml + '</div>';
        modifyHtml = modifyHtml +  '<div class="row cl">';
        modifyHtml = modifyHtml +    '<label class="form-label col-xs-4 col-sm-3">描述：</label>';
        modifyHtml = modifyHtml +   '<div class="formControls col-xs-8 col-sm-9">';
        modifyHtml = modifyHtml +        '<textarea id="tag_desc" class="textarea"  placeholder="说点什么..." name="description" onKeyUp="$.Huitextarealength(this,500)"></textarea>';
        modifyHtml = modifyHtml +        '<p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>';
        modifyHtml = modifyHtml +        '</div>';
        modifyHtml = modifyHtml +       '</div>';
        modifyHtml = modifyHtml +  '<div class="row cl">';
        modifyHtml = modifyHtml +   '<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">'
        modifyHtml = modifyHtml +       '<input class="btn btn-primary" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">';
        modifyHtml = modifyHtml +      '<button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button>';
        modifyHtml = modifyHtml + '</div> </div> </form> </div> </div>';
        return modifyHtml;
    }
    <%--laypage({--%>
        <%--cont: 'pagination',--%>
        <%--pages: ${result.dataSet.totalPage},--%>
        <%--curr: ${result.dataSet.page},--%>
        <%--skip: true,--%>
        <%--jump: function(e, first){ //触发分页后的回调--%>
            <%--if(!first){ //一定要加此判断，否则初始时会无限刷新--%>

                <%--$('#page-no').val(e.curr);--%>
                <%--$('#search-form').submit();--%>
            <%--}--%>
        <%--}--%>
    <%--});--%>

    function del_batch(){
        var url="${contextPath}/swagger/tty1?mt=2&res=json&oper=del_def&res=json";
        var idList = "";
        layer.confirm('确认要批量删除吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……
            var checked_num = $("input[name='check']:checked").length;
            if (checked_num == 0) {
                layer.msg('没有任何选择',{icon:0,time:3000});
                return;
            }

            var check_obj = $("input[name='check']:checked");
            check_obj.each(function() {
                idList+=$(this).val()+",";
            });

            data = "ids="+idList.substring(0, idList.length - 1);
            layer.load(1);
            $.get(url, data, function(result){
                layer.closeAll('loading');
                if(result.result.header.errorCode=="00000"){
                    check_obj.each(function() {
                        $(this).closest("tr").remove();
                    });
                    layer.msg('批量删除成功!',{icon:1,time:1000});
                }else{
                    layer.msg('批量删除失败!['+result.result.header.errorMsg+']',{icon:1,time:3000});
                }
            });
        });
    }


</script>
</body>
</html>
