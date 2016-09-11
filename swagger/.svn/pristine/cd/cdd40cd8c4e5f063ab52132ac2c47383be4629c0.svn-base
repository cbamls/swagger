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

    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">

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
    <style type="text/css">
        /*默认状态*/
        .input-text,.textarea{box-sizing:border-box;border:solid 1px #ddd;width:100%;
            -webkit-transition:all 0.2s linear 0s;
            -moz-transition:all 0.2s linear 0s;
            -o-transition:all 0.2s linear 0s;
            transition:all 0.2s linear 0s}
        .textarea{ height:auto; font-size:14px; padding:4px}
        .input-text:hover,.textarea:hover{border: solid 1px #3bb4f2}
        /*得到焦点后*/
        .input-text.focus,textarea.focus{border:solid 1px #0f9ae0 \9;border-color:rgba(82,168,236,0.8);box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(102, 175, 233, 0.6)}
        /*不可点击*/
        .input-text.disabled,.textarea.disabled,.input-text.disabled.focus,.textarea.disabled.focus{background-color:#ededed; cursor:default;border-color: #ddd;
            -webkit-box-shadow:inset 0 2px 2px #e8e7e7;
            -moz-box-shadow:inset 0 2px 2px #e8e7e7;
            box-shadow:inset 0 2px 2px #e8e7e7}
        /*只读状态*/
        .input-text.disabled,.textarea.disabled{background-color:#e6e6e6; cursor:default}
        /*阴影*/
        .input-text.box-shadow,.textarea.box-shadow{-ms-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075)}
    </style>
</head>
<body>

<div class="page-container">
    <div id ="wrap"  class="panel panel-default">
        <div class="panel-header">开发者</div>
        <div class="panel-body">

            <form action="${contextPath}/swagger/tty1?mt=2&oper=add_user&res=json" method="post" class="form form-horizontal" id="user-info">
                <legend>在这里新增用户</legend>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">姓名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="字母/中文/数字/下划线" name="name" id="username">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">邮箱：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="@" name="email" id="email">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">个人主页 ：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="url" name="per_url" id="per_url">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">手机号 ：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="手机号" name="phone" id="phone">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-3">备注信息 ：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" placeholder="备注" name="remark" id="remark">
                    </div>
                </div>
                <div class="row cl">
                    <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                        <input class="btn btn-primary" type="button" onclick="isEmail(document.getElementById('email').value)" value="&nbsp;&nbsp;新增&nbsp;&nbsp;">
                    </div>
                </div>
            </form>


            <table class="table table-border table-bordered table-hover table-bg table-sort mt-20 icheck">
                <thead class="icheck">
                <tr>
                    <th scope="col" colspan="15">
                <span class="l">
                    <a href="javascript:;" onclick="del_batch()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 删除人员</a>
                </span>
                        <a class="btn btn-success radius r" style="line-height:1.6em" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
                    </th>
                </tr>

                <tr class="text-c">
                    <th class="wt10" style="padding-bottom: 30px">
                        <%--<div class="check-box"><input type="checkbox" name="" value=""></div>--%>
                  #
                    </th>
                    <th class="text-l wt40">用户名</th>
                    <th class="text-l wt40">邮箱</th>
                    <th class="htext-l wt30">个人主页</th>
                    <th class="htext-l wt40">手机号</th>
                    <th class="text-l wt50">备注</th>
                    <th class="htext-l wt30">注册时间</th>
                    <%--<th class="wt60">操作</th>--%>
                </tr>
                </thead>
                <tbody class="icheck">
                <c:forEach var="item" items="${result.dataSet.user_list}">
                    <tr class="text-c ">
                        <td class="wt10" style="padding-bottom: 30px">
                            <div class="check-box icheck"><input type="checkbox" name="check" value="${item.id}"></div>
                        </td>
                        <td class="text-l wt30">${item.name}</td>
                        <td class="text-l">${item.email}</td>
                        <td class="text-l">${item.url}</td>
                        <td class="text-l">${item.phone}</td>
                        <td class="text-l">${item.remark}</td>
                        <td class="text-l">${item.regTime}</td>
                        <%--<td class="td-manage">--%>
                            <%--&lt;%&ndash;<a data-toggle="modal" href="${contextPath}/swagger/tty1?mt=2&oper=find_inter_info&path=${item.path}&path_id=${item.pathId}&id=${item.id}&docid=${item.docid}" class="btn btn-primary size-L">修改</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<a onclick="modify(${item.id}, ${item.pathItemId})" data-toggle="modal" href="#myModal2" class="btn btn-primary size-L">修改</a>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<a title="修改" _href="${contextPath}/rest/alter?mt=2&oper=searchId&id=${rest.id}" data-title="修改商品" onClick="Hui_admin_tab(this);" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;%&gt;--%>
                            <%--<!--<a title="删除" href="javascript:;" onclick="admin_del(this,'')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>-->--%>
                        <%--</td>--%>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

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
<script type="text/javascript" src="http://g.hearglobal.com/resources/lib/icheck/jquery.icheck.min.js"></script>

<script type="text/javascript">
    var ue = UE.getEditor('contentEditor', {serverUrl: "http://multi.hearglobal.com/multi/uploadPic?mt=2&res=json"});
    function del_batch(){
        var url="${contextPath}/swagger/tty1?mt=2&res=json&oper=del_user";
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
    $(function(){
        $('.icheck input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });
    });
    function isEmail(str){
        var name = document.getElementById("username");
        if(name.value=="") {
            layer.msg("填写名称！");
            document.getElementById("username").focus();
            return false;
        }
        var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
        if(str!=""&&!reg.test(str)) {
            layer.msg("邮箱无效！");
            return false;
        }
        var sMobile = document.getElementById("phone").value;
        if(sMobile!=""&&!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile))){
            layer.msg("手机号无效！");
            document.getElementById("phone").focus();
            return false;
        }

        var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
                + "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@
                + "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
                + "|" // 允许IP和DOMAIN（域名）
                + "([0-9a-z_!~*'()-]+\.)*" // 域名- www.
                + "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名
                + "[a-z]{2,6})" // first level domain- .com or .museum
                + "(:[0-9]{1,4})?" // 端口- :80
                + "((/?)|" // a slash isn't required if there is no file name
                + "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
        var re=new RegExp(strRegex);
        var str_url = document.getElementById("per_url").value;
        if (str_url!="" && !re.test(str_url)){
            layer.msg("无效网址！");
            document.getElementById("per_url").focus();
        }
        $.ajax({
            url:$("#user-info").attr("action"),
            type:"POST",
            dataType: "json",
            data:$("#user-info").serialize(),
            async: true,
            success: function(data) {

                var json = eval(data); //数组

                if( json.result.header.errorCode=="00000" ){
                    layer.msg('提交成功');
                    location.reload(true);
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
//    /*前端表单校验*/
//    $("#user-info").validate({
//        rules:{
//            name:{
//                required:true,
//                maxlength:100
//            },
//            phone:{
//                maxlength:18
//            }
//        },
//        messages:{
//            name:{
//                required: "名称不能为空",
//                maxlength: "名称最大长度为50个字"
//            }
//        },
//
//        submitHandler:function(form){
//
//            $.ajax({
//                url:$("#user-info").attr("action"),
//                type:"POST",
//                dataType: "json",
//                data:$("#user-info").serialize(),
//                async: true,
//                success: function(data) {
//
//                    var json = eval(data); //数组
//
//                    if( json.result.header.errorCode=="00000" ){
//                        layer.msg('提交成功');
//                        location.reload(true);
//                    }else{
//                        layer.alert('发生错误:'+json.result.header.errorMsg, {
//                            skin: 'layui-layer-lan'
//                            ,closeBtn: 0
//                            ,shift: 4 //动画类型
//                        });
//                    }
//
//                },error: function(XMLHttpRequest,textStatus,errorThrown,data) {
//                    layer.msg("error:"+errorThrown+"   "+"textStatus:"+textStatus);
//
//                }
//            });
//
//
//        }
//    });

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