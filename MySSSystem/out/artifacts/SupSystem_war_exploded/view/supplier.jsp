<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/11
  Time: 9:20 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    response.setCharacterEncoding("utf-8");
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>

<head>
    <title>惠兴超市|供货商管理</title>
    <style>
    </style>
</head>
<jsp:include page="top.jsp"/>
<div class="col-lg-12 mb-4" style="margin: 0 auto;">
    <div class="card">
        <div class="card-header">
            <h4 class="text-uppercase mb-3">供应商信息</h4>
            <form action="/CallSearchSupplierServlet" method="get">
                <div class="input-group" style="width: 500px; float: left">
                    <input type="text" placeholder="搜索联系人关键字" name="keyword" class="form-control" value="${keyword}">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-primary search-sub">搜索</button>
                    </div>
                </div>
            </form>
            <div class="input-group-append" style="float: right;">
                <button type="button" class="btn btn-primary">添加</button>
            </div>
        </div>
        <c:if test="${not empty sList}">
        <div class="card-body">
            <table class="table table-striped table-hover card-text" style="text-align: center">
                <thead>
                <tr>
                    <th>供应商ID</th>
                    <th>供应商</th>
                    <th>联系人</th>
                    <th>联系电话</th>
                    <th>创建时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${sList}" var="supplier" varStatus="vs">
                    <tr>
                        <th scope="row" >${supplier.sId}</th>
                        <td>${supplier.sName}</td>
                        <td>${supplier.sPeople}</td>
                        <td>${supplier.sPhone}</td>
                        <td>${supplier.sTime}</td>
                        <td>
                            <button class="btn btn-success btn-sm" onclick="javascript:add_data('${supplier.sId}:${supplier.sName}:${supplier.sPeople}:${supplier.sPhone}:${supplier.sTime}')">编辑</button>
                            <button class="btn btn-danger btn-sm" onclick="javascript:div_data('${supplier.sId}}')">删除</button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <c:if test="${allRecorders>0 && allRecorders !=1}">
            <ul class="pagination" style="color: green ;margin-left: 50px">
                <li class="page-item" id="last_li"><a class="page-link">上一页</a></li>
                <c:forEach begin="1" end="${allRecorders % 8 ==0 ? allRecorders/8 : allRecorders/8 + 1}" varStatus="vs">
                    <li class="page-item"><a class="page-link" href="/CallSearchSupplierServlet?currentPage=${vs.count}&searchType=${searchType}&keyword=${keyword}"><c:out value="${vs.count}"/></a></li>
                </c:forEach>
                <li class="page-item" id="next_li"><a class="page-link">下一页</a></li>
            </ul>
        </c:if>
        </c:if>
        <c:if test="${empty sList}">
            <span style="text-align: center; font-size: 20px; color: green; line-height: 50px;">未找到您所查询的数据。。。</span>
        </c:if>
        <div class="line" style="margin: 10px"></div>
    </div>
</div>


<script>
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg); //匹配目标参数
        if (r != null) return unescape(r[2]); return null; //返回参数值
    }

    // 分页显示
    var page = parseInt(getUrlParam('currentPage'));
    var newAddHref = "/CallSearchSupplierServlet?currentPage=" + (page + 1).toString() + "&searchType=${searchType}&keyword=${keyword}";
    var newVerbHref = "/CallSearchSupplierServlet?currentPage=" + (page - 1).toString() + "&searchType=${searchType}&keyword=${keyword}";
    $(function (){
        if (page <= 1) {
            $("#last_li").addClass("disabled");
            $("#next_li").click(function (){
                window.location.href = newAddHref;
            })
        } else if (!page) {
            $("#last_li").addClass("disabled");
            $("#next_li").addClass("disabled");
        } else if ( page >= ${allRecorders/8}) {
            $("#next_li").addClass("disabled");
            $("#last_li").click(function (){
                window.location.href = newVerbHref;
            })
        } else {
            $("#last_li").click(function (){
                window.location.href = newVerbHref;
            })
            $("#next_li").click(function (){
                window.location.href = newAddHref;
            })
        }
    });
</script>

<jsp:include page="bottom.jsp"/>
<%
    } else {    // 现在没有登录过
        response.sendRedirect("../login.jsp");
    }
%>