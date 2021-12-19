<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/11
  Time: 12:06 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>

<head>
    <title>惠兴超市|用户管理</title>
</head>

<jsp:include page="top.jsp"/>
<div class="col-lg-12 mb-4" style="margin: 0 auto;">
    <div class="card">
        <div class="card-header">
            <h4 class="text-uppercase mb-3">用户管理</h4>
            <div class="input-group" style="width: 500px; float: left">
                <%--                    关键字搜索--%>
                <input type="text" placeholder="搜索关键字" class="form-control">
                <div class="input-group-append"><button type="button" class="btn btn-primary">搜索</button>
                </div>
            </div>
            <div class="input-group-append" style="float: right;">
                <button type="button" class="btn btn-primary">添加</button>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover card-text" style="text-align: center">
                <thead>
                <tr>
                    <th>用户ID</th>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>加入时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${uList}" var="users" varStatus="vs">
                    <tr>
                        <th scope="row">${users.id}</th>
                        <td>${users.username}</td>
                        <td>${users.name}</td>
                        <td>${users.sex}</td>
                        <td>${users.phone}</td>
                        <td>${users.joinTime}</td>
                        <td>${users.status==1 ? "在职":"离职"}</td>
                        <td>
                            <button class="btn btn-success btn-sm">编辑</button>
                            <button class="btn btn-danger btn-sm">删除</button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <ul class="pagination" style="color: green ;margin-left: 50px">
            <li class="page-item"><a class="page-link" href="#">上一页</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">下一页</a></li>
        </ul>
        <div class="line" style="margin: 10px"></div>
    </div>
</div>

<jsp:include page="bottom.jsp"/>
<%
    } else {    // 现在没有登录过
        response.sendRedirect("../login.jsp");
    }
%>
