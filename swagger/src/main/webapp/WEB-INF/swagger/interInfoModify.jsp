<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/24
  Time: 11:06
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>添加饭店</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

    <link href="http://g.hearglobal.com/resources/css/H-ui.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet">

    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">

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

    <style type="text/css">
        .tabBar {
            border-bottom: 2px solid #222
        }

        .tabBar span {
            background-color: #e8e8e8;
            cursor: pointer;
            display: inline-block;
            float: left;
            font-weight: bold;
            height: 30px;
            line-height: 30px;
            padding: 0 15px
        }

        .tabBar span.current {
            background-color: #222;
            color: #fff;
        }

        .tabCon {
            display: none;
        }
    </style>

    <style type="text/css">
        #wrap {
            width: 810px;
            height: 888px;
            background-color: #F7F7F7;
            z-index: 0;
            text-align: center;
            margin: auto;
        }
    </style>
</head>
<body>

<div class="page-container">
    <div id="tab_demo" class="HuiTab">
        <div class="tabBar cl"><span>基本信息</span><span>请求参数</span><span>响应参数</span></div>

        <!--------------------------------基本信息--------------------------------------------------------------->
        <div class="tabCon" style="width: 1000px">
            <form id="basic-form" action="${contextPath}/swagger/tty1?mt=2&res=json" method="post" onreset='formReset(this);' class="form form-horizontal">
                <input type="hidden" name="oper" value="update_path">
                <input type="hidden" name="docid" value="${result.dataSet.docid}">
                <input type="hidden" name="path_id" value="${result.dataSet.path_id}">
                <input type="hidden" name="id" value="${result.dataSet.id}">
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">接口别名:</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" value="${result.dataSet.basic.pathInfo.interCode}" class="input-text" id="intercode" name="interCode"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">接口名称:</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" value="${result.dataSet.basic.pathInfo.summary}" class="input-text" id="summary" name="summary"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">请求Url:</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" name="path" class="input-text" id="path" value="${result.dataSet.basic.path}"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">应用层协议：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="appProtocol">
                                         <c:choose>
                                             <c:when test="${result.dataSet.basic.pathInfo.appProtocol=='http'}">
                                                        <option value="http" selected>
                                                            http
                                                        </option>
                                                        <option value="https">
                                                            https
                                                        </option>
                                             </c:when>
                                             <c:otherwise>
                                                 <option value="https" selected>https</option>
                                                 <option value="http">http</option>
                                             </c:otherwise>
                                         </c:choose>
									</select>
                        </span>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">请求协议：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="protocol">
                                         <c:choose>
                                             <c:when test="${result.dataSet.basic.pathInfo.protocol=='get'}">
                                                    <option value="get" selected>
                                                        get
                                                    </option>
                                                    <option value="post">
                                                        post
                                                    </option>
                                             </c:when>
                                             <c:otherwise>
                                                 <option value="post" selected>post</option>
                                                 <option value="get">get</option>
                                             </c:otherwise>
                                         </c:choose>
									</select>
                        </span>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">所属Tag：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="tag">
                                         <c:forEach var="tag" items="${result.dataSet.tags}">
                                             <c:choose>
                                                 <c:when test="${tag.id==result.dataSet.basic.pathInfo.tagIds}">
                                                     <option value="${tag.id}" selected>${tag.name}</option>
                                                 </c:when>
                                                 <c:otherwise>
                                                     <option value="${tag.id}">${tag.name}</option>
                                                 </c:otherwise>
                                             </c:choose>

                                         </c:forEach>
									</select>
                        </span>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">请求格式：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="produces">
                                        <c:choose>
                                            <c:when test="${result.dataSet.basic.pathInfo.produces=='application/json'}">
                                                <option value="application/json" selected>
                                                    application/json
                                                </option>
                                                 <option value="application/x-www-form-urlencoded">
                                                    application/x-www-form-urlencoded
                                                </option>
                                                <option value="multipart/form-data">multipart/form-data</option>
                                            </c:when>
                                            <c:when test="${result.dataSet.basic.pathInfo.produces=='application/x-www-form-urlencoded'}">
                                                <option value="application/x-www-form-urlencoded" selected>
                                                    application/x-www-form-urlencoded
                                                </option>
                                                 <option value="application/json">
                                                    application/json
                                                </option>
                                                <option value="multipart/form-data">multipart/form-data</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="multipart/form-data" selected>multipart/form-data</option>
                                                <option value="application/json">
                                                    application/json
                                                </option>
                                                 <option value="application/x-www-form-urlencoded">
                                                    application/x-www-form-urlencoded
                                                </option>
                                            </c:otherwise>
                                        </c:choose>
									</select>
                        </span>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">响应格式：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="consumes">
										 <c:choose>
                                             <c:when test="${result.dataSet.basic.pathInfo.consumes=='application/json'}">
                                                <option value="application/json" selected>
                                                    application/json
                                                </option>
                                                 <option value="application/x-www-form-urlencoded">
                                                    application/x-www-form-urlencoded
                                                </option>
                                                 <option value="multipart/form-data">multipart/form-data</option>
                                             </c:when>
                                             <c:when test="${result.dataSet.basic.pathInfo.consumes=='application/x-www-form-urlencoded'}">
                                                <option value="application/x-www-form-urlencoded" selected>
                                                    application/x-www-form-urlencoded
                                                </option>
                                                 <option value="application/json">
                                                    application/json
                                                </option>
                                                 <option value="multipart/form-data">multipart/form-data</option>
                                             </c:when>
                                             <c:otherwise>
                                                 <option value="multipart/form-data" selected>multipart/form-data</option>
                                                <option value="application/json">
                                                    application/json
                                                </option>
                                                 <option value="application/x-www-form-urlencoded">
                                                    application/x-www-form-urlencoded
                                                </option>
                                             </c:otherwise>
                                         </c:choose>
									</select>
                        </span>
                    </div>
                </div>
                <%--<div class="row cl">--%>
                    <%--<div class="form-label col-xs-3 col-sm-2">模块描述</div>--%>
                    <%--<div class="formControls col-xs-9 col-sm-9">--%>
                        <%--<textarea id="contentEditor" name="description" id="description">${result.dataSet.basic.pathInfo.description}</textarea>--%>
                    <%--</div>--%>
                    <%--<div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>--%>
                <%--</div>--%>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">模块描述：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea class="textarea"  placeholder="说点什么..." name="description" onKeyUp="$.Huitextarealength(this,500)">${result.dataSet.basic.pathInfo.description}</textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                    </div>
                </div>
                <div class="row cl">
                    <div class="col-xs-9 col-sm-10 col-xs-offset-3 col-sm-offset-2">
                        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;"
                               id="submitT2">
                        <input class="btn btn-secondary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;">
                    </div>
                </div>
            </form>
        </div>

        <!--------------------------------------------请求信息-------------------------------------------------->

        <div class="tabCon">
            <div class="page-container">
                <form id="t-req" class="text-l" method="post" action="${contextPath}/swagger/tty1?res=json">
                    <input type="hidden" name="path_item_id" value="${result.dataSet.id}"/> <!--传到后台path_item_id-->
                    <input type="hidden" name="mt" value="2"/>
                    <input type="hidden" name="oper" value="addreq"/>
                    <input type="hidden" name="docid" value="${result.dataSet.docid}">
                    名称<input id="r_name" type="text" name="name" class="input-text radius size-M" style="width: 100px" placeholder="参数名" value="">
                    参数位置
              <span class="select-box " style="width: 100px">
                 <select id="r_location" class="select" size="1" name="location" onchange="state_ref()">
                     <option value="query" id="query">query</option>
                     <option value="path">path</option>
                     <option value="formData">formData</option>
                     <option value="body">body</option>
                     <option value="header">header</option>
                </select>
              </span>
                    参数类型
               <span class="select-box" style="width: 100px">
                         <select id="r_type" class="select" size="1" name="type" onchange="state_ref()" >
                              <option value="string" id="string">string</option>
                              <option value="boolean">boolean</option>
                              <option value="int">int</option>
                              <option value="long">long</option>
                              <option value="float">float</option>
                              <option value="decimal">decimal</option>
                              <option value="file">file</option>
                              <option value="$ref">$ref</option>
                         </select>
                </span>

                    自定义
                       <span class="select-box" style="width: 100px">
                         <select id="r_def" class="select" size="1" name="refid">
                               <option value="" id="select">请选择</option>
                               <c:forEach var="ref" items="${result.dataSet.def}">
                                   <option value="${ref.id}">${ref.userCode}</option>
                               </c:forEach>
                         </select>
                     </span>
                    描述
                    <input id="r_desc" type="text" name="description" class="input-text radius size-M" style="width: 150px" placeholder="参数描述" value="${result.dataSet.searchName}">

                    是否必填
                   <span class="select-box" style="width: 100px">
                                <select id="r_isreq"class="select" size="1" name="isrequired">
                                  <option value="0" id="isrequired">否</option>
                                  <option value="1">是</option>
                       </select>
                    </span>

                    <!-----------------------------------------------弹出框内容------------------------------------------------------->

                    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-header">
                            <h3 id="myModalLabel">在这里修改一些不重要的信息</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void(0);">×</a>
                        </div>
                        <div class="modal-body">

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">是否数组</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <span class="select-box">
                                                <select class="select" size="1" name="isarr" id="r_arr">
                                                    <option value="0" id="is_arr">否</option>
                                                    <option value="1">是</option>
                                                </select>
                                    </span>
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">  最大值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="r_max"type="text" class="input-text" placeholder="最大数值" name="valueMax">
                                </div>
                            </div>

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3"> 最小值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="r_min"type="text" class="input-text" placeholder="最小数值" name="minValue">
                                </div>
                            </div>

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">默认值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="r_defa"type="text" class="input-text" placeholder="默认值" name="defa">
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">最大长度</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="r_max_length" type="text" class="input-text" placeholder="最大长度" name="maxLength">
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">最小长度</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="r_min_length"type="text" class="input-text" placeholder="最小长度" name="minLength" >
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">确定</button><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                        </div>
                    </div>&nbsp;&nbsp;
                    <a data-toggle="modal" href="#myModal" class="btn btn-primary size-L">更多</a>

                    <br><br>

                    <hr><div></div><br><br>
                    <span style="margin-left: 400px">
                         <input type="submit" class="btn btn-primary size-M radius" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="input1">
                         <input class="btn btn-secondary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;"id="input2">
                    </span>
                </form>

                <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
                    <thead>
                    <tr>
                        <th scope="col" colspan="15">
                        <span class="l">

                            <%--<a href="javascript:;" onclick="state_batch(0,1)" class="btn btn-secondary size-S radius">--%>
                                <%--<i class="Hui-iconfont">&#xe6e2;</i> 复制接口</a>--%>
                            <a href="javascript:;" onclick="del_batch_req(${result.dataSet.docid})" class="btn btn-danger radius">
                                <i class="Hui-iconfont">&#xe6e2;</i> 删除请求</a>
                        </span>
                            <a class="btn btn-success radius r" style="line-height:1.6em"
                               href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
                        </th>
                    </tr>


                    <tr class="text-c">

                        <th class="wt10" style="padding-bottom: 30px">
                            <div class="check-box">
                                <input type="checkbox" name="" value="">
                            </div>

                        </th>

                        <th class="text-l wt40">名称</th>
                        <th class="htext-l wt30">参数位置</th>
                        <th class="htext-l wt30">参数类型</th>
                        <th class="htext-l wt30">描述信息</th>
                        <th class="text-l wt50">自定义</th>
                        <th class="text-l wt30">是否数组</th>
                        <th class="text-l wt50">是否必填</th>
                        <th class="text-l wt50">默认值</th>
                        <th class="text-l wt50">最大值</th>
                        <th class="text-l wt50">最小值</th>
                        <th class="text-l wt50">最大长度</th>
                        <th class="text-l wt50">最小长度</th>
                        <th class="wt60">操作</th>
                    </tr>
                    </thead>
                    <tbody id="list-req">
                    <c:forEach var="rest" items="${result.dataSet.req_info}">
                        <tr class="text-c ">
                            <td class="wt10" style="padding-bottom: 30px">
                                <div class="check-box">
                                    <input type="checkbox" name="check" value="${rest.id}">
                                </div>

                            </td>
                            <td class="text-l">${rest.name}</td>
                            <td class="text-l wt40">${rest.location}</td>
                            <td class="text-l wt50">${rest.type}</td>
                            <td class="text-l wt60">${rest.description}</td>
                            <td class="htext-l wt30">${rest.userCode}</td>
                            <td class="text-l wt30">${rest.isarr}</td>
                            <td class="text-l wt30">${rest.isrequired}</td>
                            <td class="text-l wt30">${rest.defa}</td>
                            <td class="text-l wt30">${rest.valueMax}</td>
                            <td class="text-l wt30">${rest.minValue}</td>

                            <td class="text-l wt30">${rest.maxLength}</td>
                            <td class="text-l wt30">${rest.minLength}</td>

                            <td class="td-manage">
                                <a title="修改" href="${contextPath}/swagger/tty1?mt=2&oper=modify_req_init&req_id=${rest.id}&docid=${result.dataSet.docid}&path_item_id=${rest.pathItemId}" data-title="修改" onClick="Hui_admin_tab(this);" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                                <!--<a title="删除" href="javascript:;" onclick="admin_del(this,'')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div id="paginatio" class="text-c padding-top-10"></div>
            </div>

        </div>

        <!---------------------------------------------响应信息--------------------------------------------------->
        <div class="tabCon">
            <div class="page-container">
                <form id="t-res" class="text-l" method="post" action="${contextPath}/swagger/tty1?res=json">
                    <input type="hidden" name="mt" value="2"/>
                    <input type="hidden" name="oper" value="addres"/>
                    <input type="hidden" name="path_item_id" value="${result.dataSet.id}"/>
                    <input type="hidden" name="docid" value="${result.dataSet.docid}">
                    <input id="page-no" name="page" type="hidden" value="1">
                    名称
                    <input type="text" value="" name="name" id="id_1" class="input-text radius size-M" style="width: 100px" placeholder="名称" >&nbsp; &nbsp; &nbsp; &nbsp;
                    参数类型
                   <span class="select-box" style="width: 100px">
                        <select id="id_2" class="select" size="1" name="type" onchange="state_change_1()">
                          <option value="string" id="id_2_1">string</option>
                          <option value="boolean">boolean</option>
                          <option value="int">int</option>
                          <option value="long">long</option>
                          <option value="float">float</option>
                          <option value="decimal">decimal</option>
                          <option value="file">file</option>
                          <option value="$ref">$ref</option>
               </select>
            </span>

                    自定义
                      <span class="select-box" style="width: 100px">
                         <select id="id_4" class="select" size="1" name="refId" onchange="state_change_2()">
                              <option value="" id="id_4_1">请选择</option>
                               <c:forEach var="ref" items="${result.dataSet.def}">
                                   <option value="${ref.id}">${ref.userCode}</option>
                               </c:forEach>
                         </select>
                     </span>
                    描述
                    <input type="text" value="" name="description" id="id_3" class="input-text radius size-M" style="width: 300px" placeholder="描述">
                    是否数组
                     <span class="select-box" style="width: 100px">
                          <select class="select" size="1" id="id_5" name="isarr">
                             <option value="0" id="id_5_1">否</option>
                             <option value="1">是</option>
                          </select>
                     </span>

                    <div class="row cl"  style="float: right">
                        <div style="display: none" id="attr" class="form-label col-xs-3 col-sm-2"><a href="javascript:;"  data-title="添加三级属性"  onClick="add_attribute(this);" class="btn btn-primary size-S radius"><i class="Hui-iconfont">&#xe600;</i> 添加三级属性</a></div>
                    </div>
                    <div class="row cl">
                    </div>
                    <div id="attributeDIV" style="text-align: center">
                        <br><br>
                         <span id="3">
                    <input class="btn btn-primary size-M radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="submitT">
                    <input class="btn btn-secondary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;">
                    </span>

                    </div>



                </form>

                <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
                    <thead>
                    <tr>
                        <th scope="col" colspan="15">
                            <span class="l">
                                <a href="javascript:;" onclick="del_batch_res(${result.dataSet.docid})" class="btn btn-danger size-M radius"><i class="Hui-iconfont">&#xe6e2;</i> 删除响应</a>
                            </span>
                            <a class="btn btn-success radius r" style="line-height:1.6em" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
                        </th>
                    </tr>
                    <tr class="text-c">
                        <th class="wt10" style="padding-bottom: 30px">
                            <div class="check-box">
                                <input type="checkbox" name="" value="">
                            </div>
                        </th>
                        <th class="text-l wt40">名称</th>
                        <th class="htext-l wt30">参数类型</th>
                        <th class="htext-l wt60">描述</th>
                        <th class="htext-l wt30">自定义</th>
                        <th class="htext-l wt30">是否数组</th>
                        <th class="wt60">操作</th>
                    </tr>
                    </thead>
                    <tbody id="list-res">
                    <c:forEach var="item" items="${result.dataSet.res_info}">
                        <tr class="text-c " id="tr-${item.id}">
                            <td class="wt10" style="padding-bottom: 30px">
                                <div class="check-box">
                                    <input type="checkbox" name="check" value="${item.id}">
                                </div>
                            </td>
                            <td class="text-l" name="res_name">${item.name}</td>
                            <td class="text-l wt50" name="res_type">${item.type}</td>
                            <td class="text-l wt30" name="res_description">${item.description}</td>
                            <td class="text-l wt30" name="res_userCode">${item.userCode}</td>
                            <td class="text-l wt30" name="res_isarr">${item.isarr}</td>
                            <td class="td-manage">
                                <a data-toggle="modal"  href="#myModal${item.id}" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>

                                <%--<a title="修改" href="${contextPath}/swagger/tty1?mt=2&oper=modify_res&res_id=${item.id}&docid=${result.dataSet.docid}&path_item_id=${item.pathItemId}" data-title="修改商品" onClick="Hui_admin_tab(this);" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>--%>
                                <!--<a title="删除" href="javascript:;" onclick="admin_del(this,'')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>-->
                            </td>
                        </tr>
                            <!--在这测试一个弹出层div-->
                        <!--在这测试一个弹出层div-->
                        <div id="myModal${item.id}" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-header">
                                <h3 id="myModalLabel'+${item.id}+'">响应参数</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
                            </div>
                            <form action="${contextPath}/swagger/tty1?mt=2&oper=update_res&res=json" method="post" class="form form-horizontal" id="res-${item.id}">
                            <div class="modal-body" id="body-${item.id}">
                                <p>在这里我们可以修改我们的响应信息</p>
                                        <%--<legend></legend>--%>
                                    <input type="hidden" name="res_id"  value="${item.id}">
                                    <input type="hidden" name="path_item_id" value="${item.pathItemId}">
                                    <input type="hidden" name="docid" value="${result.dataSet.docid}">
                                    <div class="row cl">
                                        <label class="form-label col-xs-4 col-sm-3">名称：</label>
                                        <div class="formControls col-xs-8 col-sm-9"style="width: 350px">
                                            <input id="name-${item.id}" type="text" name="name" value="${item.name}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店">
                                        </div>
                                    </div>
                                    <div class="row cl">
                                        <label class="form-label col-xs-4 col-sm-3">参数类型：</label>
                                        <div class="formControls col-xs-8 col-sm-9"style="width: 350px">
                        <span class="select-box">
									<select class="select" size="1" name="type">
									   <c:choose>
                                           <c:when test="${item.type=='string'}">
                                               <option value="string" selected>string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='string'}">
                                               <option value="string" selected>string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='boolean'}">
                                               <option value="string" >string</option>
                                               <option value="boolean"selected>boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='int'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int"selected>int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='long'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long"selected>long</option>
                                               <option value="float">float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='float'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float"selected>float</option>
                                               <option value="decimal">decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='decimal'}">
                                               <option value="string" >string</option>
                                               <option value="boolean">boolean</option>
                                               <option value="int">int</option>
                                               <option value="long">long</option>
                                               <option value="float">float</option>
                                               <option value="decimal"selected>decimal</option>
                                               <option value="file">file</option>
                                               <option value="$ref">$ref</option>
                                           </c:when>
                                           <c:when test="${item.type=='file'}">
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
                                        <div class="formControls col-xs-8 col-sm-9" style="width: 350px">
                        <span class="select-box">
									<select class="select" size="1" name="refId">
										 <c:forEach var="ref" items="${result.dataSet.def}">
                                             <c:choose>
                                                 <c:when test="${ref.id==item.refId}">
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
                                        <label class="form-label col-xs-4 col-sm-3">是否数组</label>
                                        <div class="formControls col-xs-8 col-sm-9"style="width: 350px">
                                    <span class="select-box">
                                                <select id="id7" class="select" size="1" name="isarr" >
                                                    <c:choose>
                                                        <c:when test="${item.isarr=='true'}">
                                                            <option value="0">否</option>
                                                            <option value="1" selected>是</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="0" selected>否</option>
                                                            <option value="1">是</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </select>
                                    </span>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row cl"  style="float: left">
                                        <div class="form-label col-xs-4 col-sm-3"><a _href="javascript:;" data-title="添加三级属性" onClick="add_attribute_2(${item.id});" class="btn btn-primary size-S radius"><i class="Hui-iconfont">&#xe600;</i></a></div>
                                    </div><br>
                                    <div id="attributeDIV_2${item.id}"><br>

                                        <c:forEach var="info" items="${item.otherInfo}">
                                            <div class="row cl">
                                                <div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px">
                                                    <input type="text" style="margin-left: 30px"  class="input-text" name="p_name" placeholder="三级属性名称" value="${info.name}"/>
                                                </div>
                                                <div class="row cl">
                                                    <label class="form-label col-xs-4 col-sm-1">数组</label>
                                                    <div class="formControls col-xs-8 col-sm-9"style="width: 150px;margin-left: 10px;">
                                    <span class="select-box">
                                                <select class="select" size="1" name="p_arr" >
                                                    <c:choose>
                                                        <c:when test="${info.isArr=='true'}">
                                                            <option value="0">否</option>
                                                            <option value="1" selected>是</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="0" selected>否</option>
                                                            <option value="1">是</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </select>
                                    </span>
                                                    </div>
                                                </div>

                                                <div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px">
                                                    <input type="text" style="margin-left: 30px"  class="input-text" name="p_desc" placeholder="描述" value="${info.description}"/>
                                                </div>

                                                <div class="formControls col-xs-9 col-sm-6">
                                                        <span class="select-box" style="width: 150px; margin-left:50px">
                                                             <select class="select" size="1" name="p_ref">
                                                                   <option value="" id="select">请选择</option>
                                                                     <c:forEach var="ref" items="${result.dataSet.def}">
                                                                         <c:choose>
                                                                             <c:when test="${info.refId==ref.id}">
                                                                                 <option value="${ref.id}" selected="selected">${ref.userCode}</option>
                                                                             </c:when>
                                                                         </c:choose>
                                                                         <option value="${ref.id}">${ref.userCode}</option>
                                                                     </c:forEach>
                                                             </select>
                                                        </span>

                                                    <a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right">
                                                        <i class="Hui-iconfont">&#xe6e2;</i></a>

                                                </div>
                                                <div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                    <br><br>
                                    <div class="row cl">
                                        <label class="form-label col-xs-4 col-sm-3">响应参数描述：</label>
                                        <div class="formControls col-xs-8 col-sm-9"style="width: 350px">
                                            <textarea class="textarea" id="description-${item.id}" placeholder="说点什么...最少输入10个字符" name="description" onKeyUp="$.Huitextarealength(this,500)">${item.description}</textarea>
                                            <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                                        </div>
                                    </div>
                                    <div class="row cl">
                                        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                                            <input class="btn btn-primary radius" type="button" onclick="update_res('${item.id}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button>
                                        </div>
                                    </div>

                            </div>
                            </form>
                        </div>
                        <!--测试结束-->

                            <!--测试结束-->


                    </c:forEach>
                    </tbody>
                </table>
                <div id="pagination" class="text-c padding-top-10"></div>
            </div>
        </div>
    </div>

        <span class="btn-upload form-group">
            <input type="hidden" id="fileUrl" name="fileUrl"/>
        </span>

