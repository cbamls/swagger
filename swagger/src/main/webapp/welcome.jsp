<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/25
  Time: 19:38
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
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <h3 id="myModalLabel">创建文档</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
        </div>
        <div class="modal-body">
            <p>需要注意的内容…</p>
            <div id ="wrap"  class="panel panel-default">
                <div class="panel-header">吃喝玩乐app</div>
                <div class="panel-body">

                    <form action="${contextPath}/swagger/tty1?mt=2&res=json" method="post" class="form form-horizontal" id="doc-form">
                        <legend>接口文档的基本信息</legend>
                        <input type="hidden" name="oper" value="add_doc_info">
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
                                <input type="text" class="input-text" placeholder="/" name="basePath" id="basePath" value="/">
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
                            <label class="form-label col-xs-4 col-sm-3">应用层协议：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="schemes">
                                        <c:choose>
                                            <c:when test="${result.dataSet.doc.schemes==http}">
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

                        <%--下面是t_doc_info表的数据--%>


                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-3">文档版本 ：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="input-text" placeholder="1.0" name="version" id="version"value="1.0">
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
                            <label class="form-label col-xs-4 col-sm-3">模块描述：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <textarea class="textarea"  placeholder="说点什么...最少输入10个字符" name="description" id="description" onKeyUp="$.Huitextarealength(this,500)">${result.dataSet.docInfo.description}</textarea>
                                <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                            </div>
                        </div>

                        <div class="row cl">
                            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                                <input class="btn btn-primary size-M" type="button" onclick="check_doc()" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                                <button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
        <div class="modal-footer">
            hearglobal.com
        </div>
    </div>

    <!-----------------------------------接口搜索form-------------------------------------------------------------->

    <div style="margin-left: 30%">
        <form id="search-form" class="text-l" method="get" action="<%=request.getScheme()+"://"+request.getServerName()%>/swagger/tty1?mt=2&res=json">
            <input type="hidden" name="oper" value="DocAndUser"/>
            <input type="hidden" name="mt" value="2"/>

            模块名称
            <input type="text" name="modalName" id="name" class="input-text radius size-M" style="width: 100px" placeholder="模块名称" value="${result.dataSet.modalName}">
            <input id="page-no" name="page" type="hidden" value="1">
            &nbsp; &nbsp; &nbsp; &nbsp;
            开发者
          <span class="select-box " style="width: 100px">
            <select class="select" size="1" name="develName" >
                <option value="">请选择</option>
                <c:forEach var="item" items="${result.dataSet.contacts}">
                    <c:choose>
                        <c:when test="${result.dataSet.develName==item.name}">
                            <option value="${item.name}" selected="selected">${item.name}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${item.name}">${item.name}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
             </select>
          </span> &nbsp; &nbsp; &nbsp; &nbsp;
            <%--是否启用--%>
              <%--<span class="select-box" style="width: 100px">--%>
                  <%--<select class="select" size="1" name="sts" disabled="disabled">--%>
                      <%--<option value="">选择状态</option>--%>
                      <%--<option value="0">上架</option>--%>
                      <%--<option value="1">下架</option>--%>
                  <%--</select>--%>
            <%--</span>--%>

            <button type="submit" class="btn btn-success radius">
                <i class="Hui-iconfont">&#xe665;</i> 筛选
            </button>

        </form>
    </div>
    <br><br>
    <%--<div  style="text-align: center">--%>
        <%--<a data-toggle="modal" href="${contextPath}/swagger/tty1?mt=2&oper=getDocAndUser" class="btn btn-primary size-L">加载数据</a>--%>

    <%--</div>--%>
    <!---------------------------------------接口显示列表----------------------------------------------------------->

    <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
        <thead>
        <tr>
            <th scope="col" colspan="15">
                <span class="l">
                    <%--<a data-toggle="modal" target="_blank" href="${contextPath}/swagger/tty1?mt=2&oper=reflect&docid=" class="btn btn-primary radius">新增接口</a>--%>
                    <a data-toggle="modal" href="#myModal" class="btn btn-success radius size-L"><i class="Hui-iconfont">&#xe600;</i>新增文档</a>
                    <!--<a href="javascript:;" onclick="del_batch()" class="btn btn-danger size-L radius"><i class="Hui-iconfont">&#xe6e2;</i> 删除文档</a>-->
                     <%--<a data-toggle="modal" href="#myModal" class="btn btn-success radius size-L"><i class="Hui-iconfont">&#xe600;</i>导出JSON</a>--%>

                </span>
                <a class="btn btn-success radius r" style="line-height:1.6em" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
            </th>
        </tr>

        <tr class="text-c">
            <th class="wt10" style="padding-bottom: 30px">
                <div class="check-box"><input type="checkbox" name="" onclick="change_state(this.checked)" value=""></div>
            </th>
            <th class="text-l wt40">文档ID</th>
            <th class="text-l wt50">查看</th>
            <th class="text-l wt40">文档名称</th>
            <%--<th class="htext-l wt30">模块名称</th>--%>
            <th class="htext-l wt50">开发者</th>
            <th class="htext-l wt50">主机地址</th>
            <th class="text-l wt50">基路径</th>
            <th class="text-l wt80" style="width: 400px">文档描述</th>
            <th class="text-l wt30">创建时间</th>
            <th class="text-l wt30">更新时间</th>
            <th class="wt60">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${result.dataSet.list_doc}">
            <tr class="text-c ">
                <td class="wt10" style="padding-bottom: 30px">
                    <div class="check-box"><input type="checkbox" name="check" value="${item.docId}"></div>
                </td>
                <td class="text-l wt30">${item.docId}</td>
                <td class="text-l wt30"><input class="btn btn-default round" type="button" onclick="out(${item.docId})" value="查看" style="background-color: #00C853"></td>
                <td class="text-l wt30">${item.title}</td>
                <td class="text-l">${item.contactName}</td>
                <td class="text-l">${item.host}</td>
                <td class="text-l">${item.basePath}</td>
                <td class="text-l">${item.description}</td>
                <td class="text-l">${item.createTime}</td>
                <td class="text-l">${item.updateTime}</td>
                <td class="td-manage">
                    <a data-toggle="modal" target="_blank" href="<%=request.getScheme()+"://"+request.getServerName()%>/swagger/tty1?mt=2&oper=reflect&docid=${item.docId}" class="btn btn-primary size-L">编辑</a>
                </td>
            </tr>
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


