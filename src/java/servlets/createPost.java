
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "createPost", urlPatterns = {"/createPost"})
public class createPost extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("ad-title");
        Float price = Float.parseFloat(request.getParameter("ad-price"));
        String description = request.getParameter("ad-description");
        
        request.setAttribute("titulo", title);
        request.setAttribute("preco", price);
        request.setAttribute("descricao", description);
        
        request.getRequestDispatcher("feed.jsp").forward(request, response);
        
       
    }

}
