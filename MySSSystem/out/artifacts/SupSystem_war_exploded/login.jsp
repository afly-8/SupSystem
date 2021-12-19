<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bashPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <base href="<%=bashPath%>">
    <title>后台登录 | 惠兴超市</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="惠兴超市" name="description">
    <meta content="惠兴超市" name="keywords">
    <meta content="肖乐-张倩倩" name="author">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/custom.css" rel="stylesheet" type="text/css">

    <!-- JAVASCRIPT -->
    <script src="js/jquery.min.js"></script>
    <!-- 自定义js -->
    <script src="js/code.js"></script>
    <script src="js/dream-msg.min.js"></script>
    <style>
        .logo-lg img{
            width:110px;
            height:auto;
        }
    </style>
</head>
<body data-sidebar="dark">
<link rel="stylesheet" type="text/css" href="css/login.css">
<div class="login-page">
    <div class="page-header">
        <div class="wrapper clear">
            <div class="logo fl">
                <a href="/">
                    <img src="img/logoa.png" alt="logo"></a>
                <div class="page-he" style="color: green;">welcome！</div></div>
            <div class="page-header-info frr">
                <a class="page-header-m iconfont" href="javascript:;"><i class="bx bx-list-ul menu-icon"></i></a>
                <ul class="page-header-c">
                    <li>
                        <a href="/">首页</a></li>
                    <li>
                        <a href="" target="_blank">关于</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="page-content">
        <div class="wrapper">
            <div class="login-wrap">
                <div class="left">
                    <div class="banner-main ">
                        <div class="banner-main-img">
                            <ul>
                                <li style="display: block;">
                                    <h2>惠兴食品｜关注健康</h2>
                                    <div class="desc">
                                        <div>+ 惠健康、惠生活</div>
                                        <div>+ 宜购足迹，鉴证品质生活</div>
                                        <div>+ 走遍千家万家，惠兴超市最佳 </div>
                                        <img src="img/logoa.png">
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="login-item">
                        <div class="login" data-type="account">
                            <div class="login-tab">
                                <ul class=" nav" role="tablist">
                                    <li class="">
                                        <a class=" active" data-toggle="tab" href="#phone" role="tab" aria-selected="false">管理员登录</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="login-content">
                                <div class="tab-content">    <div id="phone" class="tab-pane login-form  active" role="tabpanel">
                                        <ul>
                                            <!-- 登陆输入框  -->
                                            <li>
                                                <input style="margin-bottom: 10px;" type="text" class="input-skin_phone" id="phoneInp" name="user" value="" placeholder="请输入账号"></li>
                                            </li>
                                            <li >
                                                <!-- 密码输入框 -->
                                                <input type="password" class="input-skin" id="phonePwdInp1" name="password" placeholder="请输入密码"></li>
                                            <li style="margin-bottom: 20px;">
                                                <!-- 验证码输入框 -->
                                                <input style="margin-top: -15px; width: 150px; float: left;" type="text" class="input-skin input-val" id="phonePwdInp2" name="check" placeholder="请输入验证码"></li>
                                            <div style="float: right;" class="label-text">
                                                <button type="button" style="width: 150px; height: 42px; margin-top: -15px; border: 0ch;" class="">
                                                    <canvas id="canvas" width="120" height="42"></canvas>
                                                </button>
                                            </div>
                                            </li>
                                            <li>
                                                <button class="btn btn-lg" id="login" style="margin-top: 70px;">登录</button>
                                            </li>
                                        </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div></div>
        </div>
    </div>
</div>
<div class="page-footer">
    <div class="wrapper">
        <p class="wrapper-a">Copyright © 2007-2021 [惠兴超市] 陕西省咸阳市      <a target="_blank" href="https://beian.miit.gov.cn">
            <img src="img/ga.png" /> 网站备案号：陕IDC备000001号</a></p>
    </div>
</div>
</body>
<script>
    //登陆 ajax验证
    $(function(){
        $("#login").click(function(){
            var username = $("#phoneInp").val();//取值
            var password = $("#phonePwdInp1").val();
            // 将输入的内容转为大写，可通过这步进行大小写验证
            var val = $(".input-val").val().toLowerCase();
            // 获取生成验证码值
            var num = $('#canvas').attr('data-code');
            console.log(val)
            console.log(num)
            if (val == '' || !username || !password) {
                Dreamer.error("请输入输入完整信息！", 1000)
            } else if (val != num) {
                Dreamer.error("验证码错误！请重新输入！", 1000)
                code_draw();
                $(".input-val").val('');
            } else {
                $(".input-val").val('');
                //var param = "username="+username+"&password="+password;
                var param = {"username":username,"password":password};
                $.post("/CallLoginServlet",param,function(result){
                    if(result=="true"){
                        Dreamer.success("登陆成功！欢迎您使用惠兴超市管理系统" , 1000);
                        window.location.href="view/common.jsp";
                    }else{
                        Dreamer.error("用户名或者密码错误!", 2000);
                    }
                });
            }
        });
    });
</script>
</html>