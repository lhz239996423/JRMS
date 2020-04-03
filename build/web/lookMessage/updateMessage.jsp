<%-- 
    Document   : updateMessage
    Created on : 2012-3-20, 23:30:55
    Author     : Administrator
--%>

<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->查看</title>
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
        <form action="http://localhost:8080/JRMS/UpdateMessageServlet" method="post">
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
                    <td>
                        <select name="edu" size="1">
                            <%if(mm.getEdu().equals("博士")){%>
                            <option value="博士" selected>博士</option>
                            <%}else{%>
                            <option value="博士">博士</option>
                            <%}%>
                            <%if(mm.getEdu().equals("硕士")){%>
                            <option value="硕士" selected>硕士</option>
                            <%}else{%>
                            <option value="硕士">硕士</option>
                            <%}%>
                            <%if(mm.getEdu().equals("本科")){%>
                            <option value="本科" selected>本科</option>
                            <%}else{%>
                            <option value="本科">本科</option>
                            <%}%>
                            <%if(mm.getEdu().equals("专科")){%>
                            <option value="专科" selected>专科</option>
                            <%}else{%>
                            <option value="专科">专科</option>
                            <%}%>
                            <%if(mm.getEdu().equals("高中")){%>
                            <option value="高中" selected>高中</option>
                            <%}else{%>
                            <option value="高中">高中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("初中")){%>
                            <option value="初中" selected>初中</option>
                            <%}else{%>
                            <option value="初中">初中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("初中")){%>
                            <option value="初中" selected>初中</option>
                            <%}else{%>
                            <option value="初中">初中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("小学")){%>
                            <option value="小学" selected>小学</option>
                            <%}else{%>
                            <option value="小学">小学</option>
                            <%}%>
                            <%if(mm.getEdu().equals("其它")){%>
                            <option value="其它" selected>其它</option>
                            <%}else{%>
                            <option value="其它">其它</option>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="30">用户职称</td>
                    <td>
                        <select name="work" size="1">
                            <%if(mm.getWork().equals("软件开发工程师")){%>
                            <option value="软件开发工程师" selected>软件开发工程师</option>
                            <%}else{%>
                            <option value="软件开发工程师">软件开发工程师</option>
                            <%}%>
                            <%if(mm.getWork().equals("软件测试工程师")){%>
                            <option value="软件测试工程师" selected>软件测试工程师</option>
                            <%}else{%>
                            <option value="软件测试工程师">软件测试工程师</option>
                            <%}%>
                            <%if(mm.getWork().equals("教师")){%>
                            <option value="教师" selected>教师</option>
                            <%}else{%>
                            <option value="教师">教师</option>
                            <%}%>
                            <%if(mm.getWork().equals("学生")){%>
                            <option value="学生" selected>学生</option>
                            <%}else{%>
                            <option value="学生">学生</option>
                            <%}%>
                            <%if(mm.getWork().equals("职员")){%>
                            <option value="职员" selected>职员</option>
                            <%}else{%>
                            <option value="职员">职员</option>
                            <%}%>
                            <%if(mm.getWork().equals("经理")){%>
                            <option value="经理" selected>经理</option>
                            <%}else{%>
                            <option value="经理">经理</option>
                            <%}%>
                            <%if(mm.getWork().equals("老板")){%>
                            <option value="老板" selected>老板</option>
                            <%}else{%>
                            <option value="老板">老板</option>
                            <%}%>
                            <%if(mm.getWork().equals("公务员")){%>
                            <option value="公务员" selected>公务员</option>
                            <%}else{%>
                            <option value="公务员">公务员</option>
                            <%}%>
                            <%if(mm.getWork().equals("其它")){%>
                            <option value="其它" selected>其它</option>
                            <%}else{%>
                            <option value="其它">其它</option>
                            <%}%>      
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="30">用户电话</td>
                    <td><input type="text" name="phone" value="<%=mm.getPhone()%>"></td>
                </tr>
                <tr>
                    <td height="30">家庭住址</td>
                    <td><%=mm.getPlace()%></td>
                </tr>
                <tr>
                    <td height="30">邮箱地址</td>
                    <td><input type="text" name="email" value="<%=mm.getEmail()%>"></td>
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

