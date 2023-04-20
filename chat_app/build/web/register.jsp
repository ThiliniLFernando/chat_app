<%-- 
    Document   : register
    Created on : Aug 22, 2018, 10:37:26 AM
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
        <h1>Register</h1>
        <form action="Register" method="POST">
            <span>Name</span>
            <input type="text" name="name">
            <br>
            <span>User Name</span>
            <input type="text" name="un">
            <br>
            <span>Password</span>
            <input type="password" name="pw">
            <br>
            <input type="submit" value="Register">
        </form>
    </body>
</html>
