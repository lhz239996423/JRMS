<%-- 
    Document   : fileDown
    Created on : 2012-3-21, 22:28:20
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" type="text/css" href="../css/index.css?v=<%= System.currentTimeMillis()%>">
    </head>
    <body class="bgp" style="height:100vh;">
        <%
            String userName=request.getParameter("userName");
        %>
        <div class="index-nav"  style="z-index: 9;">
            <div class="top_h">
                欢迎使用嘉荣超市信息管理平台</div>
            <div class="index-nav-frame-line active" tabindex="-1">
                个人中心
                <div class="index-nav-frame-line-center">
                    <div class="index-nav-frame-line-li">
                        <a href="http://localhost:8080/JRMS/LookMessageServlet?userName=<%=userName%>" target="main">个人信息管理</a>
                    </div>
                    <div class="index-nav-frame-line-li">
                        <a href="http://localhost:8080/JRMS/LookFriendServlet?userName=<%=userName%>" target="main">通讯录管理</a>
                    </div>
                    <div class="index-nav-frame-line-li">
                        <a href="http://localhost:8080/JRMS/LookDateServlet?userName=<%=userName%>" target="main">日程安排管理</a>
                    </div>
                    <div class="index-nav-frame-line-li">
                        <a href="http://localhost:8080/JRMS/fileManager/fileUp.jsp?userName=<%=userName%>" target="main">个人文件管理</a>
                    </div>
                    <div class="index-nav-frame-line-li">
                        <a href="http://localhost:8080/JRMS/login.jsp?userName=<%=userName%>" target="_parent">退出系统</a>
                    </div>
                </div>
            </div>
        </div>
        <table align="center"width="500" >
            <tr>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/fileManager/fileUp.jsp">上传文件</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/fileManager/fileDown.jsp">文件列表</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/fileManager/fileDown.jsp">下载文件</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/fileManager/fileDown.jsp">删除文件</a>
                    </button>
                </td>
            </tr>
        </table>
      <hr>
      <br>
        <h3>请编码实现本功能!</h3>
    </body>
</html>
