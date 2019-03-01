<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Success Page</title>
</head>
<body>
<%
    Date createTime = new Date(session.getCreationTime());
    Date lastAccessTime = new Date(session.getLastAccessedTime());
    out.println(createTime);
    out.println(lastAccessTime);
   
    /*String username = request.getParameter("username"); 
    String password = request.getPassword("password");
    boolean online = false;
    
    String sqlUsers = "SELECT COUNT(idUtente) as utenti FROM MWUtente WHERE username = ? AND password = ?";
    PreparedStatement stmtUsers = connection.prepareStatement(sqlUsers);
    stmtUsers.setString(1, username);
    stmtUsers.setString(2, password);
    ResultSet rs2Users = stmtUsers.executeQuery();
    while (rs2Users.next()) {
        utenti = rs2Users.getInt("utenti");
    }
    rs2Users.close();
    if (utenti == 0) {
        out.println("---LE CREDENZIALI NON CORRISPONDONO AD ALCUN UTENTE, REGISTRATI O RIPROVA IL LOGIN---");
    } else {
        online = true;
    }*/
%>
</body>
</html>