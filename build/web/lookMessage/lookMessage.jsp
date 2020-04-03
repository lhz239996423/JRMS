<%-- 
    Document   : lookMessage
    Created on : 2012-3-20, 23:13:38
    Author     : Administrator
--%>

<%@page import="loginRegister.LoginBean"%>
<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统--查看个人信息</title>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" type="text/css" href="../css/index.css?v=<%= System.currentTimeMillis()%>">
    </head>
        <body class="bgp" style="height: 100vh;">
            <%
                ArrayList login=(ArrayList)session.getAttribute("login");
                String userName=null;
            if(login==null||login.size()==0){
                   response.sendRedirect("http://localhost:8080/JRMS/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
            }
            
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
                            <a href="http://localhost:8080/JRMS/lookMessage/lookMessage.jsp?userName=<%=userName%>">查看个人信息</a>
                        </button>
                    </td>
                    <td class="tab">
                        <button class="topclient">
                            <a href="http://localhost:8080/JRMS/lookMessage/updateMessage.jsp?userName=<%=userName%>">修改个人信息</a>
                        </button>
                    </td>
                    <td class="tab">
                        <button class="topclient">
                            <a href="http://localhost:8080/JRMS/lookMessage/updatePassword.jsp?userName=<%=userName%>">修改密码</a>
                        </button>
                    </td>
                </tr>
            </table>
            <hr>
            <br>
            <table align="center"width="300" >
            <%
                ArrayList wordlist=(ArrayList)session.getAttribute("wordlist");
                if(wordlist==null||wordlist.size()==0){
                    response.sendRedirect("http://localhost:8080/JRMS/main/bottom.jsp");
                }else{
                    for(int i=wordlist.size()-1;i>=0;i--){
                        LookMessageBean mm=(LookMessageBean)wordlist.get(i);
             %>
                <tr>
                    <td height="30">用户姓名</td>
                    <td><%=mm.getName()%></td>
                </tr>
                <tr>
                    <td height="30">用户性别</td>
                    <td><%=mm.getSex()%></td>
                </tr>
                <tr>
                     <td height="30">出生日期</td>
                     <td><%=mm.getBirth()%></td>
                </tr>
                <tr>
                     <td height="30">用户民族</td>
                     <td><%=mm.getNation()%></td>
                </tr>
                <tr>
                     <td height="30">用户学历</td>
                     <td><%=mm.getEdu()%></td>
                </tr>
                <tr>
                     <td height="30">用户职称</td>
                     <td><%=mm.getWork()%></td>
                </tr>
                <tr>
                     <td height="30">用户电话</td>
                     <td><%=mm.getPhone()%></td>
                </tr>
                <tr>
                     <td height="30">家庭住址</td>
                     <td><%=mm.getPlace()%></td>
                </tr>
                <tr>
                     <td height="30">邮箱地址</td>
                     <td><%=mm.getEmail()%></td>
                </tr>
               <%
                    }
                }
            %>
        </table>
    </body>
</html>
