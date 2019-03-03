<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>XFactor</title>       
    </head>
    <body>
        <%  
        try {            
            String connURL = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=gottardo.joshua;user=gottardo.joshua;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connURL);
            
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
        
	        String sqlElimina = "DELETE FROM XFGiudice WHERE Nome = ? AND Cognome = ?";
	        
			PreparedStatement stmtElimina = connection.prepareStatement(sqlElimina);
			stmtElimina.setString(1, nome);
			stmtElimina.setString(2, cognome);			
			stmtElimina.executeUpdate();

		    connection.close();	
		} catch (Exception e) {
            out.println(e);
		}
		
		response.sendRedirect("../html/home.html");
     %>
    </body>
</html>