<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <title>Forum ›设置</title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel panel-default" id="main" style="">
        <div class="panel-heading" style="background-color: white">
            <a href="/">Forum</a> › 设置
        </div>

        <div class="panel-body">

                <form class="form-horizontal" role="form" >
                    <div style="margin-left: 17%">
                        <img width="60px" height="60px" src="${user.avatar}" class="img-rounded">
                        <a class="btn btn-default" href="/settings/avatar" role="button">更换头像</a>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">uid</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">${user.id}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <form action="/settings/newName" method="post" id="newNameForm" class="form-horizontal" role="form" >
                            <label class="col-sm-2 control-label">用户名</label>
                            <div class="col-sm-4">
                                <p class="form-control-static">${user.username}</p>
                            </div>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="newName" name="newName" placeholder="新用户名">
                            </div>
                            <% session.setAttribute("newName",request.getParameter("newName"));%>
                            <%System.out.println(request.getParameter("newName"));%>
                            <div class="col-sm-2">
                                <input type="submit" class="btn btn-default" id="submit">
                            </div>
                        </form>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-4">
                            <p class="form-control-static">${user.email}</p>
                        </div>
                        <div class="col-sm-4">
                            <input type="email" class="form-control" id="email" name="email" placeholder="新邮箱">
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-default" href="/settings/newEmail" role="button">更换邮箱</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">注册时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">${user.localCreateTime}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">积分</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">${user.credit}</p>
                        </div>
                    </div>

                </form>

        </div>

    </div>



</div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>