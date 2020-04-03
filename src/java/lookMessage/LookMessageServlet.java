/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lookMessage;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import loginRegister.LoginBean;

/**
 *
 * @author Administrator
 */
public class LookMessageServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            HttpSession session=request.getSession();
            ArrayList login=(ArrayList)session.getAttribute("login");
                String userName=null;
            if(login==null||login.size()==0){
                   response.sendRedirect("http://localhost:8080/JRMS/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
            }
        /*String userName=request.getParameter("userName");*/
        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/jrms";
            con=DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            String sql="select * from user where userName='"+userName+"'";
            rs=stmt.executeQuery(sql);
            LookMessageBean mm=new LookMessageBean();
            while(rs.next()){
                mm.setName(rs.getString("name"));
                mm.setSex(rs.getString("sex"));
                mm.setBirth(rs.getString("birth"));
                mm.setNation(rs.getString("nation"));
                mm.setEdu(rs.getString("edu"));
                mm.setWork(rs.getString("work"));
                mm.setPhone(rs.getString("phone"));
                mm.setPlace(rs.getString("place"));
                mm.setEmail(rs.getString("email"));
            }
            ArrayList wordlist=wordlist=new ArrayList();
            wordlist.add(mm);
            session.setAttribute("wordlist", wordlist);
            rs.close();
            stmt.close();
            con.close();
            response.sendRedirect("http://localhost:8080/JRMS/lookMessage/lookMessage.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
        
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

}
