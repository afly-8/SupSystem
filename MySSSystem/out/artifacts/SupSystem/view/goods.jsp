<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/10
  Time: 9:26 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>

<head>
    <title>惠兴超市|商品管理</title>
    <style>
    </style>
</head>
<jsp:include page="top.jsp"/>
<div class="col-lg-12 mb-4" style="margin: 0 auto">
    <div class="card">
        <div class="card-header">
            <h4 class="text-uppercase mb-3">商品信息</h4>
            <form action="/CallSearchGoodsServlet" method="get">
                <div class="input-group" style="width: 500px; float: left">
                    <select name="searchType" class="form-control" style="background: green ; color: white;max-width: 110px;">

                        <option class="dropdown-item smaller" <c:if test="${searchType=='gname'}">selected</c:if> value="gname">商品名称</option>
                        <option class="dropdown-item smaller" <c:if test="${searchType=='gtype'}">selected</c:if> value="gtype">商品类型</option>
                    </select>
                <%--关键字搜索--%>
                    <input type="text" placeholder="搜索关键字" name="keyword" class="form-control" value="${keyword}">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-primary search-sub">搜索</button>
                    </div>
                </div>
            </form>
            <div class="input-group-append" style="float: right;">
                <button type="button" class="btn btn-primary" id="btn_add">添加</button>
            </div>
        </div>
        <c:if test="${not empty gList}">
            <div class="card-body">
                <table class="table table-striped table-hover card-text" style="text-align: center">
                    <thead>
                    <tr>
                        <th>商品ID</th>
                        <th>商品名称</th>
                        <th>商品类型</th>
                        <th>商品进价</th>
                        <th>商品出价</th>
                        <th>商品状态</th>
                        <th>商品操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${gList}" var="goods" varStatus="vs">
                        <tr>
                            <th scope="row" >${goods.gid}</th>
                            <td>${goods.gName}</td>
                            <td>${goods.gType}</td>
                            <td>${goods.gInPrice}</td>
                            <td>${goods.gOutPrice}</td>
                            <td>${goods.status==1 ? "有货":"没货"}</td>
                            <td>
                                <button class="btn btn-success btn-sm" onclick="javascript:edit_data('${goods.gid}:${goods.gName}:${goods.gType}:${goods.gInPrice}:${goods.gOutPrice}:${goods.status}')">编辑</button>
                                <button class="btn btn-danger btn-sm" onclick="javascript:del_data('${goods.gid}')">删除</button>
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
                        <li class="page-item"><a class="page-link" href="/CallSearchGoodsServlet?currentPage=${vs.count}&searchType=${searchType}&keyword=${keyword}"><c:out value="${vs.count}"/></a></li>
                    </c:forEach>
                    <li class="page-item" id="next_li"><a class="page-link">下一页</a></li>
                </ul>
            </c:if>
        </c:if>
        <c:if test="${empty gList}">
            <span style="text-align: center; font-size: 20px; color: green; line-height: 50px;">未找到您所查询的数据。。。</span>
        </c:if>
        <div class="line" style="margin: 10px"></div>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 100px; min-width: 300px">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X关闭</span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label >商品ID</label>
                    <input type="text" class="form-control" id="gid" placeholder="商品ID">
                </div>
                <div class="form-group">
                    <label >商品名称</label>
                    <input type="text" class="form-control" id="gname" placeholder="商品名称">
                </div>
                <div class="form-group">
                    <label >商品类型</label>
                    <input type="text" class="form-control" id="gtype" placeholder="商品类型">
                </div>
                <div class="form-group">
                    <label >商品进价</label>
                    <input type="text" class="form-control" id="inprice" placeholder="商品进价">
                </div>
                <div class="form-group">
                    <label >商品出价</label>
                    <input type="text" class="form-control" id="outprice" placeholder="商品出价">
                </div>
                <div class="form-group">
                    <select id="status" name="searchType" class="form-control" style="background: green ; color: white;max-width: 210px;">
                        <option class="dropdown-item smaller" selected="selected" value="1">有货</option>
                        <option class="dropdown-item smaller" value="0">无货</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_submit1" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true">保存</span></button>
                <button type="button" id="btn_submit2" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true">保存</span></button>
            </div>
        </div>
    </div>
