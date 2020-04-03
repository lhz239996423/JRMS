<%-- 
    Document   : left
    Created on : 2012-3-22, 20:59:40
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../css/bkcolor.css?v=<%= System.currentTimeMillis()%>">
        <title>JSP Page</title>
        <style>
            .leftimg{
                margin: 0;
                padding: 0;
            }
            .tab{
                display: block;
                padding: 0px;
            }
        </style>
    </head>
    <body id="gleft">
        <div class="leftimg">
            <image src="../image/blue002.jpg"/>
        </div>
        <table>
            <tr><td class="tab">
                    <button class="leftbutton">
                        <a href="http://localhost:8080/JRMS/clientManage/lookClient.jsp" target="main">客户管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/contactManage/lookContact.jsp" target="main">合同管理</a>
                    </button>
                </td>
           <tr/>
           <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/CSManage/lookCS.jsp" target="main">售后管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/productManage/lookProduct.jsp" target="main">产品管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/staffManage/lookStaff.jsp" target="main">员工管理</a>
                    </button>
                </td>
            <tr/>
            <tr><td class="tab">
                    <button class="leftbutton">
                    <a href="http://localhost:8080/JRMS/login.jsp" target="_parent">退出系统</a>
                    </button>
                </td>
        </table>
    </body>
</html>
