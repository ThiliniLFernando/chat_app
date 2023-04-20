<%-- 
    Document   : Admin_Panel
    Created on : Aug 22, 2018, 9:32:40 AM
    Author     : my pc
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.User"%>
<%@page import="Model.Chat"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome Admin</h1>
        <form action="send_message" method="POST">
            <span >User&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <select name="un">
                <%
                    ArrayList<User> sl = (ArrayList<User>) application.getAttribute("user_list");
                    for (User u : sl) {
                %>
                <option><%= u.getUsername()%></option>
                <%
                    }

                %>
            </select>
            <br>
            <span>Message</span>
            <textarea name="msg" ></textarea>
            <input type="submit" value="send">
        </form>
        <br>
        <div style="width: 400px ">
            <%                ArrayList<Chat> cl = (ArrayList<Chat>) application.getAttribute("chat_list");
                for (Chat c : cl) {
                    if (c.getType().equals("Admin")) {
            %>
            <div>
                <span style="color: red; float: right">Me : </span>
                <span><%= c.getContent() %></span>
                <span><%= c.getTime() %></span>
            </div>
            <%
            } else {
            %>
            <div>
                <span style="color: red;"><%= c.getUser().getUsername() %></span>
                <span><%= c.getContent() %></span>
                <span><%= c.getTime() %></span>
            </div>
            <%
                    }
                }
            %>


        </div>
    </body>
</html>
