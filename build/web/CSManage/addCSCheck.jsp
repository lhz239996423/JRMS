<%-- 
    Document   : lookClientCheck
    Created on : 2012-3-23, 21:24:08
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理售后添加数据</title>
    </head>
    <body>
        <%
            String clientName=new String(request.getParameter("clientName") );
            String clientOpinion=new String(request.getParameter("clientOpinion") );
            String StaffName=new String(request.getParameter("StaffName") );
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/jrms";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into cs(clientName,clientOpinion,StaffName) values ('"+clientName+"','"+clientOpinion+"','"+StaffName+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/JRMS/CSManage/lookCS.jsp");    
           }
           catch(Exception e){
               e.printStackTrace();
           }
           finally{
              st.close();
              con.close();
           }
        %>
    </body>
</html>
