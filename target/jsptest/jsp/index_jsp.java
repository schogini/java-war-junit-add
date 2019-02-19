package jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDateTime;
import java.net.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');


    String hostname, serverAddress, node;
    hostname = "[]";
    serverAddress = "[]";
    // node="[]";
    node = System.getenv("NODE");

    try {
        InetAddress inetAddress;
        inetAddress = InetAddress.getLocalHost();
        hostname = inetAddress.getHostName();
        serverAddress = inetAddress.toString();
    } catch (UnknownHostException e) {
        e.printStackTrace();
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<h2>Hello World! 2017</h2>\n");
      out.write("<h3>Hello from Sree 2019 Feb 03 V.3 - Schogini</h3>\n");
      out.write("<h3>5+2=");
      out.print( 5+2 );
      out.write("</h3>\n");
      out.write("<h2>Current time is ");
      out.print( LocalDateTime.now() );
      out.write("</h2>\n");
      out.write("\n");
      out.write("<h2>InetAddress: ");
      out.print(serverAddress );
      out.write("</h2>\n");
      out.write("<h2>Hostname: ");
      out.print(hostname );
      out.write("</h2>\n");
      out.write("<h2>Node: ");
      out.print(node );
      out.write("</h2>\n");
      out.write("<h2>Build: BUILD_ID</h2>\n");
      out.write("\n");
      out.write("Number1:<input id=\"t1\" type=\"text\" name=\"\" value=\"\" /><br></br>\n");
      out.write("Number2:<input id=\"t2\" type=\"text\" name=\"\" value=\"\" /><br></br>\n");
      out.write("<input type=\"button\" value=\"Get Sum\" name=\"Get Sum\" id=\"sum\"/>\n");
      out.write("<div id=\"output\"></div>\n");
      out.write("\n");
      out.write("<input type=\"button\" value=\"Vote\" name=\"Vote\" id=\"vote\"/>\n");
      out.write("<div id=\"voteoutput\"></div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("<head>\n");
      out.write("  <script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js\"></script>\n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("          $(document).ready(function() {\n");
      out.write("              // $(\"#voteoutput\").load(\"http://0.0.0.0:8080/\");\n");
      out.write("              $('#sum').click(function ()\n");
      out.write("              {\n");
      out.write("                  $.ajax({\n");
      out.write("                      type: \"post\",\n");
      out.write("                      url: \"/sample-example/add.jsp\", //this is my servlet\n");
      out.write("                      data: \"t1=\" +$('#t1').val()+\"&amp;t2=\"+$('#t2').val(),\n");
      out.write("                      success: function(msg){\n");
      out.write("                          $('#output').html(msg);\n");
      out.write("                          // alert ('ok');\n");
      out.write("                      }\n");
      out.write("                  });\n");
      out.write("              });\n");
      out.write("              $('#vote').click(function ()\n");
      out.write("              {\n");
      out.write("                  $.ajax({\n");
      out.write("                      type: \"post\",\n");
      out.write("                      url: \"http://0.0.0.0:8080/\", //this is my servlet\n");
      out.write("                      success: function(msg){\n");
      out.write("                          $('#voteoutput').append(msg);\n");
      out.write("                          console.log(\"Message\");\n");
      out.write("                          console.log(msg);\n");
      out.write("                          alert ('ok - ' + msg);\n");
      out.write("                      }\n");
      out.write("                  });\n");
      out.write("              });\n");
      out.write("          });\n");
      out.write("      </script>\n");
      out.write("  </script>\n");
      out.write("  <title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
