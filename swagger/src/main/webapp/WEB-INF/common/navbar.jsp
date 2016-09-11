<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="navbar" >
    <ul>
        <li class="light-blue">
            <span>
                <small>欢迎,</small>
                <s:eval expression="T(org.leafframework.util.CommonUtil).getStaffName(\"李文武\")"
                        var="staffName"/>
                ${staffName}
			</span>
        </li>

        <li>
            <a href="${contextPath}/sysman/login?mt=2&f=logout">
                退出登录
            </a>
        </li>

    </ul>

</div>
