<%-- 
    Document   : Profile
    Created on : Aug 22, 2018, 9:33:26 AM
    Author     : my pc
--%>

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
        <h1>Welcome ${sessionScope.name}</h1>
        <form action="send_message" method="POST">
            <span>Message</span>
            <textarea name="msg" ></textarea>
            <input type="submit" value="send">
        </form>
        <br>

        <a href="get_messages"><button>View Messages</button></a>
        <div style="width: 400px ">
            <%                ArrayList<Chat> cl = (ArrayList<Chat>) application.getAttribute("chat_list");
                for (Chat c : cl) {
                    if (c.getType().equals("Admin")) {
            %>
            <div>
                <span style="color: red; float: right">Me : </span>
                <span><%= c.getContent()%></span>
                <span><%= c.getTime()%></span>
            </div>
            <%
            } else {
                   User u1 = (User) request.getSession().getAttribute("user") ;
                        if(u1.getUsername().equals(c.getUser().getUsername())){
            %>
            <div>
                <span style="color: red;"><%= c.getUser().getUsername()%></span>
                <span><%= c.getContent()%></span>
                <span><%= c.getTime()%></span>
            </div>
            <%
                        }
                    }
                }
            %>
        </div>
    </body>
</html>
