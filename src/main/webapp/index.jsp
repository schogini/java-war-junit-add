<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.net.*" %>

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

<input type="button" value="Vote" name="Vote" id="vote"/>
<div id="voteoutput"></div>

Number1:<input id="t1" type="text" name="" value="" /><br></br>
Number2:<input id="t2" type="text" name="" value="" /><br></br>
<input type="button" value="Get Sum" name="Get Sum" id="sum"/>
<div id="output"></div>

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
                      url: "http://0.0.0.0:8080/", //this is the python script ran using docker-compose up
                      success: function(msg){
                          $('#voteoutput').html(msg);
                          // console.log("Message");
                          // console.log(msg);
                          // alert ('ok - ' + msg);
                      }
                  });
              });
          });
      </script>
  </script>
  <title>JSP Page</title>
</head>
</html>
