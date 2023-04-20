<%-- 
    Document   : login
    Created on : Aug 22, 2018, 9:30:23 AM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="Login" method="POST">
            <span>User Name</span>
            <input type="text" name="un">
            <br>
            <span>Password</span>
            <input type="password" name="pw">
            <br>
            <input type="submit" value="Login">
        </form>
        <br><br>
        
    </body>
</html>
