package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = "Fulano";
        String password = "123";
        String userReq = request.getParameter("usuario");
        String passReq = request.getParameter("senha");
        
        if(user.equals(userReq) && password.equals(passReq) ){
            request.setAttribute("usuario", user);
        }else{
            request.setAttribute("resposta", "Usuário ou senha incorreta!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        request.getRequestDispatcher("feed.jsp").forward(request, response);
    }

   

}
