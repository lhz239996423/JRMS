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
            String staffName=new String(request.getParameter("staffName") );
            String staffSex=new String(request.getParameter("staffSex") );
            String staffAge=new String(request.getParameter("staffAge") );
            String staffEducation=new String(request.getParameter("staffEducation") );
            String staffDepartment=new String(request.getParameter("staffDepartment") );
            String staffDate=new String(request.getParameter("staffDate") );
            String staffDuty=new String(request.getParameter("staffDuty") );
            String staffWage=new String(request.getParameter("staffWage") );
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/jrms";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into staff(staffName,staffSex,staffAge,staffEducation,staffDepartment,staffDate,staffDuty,staffWage) values ('"+staffName+"','"+staffSex+"','"+staffAge+"','"+staffEducation+"','"+staffDepartment+"','"+staffDate+"','"+staffDuty+"','"+staffWage+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/JRMS/staffManage/lookStaff.jsp");    
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
