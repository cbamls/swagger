<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <LINK rel="Bookmark" href="/favicon.ico">
    <LINK rel="Shortcut Icon" href="/favicon.ico"/>
    <!--[if lt IE 9]>
    <script src="http://g.hearglobal.com/resources/lib/html5.js"></script>
    <script src="http://g.hearglobal.com/resources/lib/respond.min.js"></script>
    <script src="http://g.hearglobal.com/resources/lib/PIE_IE678.js"></script>
    <![endif]-->
    <link href="http://g.hearglobal.com/resources/css/H-ui.min.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/css/H-ui.admin.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/lib/icheck/icheck.css" rel="stylesheet">
    <link href="http://g.hearglobal.com/resources/skin/hear/skin.css" rel="stylesheet" id="skin">
    <link href="http://g.hearglobal.com/resources/css/style.css" rel="stylesheet">
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>hearAdmin</title>
    <meta name="keywords" content="鼓岛买管理平台">
    <meta name="description" content="鼓岛买管理平台">
</head>
<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container cl">
            <a class="logo navbar-logo f-l mr-10 hidden-xs" href="http://local.hearglobal.com">鼓岛买接口管理中心</a>
            <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="#">鼓岛买</a>
            <%--<span class="logo navbar-slogan f-l mr-10 hidden-xs">电商 &middot; 餐饮 &middot; 旅游</span>--%>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
            <nav class="nav navbar-nav nav-collapse" role="navigation" id="Hui-navbar">
                <ul class="cl">
                    <li  class="current"><a href="">接口管理</a></li>


                </ul>
            </nav>
            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li>管理员</li>
                    <li class="dropDown dropDown_hover">
                        <a href="#" class="dropDown_A">guanliyuan<i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">

                            <li><a href="">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-msg"><a href="#" title="消息">
                        <span class="badge badge-danger">1</span>
                        <i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a></li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover">
                        <a href="javascript:;" class="dropDown_A" title="换肤">
                            <i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i>
                        </a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" data-val="default" title="黑色">黑色</a></li>
                            <li><a href="javascript:;" data-val="hear" title="Hear（默认）">Hear（默认）</a></li>
                            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<aside class="Hui-aside">
    <input runat="server" id="divScrollValue" type="hidden" value=""/>
    <div class="menu_dropdown bk_2">
        <dl id="menu-admin">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 接口管理中心 <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=1&oper=cbam_6" data-title="生成数据" href="javascript:void(0)">生成数据</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=2&oper=find_def&docid=${result.dataSet.docid}" data-title="自定义结构" href="javascript:void(0)">自定义结构</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve" data-title="项目信息" href="javascript:void(0)">项目信息</a></li>--%>

                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=2&oper=doc&docid=${result.dataSet.docid}" data-title="基本信息" href="javascript:void(0)">基本信息</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/tty1?mt=2&oper=find_tag&docid=${result.dataSet.docid}" data-title="Tag" href="javascript:void(0)">标签管理</a></li>--%>
                <%--</ul>--%>
                <ul>
                    <li><a _href="/swagger/solve?mt=2&oper=find_user" data-title="开发者" href="javascript:void(0)">开发者</a></li>
                </ul>

                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=2&oper=find_path_list&docid=${result.dataSet.docid}" data-title="编辑接口" href="javascript:void(0)">编辑接口</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=1&oper=cbam_4" data-title="三个选项卡" href="javascript:void(0)">三个选项卡</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=1&oper=cbam_7" data-title="变更历史" href="javascript:void(0)">变更历史</a></li>--%>
                <%--</ul>--%>
                <%--<ul>--%>
                    <%--<li><a _href="/swagger/solve?mt=1&oper=cbam_1" data-title="参考文档" href="javascript:void(0)">参考文档</a></li>--%>
                <%--</ul>--%>

            </dd>
        </dl>

    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<section class="Hui-article-box">
    <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
        <div class="Hui-tabNav-wp">
            <ul id="min_title_list" class="acrossTab cl">
                <li class="active"><span title="我的桌面" data-href="">我的桌面</span><em></em></li>
            </ul>
        </div>
        <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S"
                                                  href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
                id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">
            &#xe6d7;</i></a></div>
    </div>
    <div id="iframe_box" class="Hui-article">
        <div class="show_iframe">
            <div style="display:none" class="loading"></div>
            <iframe scrolling="yes" frameborder="0" src="/swagger/solve?mt=2&oper=getDocAndUser"></iframe>
        </div>
    </div>
</section>
<script src="http://g.hearglobal.com/resources/lib/jquery/1.9.1/jquery.min.js"></script>
<script src="http://g.hearglobal.com/resources/lib/layer/2.1/layer.js"></script>
<script src="http://g.hearglobal.com/resources/js/H-ui.js"></script>
<script src="http://g.hearglobal.com/resources/js/H-ui.admin.js"></script>
</body>
</html>
