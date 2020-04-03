package org.apache.jsp.clientManage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addClient_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!Doctype html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n");
      out.write("        <title>添加客户信息</title>\n");
      out.write("        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bkcolor.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/index.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("        <style>\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bgp\">\n");
      out.write("        <div class=\"index-nav\"  style=\"z-index: 9\">\n");
      out.write("        <div class=\"index-nav-frame-line active\" tabindex=\"-1\">\n");
      out.write("            个人中心\n");
      out.write("            <div class=\"index-nav-frame-line-center\">\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    <a href=\"http://localhost:8080/JRMS/LookFriendServlet\" target=\"main\">通讯录管理</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    首页2\n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    首页3\n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    首页4\n");
      out.write("                </div>\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    首页5\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"http://localhost:8080/JRMS/clientManage/addClientCheck.jsp\" method=\"post\" >\n");
      out.write("            <table align=\"center\"width=\"500\" >\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"tab\">\n");
      out.write("                        <button class=\"topclient\">\n");
      out.write("                            <a href=\"http://localhost:8080/JRMS/clientManage/lookClient.jsp\">客户查询</a>\n");
      out.write("                        </button>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tab\">\n");
      out.write("                        <button class=\"topclient\">\n");
      out.write("                            <a href=\"http://localhost:8080/JRMS/clientManage/addClient.jsp\">客户添加</a>\n");
      out.write("                        </button>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tab\">\n");
      out.write("                        <button class=\"topclient\">\n");
      out.write("                            <a href=\"http://localhost:8080/JRMS/clientManage/updateClient.jsp\">客户修改</a>\n");
      out.write("                        </button>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tab\">\n");
      out.write("                        <button class=\"topclient\">\n");
      out.write("                            <a href=\"http://localhost:8080/JRMS/clientManage/deleteClient.jsp\">客户删除</a>\n");
      out.write("                        </button>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <hr>\n");
      out.write("            <br>\n");
      out.write("            <table align=\"center\"width=\"300\" >\n");
      out.write("                 <tr>\n");
      out.write("                     <th colspan=\"4\" align=\"center\">添加客户信息</th>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>姓名</td>\n");
      out.write("                     <td><input type=\"text\" name=\"clientName\"/></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>电话</td>\n");
      out.write("                     <td><input type=\"text\" name=\"clientTelephone\"/></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>地址</td>\n");
      out.write("                     <td><input type=\"text\" name=\"clientAddress\"/></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>邮箱</td>\n");
      out.write("                     <td><input type=\"text\" name=\"clientEmail\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                     <td colspan=\"2\">\n");
      out.write("                         <input name=\"sure\"type=\"submit\"value=\"确认\">\n");
      out.write("                         &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                         <input name=\"clear\"type=\"reset\"value=\"取消\">\n");
      out.write("                     </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
