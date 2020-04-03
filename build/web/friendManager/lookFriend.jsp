<%-- 
    Document   : lookFriend
    Created on : 2012-3-21, 0:49:41
    Author     : Administrator
--%>

<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>个人信息管理系统--查看通讯录</title>
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
                        <a href="http://localhost:8080/JRMS/friendManager/addFriend.jsp?userName=<%=userName%>">增加联系人</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/LookFriendServlet?userName=<%=userName%>">查看通信录</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/friendManager/updateFriend.jsp?userName=<%=userName%>">修改联系人</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/friendManager/deleteFriend.jsp?userName=<%=userName%>">删除联系人</a>
                    </button>
                </td>
            </tr>
        </table>
        <hr>
        <br>
        <table border="2" cellspacing="0"cellpadding="0" width="70%"align="center">
            <tr align="center">
                <th height="30">用户姓名</th>
                <th height="30">用户电话</th>
                <th height="30">邮箱地址</th>
                <th height="30">用户职称</th>
                <th height="30">家庭住址</th>
                <th height="30">用户QQ</th>

            </tr>
            <%
                ArrayList friendslist=(ArrayList)session.getAttribute("friendslist");
                if(friendslist==null||friendslist.size()==0){
            %>
            <div align="center">
               <h1>您还没有任何联系人！</h1>
            </div>
            <%
                }else{
                    for(int i=friendslist.size()-1;i>=0;i--){
                        LookFriendBean ff=(LookFriendBean)friendslist.get(i);
            %>
            <tr align="center">
                <td><%=ff.getName()%></td>
                <td><%=ff.getPhone()%></td>
                <td><%=ff.getEmail()%></td>
                <td><%=ff.getWorkPlace()%></td>
                <td><%=ff.getPlace()%></td>
                <td><%=ff.getQQ()%></td>
            </tr>
            <%
                  }
                }
            %>
        </table>
    </body>
</html>

