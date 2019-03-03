<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*, java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Elenco giudici XFactor</title>
        <style>
            body {
               margin:15px;
            }
        </style>
    </head>
    <body>
        <h1>Elenco dei giudici di XFactor</h1>
        <% 
            String connURL = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=gottardo.joshua;user=gottardo.joshua;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connURL);
			
			Statement stmt = connection.createStatement();
			String sql = "SELECT * FROM XFGiudice order by Cognome";
			ResultSet rs = stmt.executeQuery(sql);

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