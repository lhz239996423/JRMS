<%-- 
    Document   : updateFriendMessage
    Created on : 2012-3-21, 1:33:34
    Author     : Administrator
--%>

<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>个人信息管理系统->修改通讯录</title>
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
        <form action="http://localhost:8080/JRMS/UpdateFriendMessageServlet" method="post">
            <table align="center"width="300" >
            <%
                ArrayList friendslist2=(ArrayList)session.getAttribute("friendslist2");
                if(friendslist2==null||friendslist2.size()==0){
                    response.sendRedirect("http://localhost:8080/JRMS/friendManager/lookFriend.jsp");
                }else{
                    for(int i=friendslist2.size()-1;i>=0;i--){
                        LookFriendBean ff=(LookFriendBean)friendslist2.get(i);
            %>
                <tr>
                    <td height="30">用户姓名</td>
                    <td><%=ff.getName()%></td>
                </tr>
                <tr>
                    <td height="30">用户电话</td>
                    <td><input type="text" name="phone" value="<%=ff.getPhone()%>"></td>
                </tr>
                <tr>
                    <td height="30">邮箱地址</td>
                    <td><input type="text" name="email" value="<%=ff.getEmail()%>"></td>
                </tr>
                <tr>
                    <td height="30">工作单位</td>
                    <td><input type="text" name="workPlace" value="<%=ff.getWorkPlace()%>"></td>
                </tr>
                <tr>
                    <td height="30">家庭住址</td>
                    <td><input type="text" name="place" value="<%=ff.getPlace()%>"></td>
                </tr>
                <tr>
                    <td height="30">用户QQ</td>
                    <td><input type="text" name="QQ" value="<%=ff.getQQ()%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                 </tr>
            <%
                }
               }
            %>
            </table>
        </form>
    </body>
</html>
