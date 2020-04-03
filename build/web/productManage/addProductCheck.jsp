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
        <title>处理客户添加数据</title>
    </head>
    <body>
        <%
            String productName=new String(request.getParameter("productName") );
            String productModel=new String(request.getParameter("productModel") );
            String productNumber=new String(request.getParameter("productNumber") );
            String productPrice=new String(request.getParameter("productPrice") );
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/jrms";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into product(productName,productModel,productNumber,productPrice) values ('"+productName+"','"+productModel+"','"+productNumber+"','"+productPrice+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/JRMS/productManage/lookProduct.jsp");    
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
