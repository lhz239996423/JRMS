<%-- 
    Document   : loginCheck
    Created on : 2012-3-22, 20:38:59
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>数据处理页面</title>
    </head>
    <body>
        <%
            String userName =new String(request.getParameter("userName") );
            String password =new String(request.getParameter("password") );
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            if(userName.equals("")) {
                response.sendRedirect("login.jsp");
            }
            try{
                Class.forName("com.mysql.jdbc.Driver");
                /*url后面加的?useUnicode=true&characterEncoding=utf-8，是为了处理向数据库中添加数据时出现乱码的问题。*/
                String url="jdbc:mysql://localhost:3306/jrms";
                con=DriverManager.getConnection(url,"root","root");
                st=con.createStatement();
                String query="select * from user where userName='" + userName + "'";
                rs=st.executeQuery(query);
                if(rs.next()){
                    String query2 ="select * from user where password='" + password + "'";
                    rs=st.executeQuery(query2);
                    if(rs.next()){
                        response.sendRedirect("main/main.jsp");
                    }else{
                        response.sendRedirect("login.jsp");
                    }
                 }
              }catch(Exception e){
                  e.printStackTrace();
              }finally{
                  rs.close();
                  st.close();
                  con.close();
             }
        %>
    </body>
</html>
