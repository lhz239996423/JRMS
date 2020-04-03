package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("﻿<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<title>CSS3响应式二级导航菜单 - 源码之家</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n");
      out.write("<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bkcolor.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/index.css?v=");
      out.print( System.currentTimeMillis());
      out.write("\">\n");
      out.write("<style>\n");
      out.write("    #mydiv{\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: #84C1FF;\">\n");
      out.write("    <div class=\"index-nav\"  style=\"z-index: 9\">\n");
      out.write("        <div class=\"index-nav-frame-line active\" tabindex=\"-1\">\n");
      out.write("            个人中心\n");
      out.write("            <div class=\"index-nav-frame-line-center\">\n");
      out.write("                <div class=\"index-nav-frame-line-li\">\n");
      out.write("                    <button class=\"leftbutton\">\n");
      out.write("                    <a onclick=\"change(http://localhost:8080/JRMS/LookFriendServlet)\">通讯录管理</a>\n");
      out.write("                    </button>\n");
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
      out.write("    </div>\n");
      out.write("    <iframe id=\"ifr\" src=\"\">\n");
      out.write("<div id=\"mydiv\"><h3 style=\"text-align: center;line-height: 50px;color: aliceblue;font-size: 18px\">调整浏览器窗口大小查看效果</h3></div>\n");
      out.write("\n");
      out.write("<div style=\"text-align:center;\">\n");
      out.write("<p>更多源码：<a href=\"http://www.mycodes.net/\" target=\"_blank\">源码之家</a></p>\n");
      out.write("</div></iframe>\n");
      out.write("<script language=\"javascript\">\n");
      out.write("function change(src)\n");
      out.write("{\n");
      out.write("ifr.location.src=src;\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("左边的导航加个链接\n");
      out.write("<a href=\"#\" onclick=\"change(--这里要写iframe中需要显示的页面--)\"></a>\n");
      out.write("</body>\n");
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
