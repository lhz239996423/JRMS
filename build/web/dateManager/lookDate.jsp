
<%@page import="dateManager.LookDateBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->查看日程</title>
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
                      <a href="http://localhost:8080/JRMS/dateManager/lookDate.jsp">查看日程</a>
                  </button>
              </td>
              <td class="tab">
                  <button class="topclient">
                      <a href="http://localhost:8080/JRMS/dateManager/addDate.jsp">增加日程</a>
                  </button>
              </td>
              <td class="tab">
                  <button class="topclient">
                      <a href="http://localhost:8080/JRMS/dateManager/updateDate.jsp">修改日程</a>
                  </button>
              </td>
              <td class="tab">
                  <button class="topclient">
                      <a href="http://localhost:8080/JRMS/dateManager/deleteDate.jsp">删除日程</a>
                  </button>
              </td>
          </tr>
      </table>
      <hr>
      <br>
      <form action="http://localhost:8080/JRMS/AddDateServlet" method="post">
          <table border="3" cellspacing="0" cellpadding="0" width="60%" align="center">
              <tr height="38">
                    <th width="40%">日程时间</th>
                    <th width="60%">日程内容</th>
              </tr>
              <%
                    ArrayList datelist=(ArrayList)session.getAttribute("datelist");
                    if(datelist==null||datelist.size()==0){
              %>
                <div align="center">
                    <h1>您还没有任何日程安排！</h1>
                </div>
                <%
            }else{
                for(int i=datelist.size()-1;i>=0;i--){
                    LookDateBean dd=(LookDateBean)datelist.get(i);
                    %>
                        <tr  align="center" height="38">
                            <td><%=dd.getDate()%></td>
                            <td><%=dd.getThing()%></td>
                        </tr>
                    <%
                }
             }
           %>
            </table>
        </form>
    </body>
</html>
