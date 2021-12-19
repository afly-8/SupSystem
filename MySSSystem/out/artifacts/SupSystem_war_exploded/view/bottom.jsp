<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/10
  Time: 11:09 上午
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: xiaole
  Date: 2021/12/7
  Time: 12:41 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("name") != null) {   // 现在存在有session属性
%>
</div>
</section>
</div>
<footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 text-center text-md-left text-primary">
                <p class="mb-2 mb-md-0"></p>
            </div>
            <div class="col-md-11 text-center text-md-right text-gray-400">
                <p style="text-align: center; color: #4b666d8f;">Copyright 2021 © .HUIXING FOOD GROUP. 陕西惠兴食品有限公司版权所有
                    <a style="color: #61677C;" href="https://beian.miit.gov.cn/index.jsp#/Integrated/index" target="_blank">[陕ICP备00000000号-2]</a></p>
            </div>
        </div>
    </div>
</footer>
</div>
</div>
</body>
<script src="../js/js.cookie.min.js"></script>
<script src="../js/front.js"></script>
</html>
<%
} else {    // 现在没有登录过
    response.sendRedirect("../login.jsp");
    }
%>