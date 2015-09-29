package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import net.sf.json.JSONObject;
import client.MovieClient;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Movie Search Engine</title>\n");
      out.write("    <link href=\"./css/style.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!--start-wrap-->\n");
      out.write("    <!--start-header-->\n");
      out.write("    <div class=\"header\">\n");
      out.write("        <div class=\"wrap\">\n");
      out.write("            <!--start-logo-->\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <a href=\"index.jsp\">Movie</a>\n");
      out.write("            </div>\n");
      out.write("            <!--End-logo-->\n");
      out.write("            <!--start-top-menu-search-->\n");
      out.write("            <div class=\"top-menu\">\n");
      out.write("                <div class=\"top-nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"flickr.jsp\">Flickr</a></li>\n");
      out.write("                        <li><a href=\"youtube.jsp\">Youtube</a></li>\n");
      out.write("                        <li><a href=\"google.jsp\">Google</a></li>\n");
      out.write("                        <li><a href=\"sentiment.jsp\">Sentiment</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"search\">\n");
      out.write("                    <form method=\"post\" action=\"LocalServlet\">\n");
      out.write("                        <input type=\"text\" class=\"textbox\" name=\"search\">\n");
      out.write("                        <input type=\"submit\" value=\" \" />                        \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"> </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clear\"> </div>\n");
      out.write("            <!--End-top-menu-search-->\n");
      out.write("        </div>\n");
      out.write("        <!--End-header-->\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"> </div>\n");
      out.write("    <!--start-content-->\n");
      out.write("    <div class=\"main-content\">\n");
      out.write("        <div class=\"wrap\">\n");
      out.write("\n");
      out.write("            <div class=\"right-content\">\n");
      out.write("                <!--heading-->\n");
      out.write("                <div class=\"right-content-heading\">\n");
      out.write("                    <div class=\"right-content-heading-left\">\n");
      out.write("                        <h3>Movie List</h3>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"clear\"> </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"content-grids\">\n");
      out.write("                    <div class=\"content-grid\">\n");
      out.write("                        <!--<img src=\"./images/gridallbum1.png\" title=\"The Shawshank Redemption\" />-->\n");
      out.write("                        <img src=\"http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX214_AL_.jpg\" title=\"The Shawshank Redemption\" />\n");
      out.write("                        <h3>The Shawshank Redemption</h3>\n");
      out.write("                        <a class=\"button\" href=\"LocalServlet?search=The%20Shawshank%20Redemption\">Introduction</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content-grid\">\n");
      out.write("                        <!--<a href=\"local.html\"><img src=\"./images/gridallbum2.png\" title=\"The Godfather\" /></a>-->\n");
      out.write("                        <img src=\"http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX214_AL_.jpg\" title=\"The Godfather\" />\n");
      out.write("                        <h3>The Godfather</h3>\n");
      out.write("                        <a class=\"button\" href=\"LocalServlet?search=The%20Godfather\">Introduction</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content-grid\">\n");
      out.write("                        <img src=\"http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY317_CR0,0,214,317_AL_.jpg\" title=\"The Dark Knight\" />\n");
      out.write("                        <h3>The Dark Knight</h3>\n");
      out.write("                        <a class=\"button\" href=\"LocalServlet?search=The%20Dark%20Knight\">Introduction</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content-grid last-grid\">\n");
      out.write("                        <img src=\"http://ia.media-imdb.com/images/M/MV5BMzMwMTM4MDU2N15BMl5BanBnXkFtZTgwMzQ0MjMxMDE@._V1_SX214_AL_.jpg\" title=\"Schindler's List\" />\n");
      out.write("                        <h3>Schindler's List</h3>\n");
      out.write("                        <a class=\"button\" href=\"LocalServlet?search=Schindler's%20List\">Introduction</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clear\"> </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"> </div>\n");
      out.write("    <!--End-content-->\n");
      out.write("    <!--End-wrap-->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
