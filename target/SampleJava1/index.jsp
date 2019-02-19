<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.net.*" %>
<%-- <%@ page import="redis.clients.jedis.Jedis" %> --%>

<%-- <%@ page import="com.schogini.*" language="java" %>
<%@ page import="redis.clients.jedis.Jedis" language="java" %> --%>

<%-- <%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>

<%
RedisManager.getInstance().connect();
Jedis jedis = RedisManager.getInstance().getJedis();
// Jedis jedis = new RedisManager.getInstance();
jedis.set("foo", "bar");
String foobar = jedis.get("foo");
out.println(foobar);
RedisManager.getInstance().returnJedis(jedis);
%> --%>

<%-- <%

String jedishost = "localhost";//The access URL is displayed on the console.
int jedisport = 32768;
Jedis jedis = new Jedis(jedishost,jedisport);
jedis.set("foo", "bar");
String foobar = jedis.get("foo");
out.println(foobar);

String foonum = jedis.get("number");
out.println(foonum);
%> --%>

<%

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
%>
<!DOCTYPE html>
<html>

<body>
<h2>Hello World! 2017</h2>
<h3>Hello from Sree 2019 Feb 03 V.3 - Schogini</h3>
<h3>5+2=<%= 5+2 %></h3>
<h2>Current time is <%= LocalDateTime.now() %></h2>

<h2>InetAddress: <%=serverAddress %></h2>
<h2>Hostname: <%=hostname %></h2>
<h2>Node: <%=node %></h2>
<h2>Build: BUILD_ID</h2>

Number1:<input id="t1" type="text" name="" value="" /><br></br>
Number2:<input id="t2" type="text" name="" value="" /><br></br>
<input type="button" value="Get Sum" name="Get Sum" id="sum"/>
<div id="output"></div>

<input type="button" value="Vote" name="Vote" id="vote"/>
<div id="voteoutput"></div>

</body>
<head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
      <script type="text/javascript">
          $(document).ready(function() {
              // $("#voteoutput").load("http://0.0.0.0:8080/");
              $('#sum').click(function ()
              {
                  $.ajax({
                      type: "post",
                      url: "/sample-example/add.jsp", //this is my servlet
                      data: "t1=" +$('#t1').val()+"&amp;t2="+$('#t2').val(),
                      success: function(msg){
                          $('#output').html(msg);
                          // alert ('ok');
                      }
                  });
              });
              $('#vote').click(function ()
              {
                  $.ajax({
                      type: "post",
                      url: "http://0.0.0.0:8080/", //this is my servlet
                      success: function(msg){
                          $('#voteoutput').append(msg);
                          console.log("Message");
                          console.log(msg);
                          alert ('ok - ' + msg);
                      }
                  });
              });
          });
      </script>
  </script>
  <title>JSP Page</title>
</head>
</html>
