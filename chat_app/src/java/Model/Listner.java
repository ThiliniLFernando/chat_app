/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.util.ArrayList;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 *
 * @author my pc
 */
@WebListener
public class Listner implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ArrayList<User> ul = new ArrayList<>();
        ArrayList<Chat> cl = new ArrayList<>();
        sce.getServletContext().setAttribute("user_list", ul);
        sce.getServletContext().setAttribute("chat_list", cl);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
