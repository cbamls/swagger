<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="tabBar cl"><span>基本信息</span><span>请求信息</span><span>响应信息</span></div>

        <!--------------------------------基本信息--------------------------------------------------------------->
        <div class="tabCon" style="width: 1000px">
            <form id="basic-form" action="${contextPath}/swagger/tty1?mt=2&res=json" method="post" onreset='formReset(this);' class="form form-horizontal">
                <input type="hidden" name="oper" value="update_path">
                <input type="hidden" name="docid" value="${result.dataSet.pathInfo.docid}">
                <input type="hidden" name="path_id" value="${result.dataSet.pathInfo.path_id}">
                <input type="hidden" name="id" value="${result.dataSet.pathInfo.id}">
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">接口编码</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" value="${result.dataSet.pathInfo.interCode}" class="input-text" id="intercode" name="interCode"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">接口名称</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" value="${result.dataSet.pathInfo.summary}" class="input-text" id="summary" name="summary"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <div class="form-label col-xs-3 col-sm-2">请求Url</div>
                    <div class="formControls col-xs-9 col-sm-9">
                        <input type="text" class="input-text" name="path" value="${result.dataSet.pathInfo.path}"/>
                    </div>
                    <div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">应用层协议：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <span class="select-box">
									<select class="select" size="1" name="app_protocol">
                                         <c:choose>
                                             <c:when test="${result.dataSet.pathInfo.app_protocol==http}">
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
                                             <c:when test="${result.dataSet.pathInfo.protocol==get}">
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
                                                 <c:when test="${tag.id==result.dataSet.pathInfo.tag}">
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
									<select class="select" size="1" name="produce">
                                        <c:choose>
                                            <c:when test="${result.dataSet.pathInfo.produce=='application/json'}">
                                                <option value="application/json" selected>
                                                    application/json
                                                </option>
                                            </c:when>
                                            <c:when test="${result.dataSet.pathInfo.produce=='application/x-www-form-urlencoded'}">
                                                <option value="application/x-www-form-urlencoded" selected>
                                                    application/x-www-form-urlencoded
                                                </option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="multipart/form-data" selected>multipart/form-data</option>
                                                <option value="multipart/form-data">multipart/form-data</option>
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
									<select class="select" size="1" name="consume">
										<option value="application/json" selected>application/json</option>
										<option value="application/x-www-form-urlencoded">application/x-www-form-urlencoded</option>
                                        <option value="multipart/form-data">multipart/form-data</option>
									</select>
                        </span>
                    </div>
                </div>
                <%--<div class="row cl">--%>
                    <%--<div class="form-label col-xs-3 col-sm-2">模块描述</div>--%>
                    <%--<div class="formControls col-xs-9 col-sm-9">--%>
                        <%--<textarea id="contentEditor" name="description" id="description">${result.dataSet.pathInfo.description}</textarea>--%>
                    <%--</div>--%>
                    <%--<div class="col-xs-9 col-xs-offset-3 col-sm-1"></div>--%>
                <%--</div>--%>
                <div class="row cl">
                    <label class="form-label col-xs-3 col-sm-2">模块描述：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea class="textarea"  placeholder="说点什么..." name="description" onKeyUp="$.Huitextarealength(this,500)">${result.dataSet.pathInfo.description}</textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
                    </div>
                </div>
                <div class="row cl">
                    <div class="col-xs-9 col-sm-10 col-xs-offset-3 col-sm-offset-2">
                        <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;"
                               id="submitT">
                        <input class="btn btn-secondary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;">
                    </div>
                </div>
            </form>
        </div>

        <!--------------------------------------------请求信息-------------------------------------------------->

        <div class="tabCon">
            <div class="page-container">
                <form id="t-req" class="text-l" method="post" action="${contextPath}/swagger/tty1?res=json">
                    <input type="hidden" name="path_item_id" value="${result.dataSet.pathInfo.id}"/>
                    <input type="hidden" name="mt" value="2"/>
                    <input type="hidden" name="oper" value="addreq"/>
                    名称<input id="t_name" type="text" name="name" value="" class="input-text radius size-M" style="width: 100px" placeholder="参数名" value="${result.dataSet.searchName}">
                    参数位置
          <span class="select-box " style="width: 100px">
             <select id="t_location" class="select" size="1" name="location">
                 <option value="query">query</option>
                 <option value="path">path</option>
                 <option value="formData">formData</option>
                 <option value="path">body</option>
                 <option value="path">header</option>
            </select>
          </span> &nbsp; &nbsp; &nbsp;
                    参数类型
           <span class="select-box" style="width: 100px">
                        <select id="t_type" class="select" size="1" name="type">
                  <option value="string">string</option>
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
                         <select id="t_def" class="select" size="1" name="refid">
                               <c:forEach var="ref" items="${result.dataSet.def}">
                                   <option value="${ref.id}">${ref.json}</option>
                               </c:forEach>
                         </select>
                     </span>
                    描述
                    <input id="t_desc" type="text" name="description" class="input-text radius size-M" style="width: 100px" placeholder="参数名" value="${result.dataSet.searchName}">

                    是否必填
                   <span class="select-box" style="width: 100px">
                                <select id="t_isreq"class="select" size="1" name="isrequired">
                                  <option value="0">否</option>
                                  <option value="1">是</option>
                       </select>
                    </span>

                    <!-----------------------------------------------弹出框内容------------------------------------------------------->

                    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-header">
                            <h3 id="myModalLabel">这里填写一些不常用的约束</h3><a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
                        </div>
                        <div class="modal-body">
                            <p>不用解释的</p>

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">是否数组</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <span class="select-box">
                                                <select id="t_arr" class="select" size="1" name="isarr">
                                                    <option value="0">否</option>
                                                    <option value="1">是</option>
                                                </select>
                                    </span>
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">  最大值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="t_max"type="text" class="input-text" placeholder="最大数值" name="valueMax">
                                </div>
                            </div>

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3"> 最小值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="t_min"type="text" class="input-text" placeholder="最小数值" name="minValue">
                                </div>
                            </div>

                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">默认值</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="t_defa"type="text" class="input-text" placeholder="默认值" name="defa">
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">最大长度</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="t_max_length" type="text" class="input-text" placeholder="最大长度" name="maxLength">
                                </div>
                            </div>
                            最小长度
                            <div class="row cl">
                                <label class="form-label col-xs-4 col-sm-3">最小长度</label>
                                <div class="formControls col-xs-8 col-sm-9">
                                    <input id="t_min_length"type="text" class="input-text" placeholder="最小长度" name="minLength" >
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">确定</button><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                        </div>
                    </div>
                    <a data-toggle="modal" href="#myModal" class="btn btn-primary size-L">更多</a>

                    <br>

                    <hr><div></div><br><br>
                    <input type="button" onclick="add_attribute(this.parentNode)" class="btn btn-primary size-L" value="保存">
                </form>

                <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
                    <thead>
                    <tr>
                        <th scope="col" colspan="15">
                        <span class="l">

                            <a href="javascript:;" onclick="state_batch(0,1)" class="btn btn-secondary size-S radius">
                                <i class="Hui-iconfont">&#xe6e2;</i> 复制接口</a>

                        <%--<a _href="/rest/alter" data-title="新增请求" onClick="Hui_admin_tab(this);"--%>
                           <%--class="btn btn-success radius"><i class="Hui-iconfont">&#xe600;</i> 新增请求</a>--%>

                            <a href="javascript:;" onclick="del_batch()" class="btn btn-danger radius">
                                <i class="Hui-iconfont">&#xe6e2;</i> 删除请求</a>
                        </span>
                            <a class="btn btn-success radius r" style="line-height:1.6em"
                               href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">
                                &#xe68f;</i></a>

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
                    <c:forEach var="rest" items="${result.dataSet.searchInfo}">
                        <tr class="text-c ">
                            <td class="wt10" style="padding-bottom: 30px">
                                <div class="check-box">
                                    <input type="checkbox" name="check" value="${rest.id}">
                                </div>

                            </td>
                            <td class="text-l">${rest.name}</td>
                            <td class="text-l wt30" id="state${rest.id}">
                                <c:choose>
                                    <c:when test="${rest.state==1}">
                                        下架
                                    </c:when>
                                    <c:otherwise>
                                        上架
                                    </c:otherwise>

                                </c:choose>
                            </td>
                            <td class="text-l wt30" id="evaluateId${rest.id}">
                                <c:choose>
                                    <c:when test="${rest.evaluateId==1}"> *
                                    </c:when>
                                    <c:when test="${rest.evaluateId==2}"> **
                                    </c:when>
                                    <c:when test="${rest.evaluateId==3}"> ***
                                    </c:when>
                                    <c:when test="${rest.evaluateId==4}"> ****
                                    </c:when>
                                    <c:otherwise> *****
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-l wt50">${rest.restSort}</td>
                            <td class="text-l wt30">${rest.hours}</td>
                            <td class="text-l wt30">${rest.consumption}</td>
                            <td class="htext-l wt30">${rest.linkPhone}</td>
                            <td class="text-l wt50">${rest.address}</td>
                            <td class="text-l wt50">${rest.description}</td>
                            <td class="text-l wt50">${rest.remark}</td>
                            <td class="text-l wt50">${rest.timeStr}</td>
                            <td class="text-l wt50">${rest.updateTimeStr}</td>

                            <td class="td-manage">
                                <a title="修改" _href="${contextPath}/rest/alter?mt=2&oper=searchId&id=${rest.id}"
                                   data-title="修改商品" onClick="Hui_admin_tab(this);" class="ml-5"
                                   style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
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
                <form id="search-form" class="text-l" method="get" action="${contextPath}/rest/alter?mt=2&res=json">
                    <input type="hidden" name="mt" value="2"/>
                    <input type="hidden" name="oper" value="search"/>
                    名称
                    <input type="text" value="" name="name" id="name" class="input-text radius size-M"
                           style="width: 100px" placeholder="名称" value="${result.dataSet.searchName}">
                    <input id="page-no" name="page" type="hidden" value="1">&nbsp; &nbsp; &nbsp; &nbsp;
                    参数类型
                    <span class="select-box " style="width: 100px">
                          <select class="select" size="1" name="sort">
                            <option value="">选择分类</option>
                            <c:forEach var="sort" items="${result.dataSet.sort}">
                                <option value="${sort.id}">${sort.name}</option>
                            </c:forEach>
                          </select>
                     </span>
                    自定义
                     <span class="select-box " style="width: 100px">
                          <select class="select" size="1" name="sort">
                            <option value="">选择分类</option>
                            <c:forEach var="sort" items="${result.dataSet.sort}">
                                <option value="${sort.id}">${sort.name}</option>
                            </c:forEach>
                          </select>
                     </span> &nbsp; &nbsp; &nbsp; &nbsp;
                    是否数组
                     <span class="select-box" style="width: 100px">
                          <select class="select" size="1" name="sts">
                             <option value="">选择状态</option>
                             <option value="0">上架</option>
                             <option value="1">下架</option>
                          </select>
                     </span>
                </form>

                <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
                    <thead>
                    <tr>
                        <th scope="col" colspan="15">
                            <span class="l">
                                <a href="javascript:;" onclick="state_batch(0,1)" class="btn btn-secondary size-S radius"><i class="Hui-iconfont">&#xe6e2;</i> 复制接口</a>
                                <a _href="/rest/alter" data-title="新增响应" onClick="Hui_admin_tab(this);" class="btn btn-success radius"><i class="Hui-iconfont">&#xe600;</i> 新增响应</a>
                                <a href="javascript:;" onclick="del_batch()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 删除响应</a>
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
                        <th class="htext-l wt30">自定义</th>
                        <th class="htext-l wt30">是否数组</th>
                        <th class="text-l wt50">更新时间</th>
                        <th class="wt60">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="rest" items="${result.dataSet.searchInfo}">
                        <tr class="text-c ">
                            <td class="wt10" style="padding-bottom: 30px">
                                <div class="check-box">
                                    <input type="checkbox" name="check" value="${rest.id}">
                                </div>
                            </td>
                            <td class="text-l">${rest.name}</td>
                            <td class="text-l wt30" id="state${rest.id}">
                                <c:choose>
                                    <c:when test="${rest.state==1}">
                                        下架
                                    </c:when>
                                    <c:otherwise>
                                        上架
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-l wt30" id="evaluateId${rest.id}">
                                <c:choose>
                                    <c:when test="${rest.evaluateId==1}"> *
                                    </c:when>
                                    <c:when test="${rest.evaluateId==2}"> **
                                    </c:when>
                                    <c:when test="${rest.evaluateId==3}"> ***
                                    </c:when>
                                    <c:when test="${rest.evaluateId==4}"> ****
                                    </c:when>
                                    <c:otherwise> *****
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td class="text-l wt50">${rest.restSort}</td>
                            <td class="text-l wt30">${rest.hours}</td>
                            <td class="text-l wt30">${rest.consumption}</td>
                            <td class="htext-l wt30">${rest.linkPhone}</td>
                            <td class="text-l wt50">${rest.address}</td>
                            <td class="text-l wt50">${rest.description}</td>
                            <td class="text-l wt50"><img src="${rest.imgUrl}" style="width:120px"></td>
                            <td class="td-manage">
                                <a title="修改" _href="${contextPath}/rest/alter?mt=2&oper=searchId&id=${rest.id}"
                                   data-title="修改商品" onClick="Hui_admin_tab(this);" class="ml-5"
                                   style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                                <!--<a title="删除" href="javascript:;" onclick="admin_del(this,'')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>-->
                            </td>
                        </tr>
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
    function del_batch(){
        var url="${contextPath}/swagger/tty1?mt=2&res=json&oper=del_req";
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

    function add_attribute(){
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
                    layer.msg('添加请求成功');
                    var processHtml='';
                    var $processDIV = $("#list-req");
                    processHtml=processHtml+'<tr class="text-c">';
                    processHtml=processHtml+    '<td class="wt10" style="padding-bottom: 30px"> <div class="check-box"> <input type="checkbox" name="check" value="' + req_id+ '"></div></td>';
                    processHtml=processHtml+    '<td class="text-l">'+document.getElementById("t_name").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_location").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_type").value +'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_desc").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_def").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_arr").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_isreq").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_defa").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_max").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_min").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_max_length").value+'</td>';
                    processHtml=processHtml+    '<td class="text-l"> '+document.getElementById("t_min_length").value+'</td>';
                    processHtml=processHtml+    '<td class="td-manage"> ';
                    processHtml=processHtml+ '<a title="修改" href="${contextPath}/swagger/tty1?mt=2&oper=modify_req_init&req_id='+ json.result.dataSet.req_id +'&path_item_id=' + json.result.dataSet.path_item_id + '&docid=' +json.result.dataSet.docid+ '" data-title="修改商品" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>' ;
                    processHtml=processHtml+       '</td>';
                    processHtml=processHtml+    '</tr>';

                    $processDIV.prepend(processHtml);
                    $('.icheck input').iCheck({
                        checkboxClass: 'icheckbox-blue',
                        increaseArea: '20%'
                    });

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

    $(function () {
        $('.icheck input').iCheck({
            checkboxClass: 'icheckbox-blue',
            increaseArea: '20%'
        });
    });

    $(function () {
        $.Huitab("#tab_demo .tabBar span", "#tab_demo .tabCon", "current", "click", "0");
    });

    var ue = UE.getEditor('contentEditor', {serverUrl: "http://multi.hearglobal.com/multi/uploadPic?mt=2&res=json"});


    function del_req(param) {
        param.parent.removeChild(param);
    }
    /*前端表单校验*/
    $("#basic-form").validate({
        rules: {
            name: {
                required: true,
                maxlength: 100
            }
        },
        messages: {
            username: {
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

                    var json = eval(data); //数组

                    if (json.result.header.errorCode == "00000") {
                        layer.msg('提交成功');
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