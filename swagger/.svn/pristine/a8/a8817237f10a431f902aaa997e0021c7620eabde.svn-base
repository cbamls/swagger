<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="taglib.jsp" %>
<!-- 获取激活菜单及菜单目录 sidebar breadcrumbs 会使用此变量-->
<c:set var="unionToken" value="${cookie.UnionToken==null?'':cookie.UnionToken.value}"/>
<s:eval expression="T(org.leafframework.util.CommonUtil).getMenus(unionToken)" var="menus"/>
<s:eval expression="T(org.leafframework.util.CommonUtil).getModules(unionToken)" var="modules"/>
<c:forEach var="module" items="${modules}">
    <c:if test="${fn:contains(result.requestURI,module.url)}">
        <c:set var="ActiveModule" value="${module.id}"/>
        <c:set var="ActiveModuleName" value="${module.name}"/>
        <c:set var="ActiveModuleUrl" value="${module.url}"/>
        <c:set var="ActiveMenu" value="${module.menuId}"/>
    </c:if>
</c:forEach>
<div id="sidebar">
    <ul>
        <c:choose>
            <c:when test="${empty ActiveModule}">
                <c:set var="dashboardstatus" value="active"/>
            </c:when>
            <c:otherwise>
                <c:set var="dashboardstatus" value=""/>
            </c:otherwise>
        </c:choose>
        <li><a href="${contextPath}/manager/sysman/HomePage.htm">
            <span>系统监控中心 </span>
        </a>
        </li>
        <c:forEach var="menu" items="${menus}">
            <c:choose>
                <c:when test="${menu.id == ActiveMenu}">
                    <c:set var="menustatus" value="active open"/>
                </c:when>
                <c:otherwise>
                    <c:set var="menustatus" value=""/>
                </c:otherwise>
            </c:choose>
            <li>
                <a href="#">
                    <span class="menu-text">${menu.name} </span>
                </a>
                <ul>
                    <c:forEach var="module" items="${modules}">
                        <c:choose>
                            <c:when test="${module.id == ActiveModule}">
                                <c:set var="modulestatus" value="active"/>
                            </c:when>
                            <c:otherwise>
                                <c:set var="modulestatus" value=""/>
                            </c:otherwise>
                        </c:choose>
                        <c:if test="${menu.id == module.menuId}">
                            <li>
                                <a href="${contextPath}${module.url}">
                                        ${module.name}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>
            </li>
        </c:forEach>
    </ul>

</div>