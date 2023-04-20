/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Chat;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author my pc
 */
public class send_message extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String msg = req.getParameter("msg");
        String type = "";
        String url = "";
        User u = null ;
        if (req.getSession().getAttribute("admin") != null) {
            type = "Admin" ;
            String un = req.getParameter("un");
            ArrayList<User> ul = (ArrayList<User>) req.getServletContext().getAttribute("user_list");
            for (User user : ul) {
                if (user.getUsername().equals(un)) {
                    u = user ;
                    url = "Admin_Panel.jsp";
                    break;
                } 
            }
        } else {
            type = "User";
            u = (User) req.getSession().getAttribute("user");
            url = "Profile.jsp";
        }
        Chat c = new Chat(u, msg, new Date(), type) ;
        ArrayList<Chat> cl = (ArrayList<Chat>) req.getServletContext().getAttribute("chat_list");
        cl.add(c);
        resp.sendRedirect(url);
    }

}
