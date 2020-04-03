<%-- 
    Document   : main
    Created on : 2012-3-22, 20:43:40
    Author     : Administrator
--%>

<%@page import="loginRegister.LoginBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>嘉荣超市信息管理系统--主页面</title>
    </head>
    <%
        String userName=null;
            //获取在LoginServlet.java中保存在session对象中的数据
            ArrayList login=(ArrayList)session.getAttribute("login");
            if(login==null||login.size()==0){
                   response.sendRedirect("http://localhost:8080/JRMS/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
            }
    %>
        <frameset rows="*" cols="150,*" framespacing="0" border="no" frameborder="0">
            <frame src="left.jsp?userName=<%=userName%>" name="left" scrolling="no" />
            <!--frameset rows="50,*" cols="*">
                <frame src="top.jsp" name="top" scrolling="no"/-->
                <frame src="bottom.jsp?userName=<%=userName%>" name="main" />
            <!--/frameset-->
        </frameset>
</html>