<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modal.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/common-domain.js" ></script>
<script type="text/javascript">
    var flag = false;

    function change_state(isChecked) {
        if (!flag) {
            var check_obj = $("input[name='check']");
            check_obj.each(function () {
                $(this).iCheck('check');
                flag = true;
            });
        } else {
            var check_obj = $("input[name='check']:checked");
            check_obj.each(function () {
                $(this).iCheck('uncheck');
                flag = false;
            })
        }
    }
    function out(docid) {
        $.ajax({
        //    url:'/goods/tag?mt=1&res=json&method=getTagOnCategoryChange&category='+document.getElementById("category").value+"&categoryName="+category.options[category.selectedIndex].text,
            url:'/swagger/tty1?mt=2&res=json&oper=create&docid=' + docid,

            type:"GET",
            dataType: "json",
            async: true,
            success: function(data) {

                if( data.result.header.errorCode=="00000" ){
                    layer.msg("成功");
                    window.location.href="http://swagger.hearglobal.com/?url=http://idoc.hearglobal.com/interface_dir/gudaomai/" + data.result.dataSet.create;
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
    function check_doc() {
        var name = document.getElementById("title");
        var description = document.getElementById("description");
        if(name.value == "") {
            layer.msg('必须填文档名称', {
                time: 20000, //20s后自动关闭
                btn: ['知道了']
            });
            return false;
        }

        $.ajax({
            url:$("#doc-form").attr("action"),
            type:"POST",
            dataType: "json",
            data:$("#doc-form").serialize(),
            async: true,
            success: function(data) {

                var json = eval(data); //数组

                if( json.result.header.errorCode=="00000" ){
                    layer.msg('修改成功');
                   //window.location.href= "http://local.hearglobal.com/swagger/tty1?mt=1&oper=cbam_1&docid="+json.result.dataSet.docid;

                    window.open("http://local.hearglobal.com/swagger/tty1?mt=2&oper=reflect&docid="+json.result.dataSet.docid, "_blank");
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
    $('#myModal').on('hide.bs.modal', function (e) {
        // 处理代码...
    })

    $(function(){
        $('.icheck input').iCheck({
            checkboxClass: 'icheckbox-blue',
            increaseArea: '20%'
        });
    });

    $('#myModal').on('hidden.bs.modal', function (e) {
        // 处理代码...
    })
    /*管理员-删除*/
    //    function admin_del(obj,url){
    //        layer.confirm('确认要删除吗？',function(index){
    //            //此处请求后台程序，下方是成功后的前台处理……
    //            $.get(url, function(result){
    //                if(result.ret_code=="0000"){
    //                    $(obj).parents("tr").remove();
    //                    layer.msg('删除成功!',{icon:1,time:1000});
    //                }else{
    //                    layer.msg('删除失败!['+result.ret_msg+']',{icon:1,time:3000});
    //                }
    //            });
    //        });
    //    }
    //
    function del_batch(){
        var url="${contextPath}/rest/alter?mt=2&res=json&oper=delete";
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
                    layer.msg('批量删除失败!['+result.ret_msg+']',{icon:1,time:3000});
                }
            });
        });
    }


    function state_batch(state, flag){
        var url="${contextPath}/rest/alter?mt=2&res=json&oper=sellonoff&method=" + flag;
        var idList = "";
//        layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
//            time: 20000, //20s后自动关闭
//            btn: ['明白了', '知道了', '哦']
//        });
        layer.confirm('确认要批量'+(state==1?'下架':'上架')+'吗？',{icon: 3, title:'提示'},function(index){
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

            data = "ids="+idList.substring(0, idList.length - 1)+"&state="+state;
            layer.load(1);
            $.get(url, data, function(result){
                layer.closeAll('loading');

                if(result.result.header.errorCode=="00000"){

                    layer.msg('批量'+(state==1?'下架':'上架')+'成功!',{icon:1,time:1000});

                    check_obj.each(function() {
//                            $(this).closest("tr").remove();
                        document.getElementById("state"+$(this).val()).innerHTML=(state==1?'下架':'上架');
                    });
                }else{
                    layer.msg('批量'+(state==1?'下架':'上架')+'失败!['+result.result.header.errorMsg+']',{icon:1,time:3000});
                }
            });
        });
    }
</script>
</body>
</html>
