<%@ page import = "java.io.*,java.util.*" %>
<% if (session.isNew()){
response.sendRedirect("/html/login.html");
} else {
response.sendRedirect("/html/home.html");
} %>