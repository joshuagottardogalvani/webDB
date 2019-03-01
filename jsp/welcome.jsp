<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Session Tracking</title>
   </head>
   
   <body>
   <%
   if (session.isNew() ){
       out.println("Benvenuto");
    } else {
        out.println("Welcome back");    
        /*visitCount = (Integer)session.getAttribute(visitCountKey);
        visitCount = visitCount + 1;
        userID = (String)session.getAttribute(userIDKey);
        session.setAttribute(visitCountKey,  visitCount);*/
    }  
    %>
   </body>
</html>