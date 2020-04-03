<%-- 
    Document   : addFriend
    Created on : 2012-3-21, 0:27:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->增加通讯录</title>
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
                        <a href="http://localhost:8080/JRMS/friendManager/addFriend.jsp">增加联系人</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/LookFriendServlet">查看通信录</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/friendManager/updateFriend.jsp">修改联系人</a>
                    </button>
                </td>
                <td class="tab">
                    <button class="topclient">
                        <a href="http://localhost:8080/JRMS/friendManager/deleteFriend.jsp">删除联系人</a>
                    </button>
                </td>
            </tr>
        </table>
        <hr>
        <br>
        <form action="http://localhost:8080/JRMS/AddFriendServlet" method="post">
            <table align="center"width="300" >
                <tr>
                    <td>用户姓名</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>用户电话</td>
                    <td><input type="text" name="phone"/></td>
                </tr>
                <tr>
                    <td>邮箱地址</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>工作单位</td>
                    <td><input type="text" name="workPlace"/></td>
                </tr>
                <tr>
                    <td>家庭住址</td>
                    <td>
                        <select name="place" size="1">
                            <option value="北京">北  京</option>
                            <option value="上海">上  海</option>
                            <option value="天津">天  津</option>                          
                            <option value="河北">河  北</option>
                            <option value="河南">河  南</option>
                            <option value="吉林">吉  林</option>
                            <option value="黑龙江">黑龙江</option>
                            <option value="内蒙古">内蒙古</option>
                            <option value="山东">山  东</option>
                            <option value="山西">山  西</option>
                            <option value="陕西">陕  西</option>
                            <option value="甘肃">甘  肃</option>
                            <option value="宁夏">宁  夏</option>
                            <option value="青海">青  海</option>
                            <option value="新疆">新  疆</option>
                            <option value="辽宁">辽  宁</option>
                            <option value="江苏">江  苏</option>
                            <option value="浙江">浙  江</option>
                            <option value="安微">安  微</option>
                            <option value="广东">广  东</option>
                            <option value="海南">海  南</option>
                            <option value="广西">广  西</option>
                            <option value="云南">云  南</option>
                            <option value="贵州">贵  州</option>
                            <option value="四川">四  川</option>
                            <option value="重庆">重  庆</option>
                            <option value="西藏">西  藏</option>
                            <option value="香港">香  港</option>
                            <option value="澳门">澳  门</option>
                            <option value="福建">福  建</option>
                            <option value="江西">江  西</option>
                            <option value="湖南">湖  南</option>
                            <option value="青海">青  海</option>
                            <option value="湖北">湖  北</option>
                            <option value="台湾">台  湾</option>
                            <option value="其它">其  它</option>
                        </select>省(直辖市)
                    </td>
                </tr>
                <tr>
                    <td>用户QQ</td>
                    <td><input type="text" name="QQ"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
