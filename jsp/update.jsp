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
			String dataDiNascita = request.getParameter("data-di-nascita");
			
            String sqlUpdate = "UPDATE XFGiudice SET DataDiNascita = ? WHERE Nome = ? AND Cognome = ?";
	        
			PreparedStatement stmtUpdate = connection.prepareStatement(sqlUpdate);
			stmtUpdate.setString(1, dataDiNascita);
            stmtUpdate.setString(2, nome);
			stmtUpdate.setString(3, cognome);
			stmtUpdate.executeUpdate();

		    connection.close();	
		} catch (Exception e) {
            out.println(e);
		}
     %>
    </body>
</html>