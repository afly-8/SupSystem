<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/10
  Time: 3:25 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>

<head>
    <title>Home</title>
</head>
<jsp:include page="top.jsp"/>
<div class="col-lg-9 mb-5" style="margin: 80px auto;">
    <div class="card">
        <div class="card-header">
            <h3 class="h6 text-uppercase mb-0">密码修改</h3>
        </div>
        <div class="card-body">
            <p></p>
                <div class="form-group row" id="inputOldPwd">
                    <label class="col-md-3 form-control-label" for="oldPwd">原密码</label>
                    <div class="col-md-7">
                        <input id="oldPwd" type="password" placeholder="请输入原密码" class="form-control form-control-success">
                        <small class="form-text text-muted ml-3" id="oldText"></small>
                    </div>
                </div>
                <div class="form-group row" id="inputNewPwd">
                    <label class="col-sm-3 form-control-label" for="newPwd">新密码</label>
                    <div class="col-md-7">
                        <input id="newPwd" type="password" placeholder="请输入新密码" class="form-control form-control-warning">
                        <small class="form-text text-muted ml-3" id="newText"></small>
                    </div>
                </div>
                <div class="form-group row" id="inputRPwd">
                    <label class="col-sm-3 form-control-label" for="rPwd">确认密码</label>
                    <div class="col-md-7">
                        <input id="rPwd" type="password" placeholder="请输入新密码" class="form-control form-control-warning">
                        <small class="form-text text-muted ml-3" id="rTest"></small>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-6 ml-auto">
                        <button id="updatePwd" style="margin-left: 165px" onclick="" class="btn btn-danger">提交</button>
                    </div>
                    <div class="col-md-4 ml-auto">
                        <button id="reset" class="btn btn-success">取消</button>
                    </div>
                </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function(){

        $("#reset").click(function (){
            $("input[type='password']").val('');
        })

        function checkOldPwd(){
            var oldPwd = $("#oldPwd").val();
            var $oldText = $("#oldText");
            var $inputOldPwd = $("#inputOldPwd");
            if( oldPwd=="" ){
                $oldText.html("密码不能为空");
                $inputOldPwd.addClass("has-error");
                return false;
            }else if(oldPwd.length<6||oldPwd.length>12){
                $oldText.html("密码必须在6-12位之间");
                $inputOldPwd.addClass("has-error");
                return false;
            }else{
                $oldText.html("");
                $inputOldPwd.removeClass("has-error");
                $inputOldPwd.addClass("has-success");
                return true;
            }
        }

        $("#oldPwd").blur(function (){
            checkOldPwd();
        })

        function checkNewPwd(){
            var newPwd = $("#newPwd").val();
            var $newText = $("#newText");
            var $inputNewPwd = $("#inputNewPwd");
            if(newPwd==""){
                $newText.html("密码不能为空");
                $inputNewPwd.addClass("has-error");
                return false;
            }else if(newPwd.length<6||newPwd.length>12){
                $newText.html("密码必须在6-12位之间");
                $inputNewPwd.addClass("has-error");
                return false;
            }else{
                $newText.html("");
                $inputNewPwd.removeClass("has-error");
                $inputNewPwd.addClass("has-success");
                return true;
            }
        }

        $("#newPwd").blur(function (){
            checkNewPwd();
        })

        function checkRPwd(){
            var rPwd = $("#rPwd").val();
            var newPwd = $("#newPwd").val();
            var $rTest = $("#rTest");
            var $inputRPwd = $("#inputRPwd");
            if(rPwd==""){
                $rTest.html("密码不能为空");
                $inputRPwd.addClass("has-error");
                return false;
            }else if(rPwd.length<6||rPwd.length>12){
                $rTest.html("密码必须在6-12位之间");
                $inputRPwd.addClass("has-error");
                return false;
            }else if(rPwd!=newPwd){
                $rTest.html("两次密码输入不一致");
                $inputRPwd.addClass("has-error");
                return false;
            }else{
                $rTest.html("");
                $inputRPwd.removeClass("has-error");
                $inputRPwd.addClass("has-success");
                return true;
            }
        }

        $("#rPwd").blur(function (){
            checkRPwd();
        })

        $("#updatePwd").click(function (){
            var newPwd = $("#newPwd").val();
            if(checkOldPwd()&&checkNewPwd()&&checkRPwd()){
                $.post("/CallDoEditUserServlet",{
                    "newPwd":newPwd
                },
                function (result) {
                    if (result == "true") {
                        Dreamer.success("修改成功！", 2000);
                        window.location.href = "view/logout.jsp";
                    } else {
                        Dreamer.error("修改失败！", 2000);
                    }
                })
            }
        })

    })
</script>

<jsp:include page="bottom.jsp"/>
<%
} else {    // 现在没有登录过
    response.sendRedirect("../login.jsp");
    }
%>
