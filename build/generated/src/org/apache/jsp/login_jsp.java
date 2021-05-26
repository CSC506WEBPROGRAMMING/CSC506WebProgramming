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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE HTML>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>CSC506 Web Programming</title>\n");
      out.write("    <!-- Meta tag Keywords -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta name=\"keywords\" content=\"CSC506 WEB PROGRAMMING\" />\n");
      out.write("    <script>\n");
      out.write("        addEventListener(\"load\", function () {\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\n");
      out.write("\t\t}, false);\n");
      out.write("\n");
      out.write("\t\tfunction hideURLbar() {\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("    <!-- //Meta tag Keywords -->\n");
      out.write("\n");
      out.write("    <!-- Custom-Files -->\n");
      out.write("    <link href=\"csss/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("    <!-- Bootstrap-CSS -->\n");
      out.write("    <link href=\"csss/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("    <!-- Style-CSS -->\n");
      out.write("    <link href=\"csss/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- Font-Awesome-Icons-CSS -->\n");
      out.write("    <!-- //Custom-Files -->\n");
      out.write("\n");
      out.write("    <!-- Web-Fonts -->\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\"\n");
      out.write("        rel=\"stylesheet\">\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext\" rel=\"stylesheet\">\n");
      out.write("    <!-- //Web-Fonts -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- header -->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"header d-lg-flex justify-content-between align-items-center py-2 px-sm-2 px-1\">\n");
      out.write("                <!-- logo -->\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <h1><a href=\"index.html\">CSC506 Web Programming</a></h1>\n");
      out.write("                </div>\n");
      out.write("                <!-- //logo -->\n");
      out.write("                <!-- nav -->\n");
      out.write("                <div class=\"nav_w3ls ml-lg-5\">\n");
      out.write("                    <nav>\n");
      out.write("                        <label for=\"drop\" class=\"toggle\">Menu</label>\n");
      out.write("                        <input type=\"checkbox\" id=\"drop\" />\n");
      out.write("                        <ul class=\"menu\">\n");
      out.write("\n");
      out.write("                            <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                            <li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <!-- //nav -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- //header -->\n");
      out.write("\n");
      out.write("    <!-- inner banner -->\n");
      out.write("    <div class=\"inner-banner-w3ls py-5\" id=\"home\">\n");
      out.write("        <div class=\"container py-xl-5 py-lg-3\">\n");
      out.write("            <!-- login  -->\n");
      out.write("            <div class=\"modal-body my-5 pt-4\">\n");
      out.write("                <h3 class=\"title-w3 mb-5 text-center text-wh font-weight-bold\">Login Now</h3>\n");
      out.write("               \n");
      out.write("                <div style = \"color: #FFB6C1;\"> <center> <b> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ errorMessage }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </b></center> </div>\n");
      out.write("                \n");
      out.write("                <form action=\"LoginServlet\" >\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Username</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"your name\" name=\"un\" required=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-form-label\">Password</label>\n");
      out.write("                        <input type=\"password\" class=\"form-control\" placeholder=\"*****\" name=\"pw\" required=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn button-style-w3\" name=\"submit\">Login</button>\n");
      out.write("              \n");
      out.write("                      \n");
      out.write("                        <div class=\"col-sm-6 forgot-w3l text-sm-right\">\n");
      out.write("                         \n");
      out.write("                        </div>\n");
      out.write("                 \n");
      out.write("                    <p class=\"text-center dont-do text-style-w3ls text-li\">Don't have an account?\n");
      out.write("                        <a href=\"register.jsp\" class=\"font-weight-bold text-li\">\n");
      out.write("                            Register Now</a>\n");
      out.write("                    </p>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <!-- //login -->\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