</div>
<script>
<%--    定义请求链接--%>
    function del_data(data) {
        var flag = confirm("您确定删除吗？")
        if (flag) {
            $.get( "/CallDoDelGoodsServlet", {
                "gid":data,
            },function (res) {
                if (res == "true") {
                    Dreamer.success("成功删除1条数据！",1000,function(){
                        window.location.reload();
                    })
                } else {
                    Dreamer.error("删除失败！", 2000)
                }
            })
        }
    }

    var div_el = document.querySelector(".modal-body");
    var inputs = div_el.querySelectorAll('input');
    function edit_data(data){
        $("#btn_submit2").hide()
        $("#btn_submit1").show()
        var arr = data.split(":");
        for (let i = 0; i < arr.length-1; i++) {
            inputs[i].value = arr[i];
        }
        $("#myModalLabel").text("编辑");
        $('#myModal').modal({backdrop: 'static'});
    }

    $('#btn_submit1').click(function(){
        var gid = $("#gid").val();
        var gname = $("#gname").val();
        var gtype = $("#gtype").val();
        var inprice = $("#inprice").val();
        var outprice = $("#outprice").val();
        var status = $("#status").val();
        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].value.length==0) {
                Dreamer.error("信息不全！", 2000)
            }
        }
        $.get("/CallDoEditGoodsServlet", {
            "gid":gid,
            "gname":gname,
            "gtype":gtype,
            "inprice":inprice,
            "outprice":outprice,
            "status":status
        },
        function (res) {
            if (res == "true") {
                Dreamer.success("成功修改1条数据！",1000,function(){
                    window.location.reload();
                })
            } else {
                Dreamer.error("修改失败！", 2000)
            }
        })
    })

    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg); //匹配目标参数
        if (r != null) return unescape(r[2]); return null; //返回参数值
    }
    $(function(){
        $("#btn_add").click(function () {
            for (let i = 0; i < inputs.length; i++) {
                inputs[i].value = "";
            }
            $("#btn_submit1").hide()
            $("#btn_submit2").show()
            $("#myModalLabel").text("添加");
            $('#myModal').modal({backdrop: 'static'});
        });
        $(".search-sub").click(function(){
            var search = $(".form-control").val();//取值
            if (search == '') {
                Dreamer.error("请输入输入关键字！", 2000)
            }
        });

        // 这个里面 做 一个点击绑定一个点击事件 绑定了点击事件 然后 发送ajax
        $('#btn_submit2').click(function(){
            var gid = $("#gid").val();
            var gname = $("#gname").val();
            var gtype = $("#gtype").val();
            var inprice = $("#inprice").val();
            var outprice = $("#outprice").val();
            var status = $("#status").val();
            $.get("/CallDoAddGoodsServlet", {
                    "gid":gid,
                    "gname":gname,
                    "gtype":gtype,
                    "inprice":inprice,
                    "outprice":outprice,
                    "status":status
                },
                function (res) {
                if (res == "true") {
                    Dreamer.success("成功添加1条数据！",1000,function(){
                        window.location.reload();
                    })
                } else if (res == "重复添加") {
                    Dreamer.error("添加失败，请勿重复添加！", 1000)
                }
                else {
                    Dreamer.error("数据信息不全！", 1000)
                }
            })

        })
    })
    var page = parseInt(getUrlParam('currentPage'));
    var newAddHref = "/CallSearchGoodsServlet?currentPage=" + (page + 1).toString() + "&searchType=${searchType}&keyword=${keyword}";
    var newVerbHref = "/CallSearchGoodsServlet?currentPage=" + (page - 1).toString() + "&searchType=${searchType}&keyword=${keyword}";
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
} else {    // 没有登录过,跳转登陆页面
    response.sendRedirect("../login.jsp");
    }
%>