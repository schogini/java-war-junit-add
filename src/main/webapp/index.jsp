<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%
    String hostname, serverAddress;
    hostname = "error";
    serverAddress = "error";
    try {
        InetAddress inetAddress;
        inetAddress = InetAddress.getLocalHost();
        hostname = inetAddress.getHostName();
        serverAddress = inetAddress.toString();
    } catch (UnknownHostException e) {

        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
<body>
<h2>Hello World!</h2>
<h3>Hello from Sree 2017</h3>
<h3>5+2=<%= 5+2 %></h3>
<h2>Current time is <%= LocalDateTime.now() %></h2>

<h2>InetAddress: <%=serverAddress %></h2>
<h2>InetAddress.hostname: <%=hostname %></h2>
</body>
</html>
