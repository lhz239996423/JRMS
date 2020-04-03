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
        <title>处理合同添加数据</title>
    </head>
    <body>
        <%
            String clientName=new String(request.getParameter("clientName") );
            String contactName=new String(request.getParameter("contactName") );
            String contactContents=new String(request.getParameter("contactContents") );
            String contactStart=new String(request.getParameter("contactStart") );
            String contactEnd=new String(request.getParameter("contactEnd") );
            String StaffName=new String(request.getParameter("StaffName") );
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/jrms";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into contact(clientName,contactName,contactContents,contactStart,contactEnd,StaffName) values ('"+clientName+"','"+contactName+"','"+contactContents+"','"+contactStart+"','"+contactEnd+"','"+StaffName+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/JRMS/contactManage/lookContact.jsp");    
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
