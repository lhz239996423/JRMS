<%-- 
    Document   : index
    Created on : 2018-11-23, 9:34:45
    Author     : linhaize
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <title>嘉荣超市信息管理系统--登录页面</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="css/reset.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" href="css/supersized.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" href="css/style.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" href="css/bkcolor.css?v=<%= System.currentTimeMillis()%>">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>嘉荣超市</h1>
            <form action="http://localhost:8080/JRMS/LoginServlet" method="post">
                <input type="text" name="userName" class="username" placeholder="Username">
                <input type="password" name="password" class="password" placeholder="Password">
                <div align="left" style="float:left">
                    <button type="reset">Reset</button>
                </div>
                <div align="right">
                    <button type="submit">Sign in</button>
                </div>
                <div class="reg_a">
                    <a href="http://localhost:8080/JRMS/register/register.jsp">注册</a>
                </div>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect"></div>
        </div>
        
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>

    </body>

</html>