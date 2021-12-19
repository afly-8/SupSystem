<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/10
  Time: 11:09 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bashPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>
<!DOCTYPE html>
<html>
<head>
<%--    <jsp:include page="resource.jsp"/>--%>
    <base href="<%=bashPath%>">
    <meta charset="utf-8">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
    <!-- Bootstrap CSS-->
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.blue.css" type="text/css" id="css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <%--    定义js--%>
    <script src="js/dream-msg.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://pv.sohu.com/cityjson?ie=utf-8" type="text/javascript"></script>
</head>
<body>
<script>
    $(document).ready( function (){
        $("#toggle--daynight").click(function () {
            $.get(
            "https://api.mcloc.cn/words/",
            function (res) {
                if (res.length>0) {
                    Dreamer.success("随机一句："+res + "！" , 5000);
                } else {
                    Dreamer.erro("接口请求失败！" , 3000);
                }
            })
        })
    })
</script>
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow" style="position:fixed;z-index: 10;width: 100%">
        <img class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead" style="width: 100px;" src="img/logoa.png">
        <a href="index.jsp" class="navbar-brand font-weight-bold text-uppercase text-base ">惠兴超市后台管理系统</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li>欢迎您！</li>
            <!-- 获取用户名 -->
            <li><strong class="d-block text-uppercase headings-font-family"><%=session.getAttribute("name")%></strong></li>
            <li class="nav-item dropdown ml-auto">

                <a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">
                    <img src="${sex == "男" ? "img/avatar-6.jpg":"img/avatar-5.jpg"}" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow">
                </a>
                <div aria-labelledby="userInfo" class="dropdown-menu">
                    <a href="#" class="dropdown-item">
                        <strong class="d-block text-uppercase headings-font-family">Hello!</strong><small>Web Developer</small></a>
                    <div class="dropdown-divider"></div><a href="view/logout.jsp" class="dropdown-item">退出登录</a>
                </div>
            </li>
            <li>
                <div class="toggle toggle--daynight">
                    <input name="change" type="checkbox" id="toggle--daynight" class="toggle--checkbox" value="1">
                    <label class="toggle--btn" for="toggle--daynight">
                        <span class="toggle--feature"></span>
                    </label>
                </div>
            </li>
        </ul>
    </nav>
    <div class="d-flex align-items-stretch" >
            <div id="sidebar" class="sidebar py-3" style="margin-top: 73px">
                <div style="margin-top: 50px"></div>
                <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
                <ul class="sidebar-menu list-unstyled">
                    <li class="sidebar-list-item"><a href="view/common.jsp" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>首页</span></a></li>
                    <li class="sidebar-list-item"><a href="/CallSearchGoodsServlet" class="sidebar-link text-muted"><i class="o-sales-up-1 mr-3 text-gray"></i><span>商品信息</span></a></li>
                    <li class="sidebar-list-item"><a href="/CallSearchSupplierServlet" class="sidebar-link text-muted"><i class="o-table-content-1 mr-3 text-gray"></i><span>供应商信息</span></a></li>
                    <li class="sidebar-list-item"><a href="/CallSearchInventoryServlet" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>库存管理</span></a></li>
                    <li class="sidebar-list-item"><a href="/CallUserManageServlet" class="sidebar-link text-muted"><i class="o-user-1 mr-3 text-gray "></i><span>用户管理</span></a></li>
                    <li class="sidebar-list-item"><a href="view/changePwd.jsp" class="sidebar-link text-muted"><i class="o-settings-window-1 mr-3 text-gray"></i><span>修改密码</span></a></li>
                </ul>
            </div>
        <div class="page-holder w-100 d-flex flex-wrap">
            <div class="container-fluid px-xl-5">
                <section class="py-5">
                    <div class="row">
<%
    } else {    // 现在没有登录过
        response.sendRedirect("../login.jsp");
    }
%>