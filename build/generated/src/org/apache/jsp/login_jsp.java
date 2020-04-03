package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>嘉荣超市信息管理系统--登录页面</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <!-- CSS -->\n");
      out.write("        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/reset.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/supersized.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bkcolor.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("            <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"page-container\">\n");
      out.write("            <h1>Login</h1>\n");
      out.write("            <form action=\"http://localhost:8080/JRMS/LoginServlet\" method=\"post\">\n");
      out.write("                <input type=\"text\" name=\"userName\" class=\"username\" placeholder=\"Username\">\n");
      out.write("                <input type=\"password\" name=\"password\" class=\"password\" placeholder=\"Password\">\n");
      out.write("                <div align=\"left\" style=\"float:left\">\n");
      out.write("                    <button type=\"reset\">Reset</button>\n");
      out.write("                </div>\n");
      out.write("                <div align=\"right\">\n");
      out.write("                    <button type=\"submit\">Sign in</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"reg_a\">\n");
      out.write("                    <a href=\"http://localhost:8080/JRMS/register/register.jsp\">注册</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"error\"><span>+</span></div>\n");
      out.write("            </form>\n");
      out.write("            <div class=\"connect\"></div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- Javascript -->\n");
      out.write("        <script src=\"js/jquery-1.8.2.min.js\"></script>\n");
      out.write("        <script src=\"js/supersized.3.2.7.min.js\"></script>\n");
      out.write("        <script src=\"js/supersized-init.js\"></script>\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
