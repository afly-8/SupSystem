<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/10
  Time: 9:26 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>

<head>
    <title>Home</title>
</head>
<jsp:include page="top.jsp"/>

<img style="margin: 0 auto; width: 800px; height: 700px" src="img/illustration.svg">

<jsp:include page="bottom.jsp"/>
<%
    } else {    // 现在没有登录过
    response.setHeader("refresh", "0;url=../login.jsp");
%>
<p>未登陆，不允许进行程序访问！</p>
<%
    }
%>