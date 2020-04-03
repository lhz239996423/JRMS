package org.apache.jsp.dateManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addDate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>个人信息管理系统->增加日程</title>\n");
      out.write("        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bkcolor.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bgp\">\n");
      out.write("      <table align=\"center\"width=\"500\" >\n");
      out.write("          <tr>\n");
      out.write("              <td class=\"tab\">\n");
      out.write("                  <button class=\"topclient\">\n");
      out.write("                      <a href=\"http://localhost:8080/JRMS/dateManager/lookDate.jsp\">查看日程</a>\n");
      out.write("                  </button>\n");
      out.write("              </td>\n");
      out.write("              <td class=\"tab\">\n");
      out.write("                  <button class=\"topclient\">\n");
      out.write("                      <a href=\"http://localhost:8080/JRMS/dateManager/addDate.jsp\">增加日程</a>\n");
      out.write("                  </button>\n");
      out.write("              </td>\n");
      out.write("              <td class=\"tab\">\n");
      out.write("                  <button class=\"topclient\">\n");
      out.write("                      <a href=\"http://localhost:8080/JRMS/dateManager/updateDate.jsp\">修改日程</a>\n");
      out.write("                  </button>\n");
      out.write("              </td>\n");
      out.write("              <td class=\"tab\">\n");
      out.write("                  <button class=\"topclient\">\n");
      out.write("                      <a href=\"http://localhost:8080/JRMS/dateManager/deleteDate.jsp\">删除日程</a>\n");
      out.write("                  </button>\n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("      </table>\n");
      out.write("      <hr>\n");
      out.write("      <br>\n");
      out.write("      <form action=\"http://localhost:8080/JRMS/AddDateServlet\" method=\"post\">\n");
      out.write("          <table border=\"5\" cellspacing=\"0\" cellpadding=\"0\" width=\"60%\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                     <td height=\"30\" width=\"50%\" align=\"right\">日程时间</td>\n");
      out.write("                     <td width=\"50%\">\n");
      out.write("                         20<input type=\"text\" size=\"1\" name=\"year\" value=\"\">年\n");
      out.write("                         <input type=\"text\" size=\"1\" name=\"month\" value=\"\">月\n");
      out.write("                         <input type=\"text\" size=\"1\" name=\"day\" value=\"\">日\n");
      out.write("                     </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                     <td height=\"30\" width=\"50%\" align=\"right\">日程内容</td>\n");
      out.write("                     <td width=\"50%\"><input type=\"text\" size=\"30\" name=\"thing\" value=\"\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" value=\"确 定\" size=\"12\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        <input type=\"reset\" value=\"清 除\" size=\"12\">\n");
      out.write("                    </td>\n");
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
