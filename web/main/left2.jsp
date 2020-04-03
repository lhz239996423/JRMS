<%-- 
    Document   : left2
    Created on : 2018-12-3, 19:34:27
    Author     : lhz239996423
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <title>JSP Page</title>
        <style>
            .leftimg{
                margin: 0;
                padding: 0;
            }
            .tab{
                display: block;
                padding: 0px;
            }
        </style>
    </head>
    <body id="gleft">
        <%
            String userName=request.getParameter("userName");
        %>
        <div class="leftimg">
            <image src="../image/blue002.jpg"/>
        </div>
        <table>
            <tr><td class="tab">
                    <button class="leftbutton">
                        <a href="http://localhost:8080/JRMS/LookMessageServlet?userName=<%=userName%>" target="main">个人信息管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/LookFriendServlet" target="main">通讯录管理</a>
                    </button>
                </td>
           <tr/>
           <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/LookDateServlet" target="main">日程安排管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/fileManager/fileUp.jsp" target="main">个人文件管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/login.jsp" target="_parent">退出系统</a>
                    </button>
                </td>
        </table>
    </body>
</html>
