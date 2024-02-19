package servlets;

import Classes.DBManagerTasks;
import Classes.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Task2Web/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String email = req.getParameter("email");
         String password = req.getParameter("password");

         Users currentUser  = DBManagerTasks.getUser(email);
         String redirect = "";

         if(currentUser != null) {
                 if (currentUser.getEmail().equals(email)) {
                     if (currentUser.getPassword().equals(password)) {
                         redirect = "/profile";
                     } else {
                         redirect = "/login?ErrorPassword";
                     }

                 }else {
                     redirect = "/login?ErrorEmail";
                 }

             }else {
             redirect = "/login?ERROR";
         }
         resp.sendRedirect(redirect);
    }
}
