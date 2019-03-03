<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>XFactor</title>
        <meta charset="UTF-8">
        <style>
            body {
               margin:15px;
            }
        </style>        
    </head>
    <body>
     <% 
     if(request.getParameter("luogo")==null || request.getParameter("luogo").isEmpty()){
      %>
       <h1>Non hai inserito nessun giudice</h1>
      <%
        return;
      } 
      %>

      <h1>Elenco dei giudici di <%= request.getParameter("luogo") %></h1>
        <% 
            
            String connURL = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=gottardo.joshua;user=gottardo.joshua;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connURL);
            
            String luogo = request.getParameter("luogo");

			String sql1 = "SELECT * FROM XFGiudice where LuogoDiNascita = ?";
			PreparedStatement stmt1 = connection.prepareStatement(sql1);
            stmt1.setString(1, luogo);
			ResultSet rs = stmt1.executeQuery();
			
			out.println("<div class=\"container-fluid\">");
			out.print("<table>");
			
			out.print("<tr><th align=left>Cognome</th><th align=left>Nome</th></tr>");
			
    		while(rs.next()){

				String Nome = rs.getString("Nome");
				String Cognome = rs.getString("Cognome");
                
                out.print("<tr><td>" + Cognome + "</td><td>" + Nome + "</td></tr>");

	        }
	        
	        out.print("</table>");
	        out.println("</div>");
	        
	        rs.close();
	        connection.close();
        %>
    </body>
</html>