</div>

<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/js/H-ui.js"></script>

<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>


<!--手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖配置项目里添加的语言类型-->

<script type="text/javascript"
        src="http://g.hearglobal.com/resources/lib/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/webuploader/uploadImage.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/layer/2.2/layer.js"></script>


<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/bootstrap-modal/2.2.4/bootstrap-modal.js"></script>

<script type="text/javascript">

    function del_attribute(i){

        i.parentNode.removeChild(i);
    }

    function add_attribute(){
        var processHtml='';
        var $processDIV = $("#attributeDIV");
        processHtml=processHtml+'<div class="row cl">';
        processHtml=processHtml+    '<div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px"><input type="text"  class="input-text" name="p_name" style="width:auto; margin-left: 30px" placeholder="三级参数名称"/></div>';
        processHtml=processHtml+    '<div class="formControls col-xs-9 col-sm-7" style="display-inside: inherit">';
        processHtml=processHtml+  '数组<span class="select-box" style="width: 100px">'
        processHtml=processHtml+    '<select id="p_arr" class="select" size="1" name="p_arr">'
        processHtml=processHtml+    ' <option value="0">否</option>'
        processHtml=processHtml+    '  <option value="1">是</option>'
        processHtml=processHtml+    '</select>'
        processHtml=processHtml+  '</span>引用'
        processHtml=processHtml+  '<span class="select-box" style="width: 150px">'
        processHtml=processHtml+     '<select id="r_def" class="select" size="1" name="p_ref">'
        processHtml=processHtml+    '<option value="" id="select">请选择</option>'
        processHtml=processHtml+     '<c:forEach var="ref" items="${result.dataSet.def}">'
        processHtml=processHtml+     '<option value="${ref.id}">${ref.userCode}</option>'
        processHtml=processHtml+  '</c:forEach>'
        processHtml=processHtml+  '</select>'
        processHtml=processHtml+  '</span>'
        processHtml=processHtml+            '<input type="text"  class="input-text" name="p_desc" style="width:200px;" placeholder="json描述"/>';
        processHtml=processHtml+                '<a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right"><i class="Hui-iconfont">&#xe6e2;</i> 删除参数</a>';
        processHtml=processHtml+    '</div>';
        processHtml=processHtml+    '<div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div>';
        processHtml=processHtml+'</div>';

        $processDIV.prepend(processHtml);

    }

    function add_attribute_2(res_id){

        var processHtml='';
        var $processDIV = $("#attributeDIV_2"+res_id);
        processHtml=processHtml+'<div class="row cl">';
        processHtml=processHtml+     '<div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px"><input type="text"  class="input-text" name="p_name" style="width:100px; margin-left: 30px" placeholder="三级参数名称"/></div>';
        processHtml=processHtml+  '数组<span class="select-box" style="width: 100px">'
        processHtml=processHtml+    '<select id="p_arr" class="select" size="1" name="p_arr">'
        processHtml=processHtml+    ' <option value="0">否</option>'
        processHtml=processHtml+    '  <option value="1">是</option>'
        processHtml=processHtml+    '</select>'
        processHtml=processHtml+  '</span><br>'
        processHtml=processHtml+  '<table border="0">'
        processHtml=processHtml+  '<tr style="text-align: left; width:100px">'
        processHtml=processHtml+            '<td><input type="text"  class="input-text" name="p_desc" style="width:100px; margin-left: 140px" placeholder="json描述"/></td>';
        processHtml=processHtml+    '<td width="225px"><div class="formControls col-xs-8 col-sm-10" style="">';
//        processHtml=processHtml+  '<span class="select-box" style="width: 130px">'
        processHtml=processHtml+  '<div style="display: inline-block;width:100px">'

        processHtml=processHtml+     '<select id="r_def" class="select" size="1" name="p_ref">'
        processHtml=processHtml+     '<c:forEach var="ref" items="${result.dataSet.def}">'
        processHtml=processHtml+     '<option value="${ref.id}">${ref.userCode}</option>'
        processHtml=processHtml+  '</c:forEach>'
        processHtml=processHtml+  '</select>'
        processHtml=processHtml+  '</div>'

//        processHtml=processHtml+  '</span>'
        processHtml=processHtml+  '<div style="display: inline-block">'
        processHtml=processHtml+                '<a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right"><i class="Hui-iconfont">&#xe6e2;</i> </a>';
        processHtml=processHtml+  '</div>'
        processHtml=processHtml+    '</div></td></tr></table>';
        processHtml=processHtml+    '<div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div><br><hr><br><br>';
        processHtml=processHtml+'</div>';
        $processDIV.prepend(processHtml);
//        $processDIV.innerHTML(processHtml);

    }

    function state_ref() {
        var target_location = document.getElementById("r_location").value;
        var target_type =     document.getElementById("r_type").value;
        if((target_location == "query" || target_location == "body") && target_type == "$ref") {
            document.getElementById("r_def").disabled=false;
        } else if(target_location=="query" && target_type=="string") {
            document.getElementById("r_def").disabled=false;
        } else {
            document.getElementById("r_def").disabled=true;
        }
    }

    function update_res(id) {
        var test = document.getElementById("res-" + id);
        var attr = document.getElementById("body-" + id);
        test.appendChild(attr);
        var name_id = document.getElementById("name-"+id);
        var description_id = document.getElementById("description-"+id);
        if(name_id.value == "") {
            layer.msg("名称必填");
            return ;
        }
        var ids = 'tr-'+id;
        $.ajax({
            url:$("#res-"+id).attr("action"),
            type:"POST",
            dataType: "json",
            data:$("#res-"+id).serialize(),
            async: false,
            success: function(data) {

                var json = eval(data); //数组

                if( json.result.header.errorCode=="00000" ){
                    layer.msg('提交成功');
                    var tr = document.getElementById(ids);
                    var tds = tr.childNodes;
                    for(var i = 0; i < tds.length; i++) {
                        if(tds[i].nodeName == "TD" && tds[i].getAttribute("name")=="res_name") {
                            var text = document.createTextNode(json.result.dataSet.res.name);
                            tds[i].removeChild(tds[i].firstChild);
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName == "TD" && tds[i].getAttribute("name")=="res_type") {
                            var text = document.createTextNode(json.result.dataSet.res.type);
                            tds[i].removeChild(tds[i].firstChild);
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName == "TD" && tds[i].getAttribute("name")=="res_description") {
                            var text = document.createTextNode(json.result.dataSet.res.description);
                            tds[i].removeChild(tds[i].firstChild);
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName == "TD" && tds[i].getAttribute("name")=="res_userCode") {
                            var text = document.createTextNode(json.result.dataSet.res.userCode);
                            if(tds[i].hasChildNodes()) {
                                tds[i].removeChild(tds[i].firstChild);
                            }
                            tds[i].appendChild(text);
                        }
                        if(tds[i].nodeName == "TD" && tds[i].getAttribute("name")=="res_isarr") {
                            var text = document.createTextNode(json.result.dataSet.res.isarr);
                            tds[i].removeChild(tds[i].firstChild);
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
    }
    function del_batch_req(docid){
        var url="${contextPath}/swagger/tty1?mt=2&res=json&oper=del_req&docid="+docid;
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
    function del_batch_res(docid){
        var url="${contextPath}/swagger/tty1?mt=2&res=json&oper=del_res&docid="+docid;
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
    /*前端表单校验*/
    $("#t-req").validate({
        rules:{
            name:{
                required:true,
                maxlength:10
            },
            description:{
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


            var req_id = "";
            $.ajax({
                url:$("#t-req").attr("action"),
                type:"POST",
                dataType: "json",
                data:$("#t-req").serialize(),
                async: false,
                success: function(data) {

                    var json = eval(data); //数组

                    if( json.result.header.errorCode=="00000" ){
                        req_id = json.result.dataSet.req_id;

                        var processHtml='';
                        var $processDIV = $("#list-req");
                        processHtml=processHtml+'<tr class="text-c">';
                        processHtml=processHtml+    '<td class="wt10" > <div class="check-box" > <input type="checkbox" name="check" value="' + req_id+ '"></div></td>';
                        processHtml=processHtml+    '<td class="text-l">'+document.getElementById("r_name").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_location").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_type").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_desc").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_def").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_arr").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_isreq").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_defa").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_max").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_min").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_max_length").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("r_min_length").value+'</td>';
                        processHtml=processHtml+    '<td class="td-manage"> ';
                        processHtml=processHtml+ '<a title="修改" href="${contextPath}/swagger/tty1?mt=2&oper=modify_req_init&req_id='+ json.result.dataSet.req_id +'&path_item_id=' + json.result.dataSet.path_item_id + '&docid=' +json.result.dataSet.docid+ '" data-title="修改" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>' ;
                        processHtml=processHtml+       '</td>';
                        processHtml=processHtml+    '</tr>';
                        $processDIV.prepend(processHtml);
                        $('.icheck input').iCheck({
                            checkboxClass: 'icheckbox-blue',
                            increaseArea: '20%'
                        });
                        var select_is_arr = document.getElementById("is_arr");
                        select_is_arr.setAttribute("selected", "selected");
                        var string = document.getElementById("string");
                        var query = document.getElementById("query");
                        var select = document.getElementById("select");
                        var isrequired = document.getElementById("isrequired");
                        string.setAttribute("selected", "selected");
                        query.setAttribute("selected", "selected");
                        select.setAttribute("selected", "selected");
                        isrequired.setAttribute("selected", "selected");
                        var MyModal = document.getElementById("t-req");
                        var r_name = document.getElementById("r_name");
                        var r_desc = document.getElementById("r_desc");
                        r_name.value = "";
                        r_desc.value = "";
                        var myModal = document.getElementById("myModal");
                        var inputs = myModal.getElementsByTagName("input");
                        for(var i = 0; i < inputs.length; i++) {
                            inputs[i].value="";
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

        }
    });
    function state_change_1() {
        var target_type = document.getElementById("id_2").value;
        var target_ref = document.getElementById("id_4").value;
        if (target_type == "$ref") {
            document.getElementById("id_4").disabled = false;
        } else {
            document.getElementById("id_4").disabled = true;
        }
    }
    function state_change_2() {
        var target_type = document.getElementById("id_2").value;
        var target_ref = document.getElementById("id_4").value;
        if (target_type == "$ref" && !target_ref == "") {
            document.getElementById("attr").style.display = "block";
        } else {
            document.getElementById("attr").style.display = "none";
        }
    }

    $('#myModal').on('hide.bs.modal', function (e) {
        // 处理代码...
    })

    $(function () {
        $('.icheck input').iCheck({
            checkboxClass: 'icheckbox-blue',
            increaseArea: '20%'
        });
    });

    $(function () {
        $.Huitab("#tab_demo .tabBar span", "#tab_demo .tabCon", "current", "click", "1");
    });


    function del_req(param) {
        param.parent.removeChild(param);
    }
    /*前端表单校验*/
    $("#basic-form").validate({
        rules: {
            interCode: {
                required: true,
                maxlength: 100
            },
            summary: {
                required: true,
                maxlength: 100
            },
            path: {
                required: true,
                maxlength: 100
            },
            description: {
                required: true,
                maxlength: 200
            },
            tag:{
                required: true,
                maxlength: 20
            }
        },
        messages: {
            interCode: {
                required: "名称不能为空",
                maxlength: "名称最大长度为50个字"
            }
        },

        submitHandler: function (form) {

            $.ajax({
                url: $("#basic-form").attr("action"),
                type: "POST",
                dataType: "json",
                data: $("#basic-form").serialize(),
                async: true,
                success: function (data) {
                console.log(data.result.header.errorCode)
                    var json = eval(data); //数组

                    if (json.result.header.errorCode == "00000") {
                        layer.msg('修改成功');
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
    $("#t-res").validate({
        rules: {
            name: {
                required: true,
                maxlength: 50
            },
            description: {
                maxlength:200
            }
        },
        messages: {
            name: {
                required: "名称不能为空",
                maxlength: "名称最大长度为50个字"
            }
        },

        submitHandler: function (form) {
            var type = document.getElementById("id_2");
            var ref = document.getElementById("id_4");
            if(type.value=="$ref" && ref.value=="") {
                layer.msg("请选择引用！");
                return ;
            }
            var res_id = "";
            $.ajax({
                url:$("#t-res").attr("action"),
                type:"POST",
                dataType: "json",
                data:$("#t-res").serialize(),
                async: false,
                success: function(data) {

                    var json = eval(data); //数组
                    var item = "";
                    if( json.result.header.errorCode=="00000" ){
                        res_id = json.result.dataSet.res_id;
                        console.log("res_" + res_id);
                        item = json.result.dataSet.def;
                        var processHtml='';
                        var $processDIV = $("#list-res");
                        processHtml=processHtml+'<tr class="text-c">';
                        processHtml=processHtml+    '<td class="wt10" style="padding-bottom: 30px"> <div class="check-box"> <input type="checkbox" name="check" value="' + res_id+ '"></div></td>';
                        processHtml=processHtml+    '<td class="text-l">'+document.getElementById("id_1").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("id_2").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("id_3").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("id_4").value+'</td>';
                        processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("id_5").value+'</td>';
                        processHtml=processHtml+    '<td class="td-manage"> ';
                        processHtml=processHtml+ '<a title="修改" href="${contextPath}/swagger/tty1?mt=2&oper=modify_res&res_id='+ json.result.dataSet.res_id +'&path_item_id=' + json.result.dataSet.path_item_id + '&docid=' +json.result.dataSet.docid+ '" data-title="修改" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>' ;
                        <%--processHtml=processHtml+ ' <a data-toggle="modal"  href="#myModal-${json.result.dataSet.res_id}" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>';--%>

                        processHtml=processHtml+       '</td>';
                        processHtml=processHtml+    '</tr>';
                        <%--processHtml=processHtml+    ' <div id="myModal-${res_id}" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"> <h3 id="myModalLabel">响应参数</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a> </div>';--%>
                        <%--processHtml=processHtml+    '<form action="${contextPath}/swagger/tty1?mt=2&oper=update_res&res=json" method="post" class="form form-horizontal" id="res-${res_id}">';--%>
                        <%--processHtml=processHtml+    ' <div class="modal-body" id="body-${item.id}"> <p>在这里我们可以修改我们的响应信息</p>';--%>
                        <%--processHtml=processHtml+    '   <input type="hidden" name="res_id"  value="${res_id}"> <input type="hidden" name="path_item_id" value="${item.pathItemId}"> <input type="hidden" name="docid" value="${result.dataSet.docid}">';--%>
                        <%--processHtml=processHtml+    '     <div class="row cl"> <label class="form-label col-xs-4 col-sm-3">名称：</label> <div class="formControls col-xs-8 col-sm-9"style="width: 350px"> <input id="name-${item.id}" type="text" name="name" value="${item.name}" class="input-text" autocomplete="off" placeholder="例：新增用户 | 删除饭店"> </div> </div> <div class="row cl"> <label class="form-label col-xs-4 col-sm-3">参数类型：</label> <div class="formControls col-xs-8 col-sm-9"style="width: 350px"> <span class="select-box"> <select class="select" size="1" name="type">';--%>
                        <%--processHtml=processHtml+    '     <c:choose><c:when test="${item.type=='string'}"> <option value="string" selected>string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='string'}"> <option value="string" selected>string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='boolean'}"> <option value="string" >string</option> <option value="boolean"selected>boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='int'}"> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int"selected>int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='long'}"> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long"selected>long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='float'}"> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float"selected>float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='decimal'}"> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal"selected>decimal</option> <option value="file">file</option> <option value="$ref">$ref</option></c:when><c:when test="${item.type=='file'}"> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file"selected>file</option> <option value="$ref">$ref</option></c:when><c:otherwise> <option value="string" >string</option> <option value="boolean">boolean</option> <option value="int">int</option> <option value="long">long</option> <option value="float">float</option> <option value="decimal">decimal</option> <option value="file">file</option> <option value="$ref"selected>$ref</option></c:otherwise></c:choose> </select> </span> </div> </div> <div class="row cl"> <label class="form-label col-xs-4 col-sm-3">自定义结构：</label> <div class="formControls col-xs-8 col-sm-9" style="width: 350px"> <span class="select-box"> <select class="select" size="1" name="refId"><c:forEach var="ref" items="${result.dataSet.def}"><c:choose><c:when test="${ref.id==item.refId}"> <option value="${ref.id}" selected>${ref.userCode}</option></c:when><c:otherwise> <option value="${ref.id}">${ref.userCode}</option></c:otherwise></c:choose></c:forEach> </select> </span> </div> </div> <div class="row cl"> <label class="form-label col-xs-4 col-sm-3">是否数组</label> <div class="formControls col-xs-8 col-sm-9"style="width: 350px"> <span class="select-box"> <select id="id7" class="select" size="1" name="isarr" ><c:choose><c:when test="${item.isarr=='true'}"> <option value="0">否</option> <option value="1" selected>是</option></c:when><c:otherwise> <option value="0" selected>否</option> <option value="1">是</option></c:otherwise></c:choose> </select> </span> </div> </div> <br> <div class="row cl"  style="float: left"> <div class="form-label col-xs-4 col-sm-3"><a _href="javascript:;" data-title="添加三级属性" onClick="add_attribute_2(${item.id})" class="btn btn-primary size-S radius"><i class="Hui-iconfont">&#xe600;</i></a></div> </div><br>';--%>
                        <%--processHtml=processHtml+    ' <div id="attributeDIV_2${res_id}"><br>';--%>

                        <%--processHtml=processHtml+    '  <c:forEach var="info" items="${item.otherInfo}">';--%>
                        <%--processHtml=processHtml+    '   <div class="row cl">';--%>
                        <%--processHtml=processHtml+    '   <div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px">';--%>
                        <%--processHtml=processHtml+    '    <input type="text" style="margin-left: 30px"  class="input-text" name="p_name" placeholder="三级属性名称" value="${info.name}"/>';--%>
                        <%--processHtml=processHtml+    '    </div>';--%>
                        <%--processHtml=processHtml+    '   <div class="row cl">';--%>
                        <%--processHtml=processHtml+    '     <label class="form-label col-xs-4 col-sm-1">数组</label>';--%>
                        <%--processHtml=processHtml+    '     <div class="formControls col-xs-8 col-sm-9"style="width: 150px;margin-left: 10px;">';--%>
                        <%--processHtml=processHtml+    '     <span class="select-box">';--%>
                        <%--processHtml=processHtml+    '     <select class="select" size="1" name="p_arr" >';--%>
                        <%--processHtml=processHtml+    '     <c:choose>';--%>
                        <%--processHtml=processHtml+    '     <c:when test="${info.isArr=='true'}">';--%>
                        <%--processHtml=processHtml+    '     <option value="0">否</option>';--%>
                        <%--processHtml=processHtml+    '    <option value="1" selected>是</option></c:when><c:otherwise> <option value="0" selected>否</option> <option value="1">是</option></c:otherwise></c:choose> </select> </span> </div> </div> <div class="form-label col-xs-3 col-sm-4" style="margin-left: 50px"> <input type="text" style="margin-left: 30px"  class="input-text" name="p_desc" placeholder="描述" value="${info.description}"/> </div> <div class="formControls col-xs-9 col-sm-6"> <span class="select-box" style="width: 150px; margin-left:50px"> <select class="select" size="1" name="p_ref"> <option value="" id="select">请选择</option><c:forEach var="ref" items="${result.dataSet.def}">';--%>
                        <%--processHtml=processHtml+    '       <c:choose>';--%>
                        <%--processHtml=processHtml+    '    <c:when test="${info.refId==ref.id}">';--%>
                        <%--processHtml=processHtml+    '     <option value="${ref.id}" selected="selected">${ref.userCode}</option>';--%>
                        <%--processHtml=processHtml+    '     </c:when>';--%>
                        <%--processHtml=processHtml+    '     </c:choose>';--%>
                        <%--processHtml=processHtml+    '     <option value="${ref.id}">${ref.userCode}</option>';--%>
                        <%--processHtml=processHtml+    '    </c:forEach>';--%>
                        <%--processHtml=processHtml+    '    </select>';--%>
                        <%--processHtml=processHtml+    '    </span>';--%>

                        <%--processHtml=processHtml+    '   <a href="javascript:;" onclick="del_attribute(this.parentNode.parentNode)" class="btn btn-danger size-S radius" style="float: right">';--%>
                        <%--processHtml=processHtml+    '   <i class="Hui-iconfont">&#xe6e2;</i></a> </div>';--%>
                        <%--processHtml=processHtml+    ' <div class="col-xs-9 col-xs-offset-3 col-sm-1"> </div> </div>';--%>
                        <%--processHtml=processHtml+ '</c:forEach></div>';--%>
                            <%--processHtml=processHtml+    '  <br><br>';--%>
                            <%--processHtml=processHtml+    '     <div class="row cl">';--%>
                            <%--processHtml=processHtml+    '    <label class="form-label col-xs-4 col-sm-3">响应参数描述：</label>';--%>
                            <%--processHtml=processHtml+    ' <div class="formControls col-xs-8 col-sm-9"style="width: 350px">';--%>
                            <%--processHtml=processHtml+    '    <textarea class="textarea" id="description-${item.id}" placeholder="说点什么...最少输入10个字符" name="description" onKeyUp="$.Huitextarealength(this,500)">${item.description}</textarea>';--%>
                            <%--processHtml=processHtml+    '    <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>';--%>
                            <%--processHtml=processHtml+    '   </div> </div> <div class="row cl"> <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3"> <input class="btn btn-primary radius" type="button" onclick="update_res('${item.id}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;"> <button class="btn" data-dismiss="modal" aria-hidden="true">&nbsp;&nbsp;关闭&nbsp;&nbsp;</button> </div> </div> </div> </form> </div>';--%>
                        $processDIV.prepend(processHtml);
                        layer.msg('添加响应成功');
                        $('.icheck input').iCheck({
                            checkboxClass: 'icheckbox-blue',
                            increaseArea: '20%'
                        });
                        var myModal = document.getElementById("t-res");
                        var inputs = myModal.getElementsByTagName("input");
                        for(var i = 5; i < inputs.length - 3; i++) {
                            inputs[i].value="";
                        }
                        var id_2_1 = document.getElementById("id_2_1");
                        id_2_1.setAttribute("selected", "selected");
                        var id_4_1 = document.getElementById("id_4_1");
                        id_4_1.setAttribute("selected", "selected");
                        var id_5_1 = document.getElementById("id_5_1");
                        id_5_1.setAttribute("selected", "selected");
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
    function formReset(obj) {
        //重置上传图片预览
        $('#fileList').html("");
        //重置编辑器内容
        ue.execCommand('cleardoc');
    }

    function checkPicType() {
        if (document.getElementById("subType").value == "-1") {
            layer.msg('请选择要上传的图片类型');
            return false;
        }
    }
</script>
</body>
</html>