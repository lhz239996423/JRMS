<%-- 
    Document   : addClient
    Created on : 2012-3-23, 21:09:51
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加合同信息</title>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" type="text/css" href="../css/index.css?v=<%= System.currentTimeMillis()%>">
        <style>
        </style>
    </head>
    <body class="bgp"  style="height:100vh;">
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
        <form action="http://localhost:8080/JRMS/CSManage/addCSCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td class="tab">
                    <button class="topbut">
                    <a href="http://localhost:8080/JRMS/CSManage/lookCS.jsp">售后查询</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topbut">
                    <a href="http://localhost:8080/JRMS/CSManage/addCS.jsp">售后添加</a>
                    </button>
                </td>
                </tr>
            </table>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                    <th colspan="3" align="center">添加售后信息</th>
                 </tr>
                 <tr>
                     <td>客户姓名</td>
                     <td><input type="text" name="clientName"/></td>
                 </tr>
                 <tr>
                     <td>客户反馈意见</td>
                     <td><input type="text" name="clientOpinion"/></td>
                 </tr>
                <tr>
                     <td>业务员</td>
                     <td><input type="text" name="StaffName"/></td>
                </tr>
                <tr align="center">
                     <td colspan="2">
                         <input name="sure"type="submit"value="确认">
                         &nbsp; &nbsp; &nbsp; &nbsp;
                         <input name="clear"type="reset"value="取消">
                     </td>
                </tr>
            </table>
        </form>
    </body>
</html>
