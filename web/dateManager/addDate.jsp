

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->增加日程</title>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" type="text/css" href="../css/index.css?v=<%= System.currentTimeMillis()%>">
    </head>
    <body class="bgp"  style="height: 100vh;">
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
          <table border="5" cellspacing="0" cellpadding="0" width="60%" align="center">
                <tr>
                     <td height="30" width="25%" align="center">日程时间</td>
                     <td width="50%" align="center">
                         20<input type="text" size="1" name="year" value="">年
                         <input type="text" size="1" name="month" value="">月
                         <input type="text" size="1" name="day" value="">日
                     </td>
                </tr>
                <tr>
                     <td height="30" width="25%" align="center">日程内容</td>
                     <td width="50%" align="center">
                         <input type="text" size="30" name="thing" value=""></td>
                </tr>
                <tr height="30">
                    <td colspan="2" align="right">
                        <input type="submit" value="确 定" size="12" style="margin-right: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12" style="margin-left: 140px;margin-right: 20px;">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
