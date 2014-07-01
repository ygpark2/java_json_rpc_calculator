package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\">\n");
      out.write("    <title>Calculator</title>\n");
      out.write("\t<script src=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\n");
      out.write("    <!-- Latest compiled and minified CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified JavaScript -->\n");
      out.write("    <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"resources/js/jquery.jsonrpcclient.js\"></script>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        var foo = new $.JsonRpcClient({ ajaxUrl: 'calculatorService'});\n");
      out.write("        foo.call(\n");
      out.write("            'plus', [ 3, 4 ],\n");
      out.write("            function(result) { alert('Foo bar answered: ' + result ); },\n");
      out.write("            function(error)  { console.log('There was an error', error); }\n");
      out.write("        );\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("            <h1>JSON RPC CALCULATOR</h1>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-4\"></div>\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"value\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">1</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">2</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">3</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">.</button></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">4</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">5</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">6</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">+</button></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">7</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">8</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">9</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">-</button></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">*</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">0</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">/</button></div>\n");
      out.write("                <div class=\"col-md-3\"><button type=\"button\" class=\"btn btn-default btn-block\">=</button></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
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
