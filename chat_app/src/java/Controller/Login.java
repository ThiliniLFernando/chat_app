/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author my pc
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String un = req.getParameter("un");
        String pw = req.getParameter("pw");
        if (un.equals("Admin") && pw.equals("123")) {
            req.getSession().setAttribute("admin","admin");
            resp.sendRedirect("Admin_Panel.jsp");
        } else {
            ArrayList<User> u = (ArrayList<User>) req.getServletContext().getAttribute("user_list");
            for (User user : u) {
                if (user.getUsername().equals(un) && user.getPassword().equals(pw)) {
                    req.getSession().setAttribute("name", user.getName());
                    req.getSession().setAttribute("user", user);
                    resp.sendRedirect("Profile.jsp");
                    break;
                }
            }
        }
    }

}
