<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import = "java.io.*,java.util.*, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>XFactor</title>
        <style>
            body {
               margin:15px;
            }
        </style>
    </head>
    <body>
    <%      
        try{
            String connURL = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=gottardo.joshua;user=gottardo.joshua;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connURL);
    		
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
            String luogoDiNascita = request.getParameter("luogo-di-nascita");
            String dataDiNascita = request.getParameter("data-di-nascita");
            String soprannome = request.getParameter("soprannome");
            String nazioneDiNascita = request.getParameter("nazione");
            String biografia = request.getParameter("bio");
            String temp = request.getParameter("prima-edizione");
            int primaEdizione = Integer.parseInt(temp);
            
            String sqlGiudice = "INSERT INTO XFGiudice (Nome, Cognome, LuogoDiNascita, DataDiNascita, Soprannome, NazioneDiNascita, Biografia, PrimaEdizione) VALUES (?,?,?,?,?,?,?,?)";
    	   
    	    PreparedStatement stmtGiudice = connection.prepareStatement(sqlGiudice);		
    		stmtGiudice.setString(1, nome);
    		stmtGiudice.setString(2, cognome);
    		stmtGiudice.setString(3, luogoDiNascita);
    		stmtGiudice.setString(4, dataDiNascita);
    		stmtGiudice.setString(5, soprannome);
    		stmtGiudice.setString(6, nazioneDiNascita);
    		stmtGiudice.setString(7, biografia);
    		stmtGiudice.setInt(8, primaEdizione);
            stmtGiudice.executeUpdate();	
            
            connection.close(); %>

        <% } catch (Exception e) {
            out.println(e);
        }
        response.sendRedirect("../html/home.html");
 %>
    </body>
</html>