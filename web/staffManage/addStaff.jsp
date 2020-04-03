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
        <title>添加员工信息</title>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <link rel="stylesheet" type="text/css" href="../css/index.css?v=<%= System.currentTimeMillis()%>">
        <style>
            .bgp{
                height: 100vh;
                background: -webkit-linear-gradient(left top, #C4E1FF , #003D79); /* Safari 5.1 - 6.0 */
                background: -o-linear-gradient(bottom right, #C4E1FF, #003D79); /* Opera 11.1 - 12.0 */
                background: -moz-linear-gradient(bottom right, #C4E1FF, #003D79); /* Firefox 3.6 - 15 */
                background: linear-gradient(to bottom right, #C4E1FF , #003D79); /* 标准的语法（必须放在最后） */
                background-repeat:no-repeat;
            }
        </style>
    </head>
    <body class="bgp">
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
        <form action="http://localhost:8080/JRMS/staffManage/addStaffCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td class="tab">
                        <button class="topbut">
                            <a href="http://localhost:8080/JRMS/staffManage/lookStaff.jsp?userName=<%=userName%>">员工查询</a>
                        </button>
                    </td>
                    <td class="tab">
                        <button class="topbut">
                            <a href="http://localhost:8080/JRMS/staffManage/addStaff.jsp?userName=<%=userName%>">员工添加</a>
                        </button>
                    </td>
                </tr>
            </table>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                    <th colspan="8" align="center">添加员工信息</th>
                 </tr>
                 <tr>
                     <td>姓名</td>
                     <td><input type="text" name="staffName"/></td>
                 </tr>
                 <tr>
                     <td>性别</td>
                     <td><input type="text" name="staffSex"/></td>
                 </tr>
                 <tr>
                     <td>年龄</td>
                     <td><input type="text" name="staffAge"/></td>
                 </tr>
                 <tr>
                     <td>学历</td>
                     <td><input type="text" name="staffEducation"/></td>
                </tr>
                <tr>
                     <td>部门</td>
                     <td><input type="text" name="staffDepartment"/></td>
                </tr>
                <tr>
                     <td>入职时间</td>
                     <td><input type="text" name="staffDate"/></td>
                </tr>
                <tr>
                     <td>职务</td>
                     <td><input type="text" name="staffDuty"/></td>
                </tr>
                <tr>
                     <td>工资</td>
                     <td><input type="text" name="staffWage"/></td>
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
