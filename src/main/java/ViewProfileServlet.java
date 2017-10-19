import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        boolean loggedIn;

        try {

            loggedIn = request.getSession(false).getAttribute("user") != null;

        } catch (NullPointerException npe) {

            loggedIn = false;

        }

        if(loggedIn) {

            request.getRequestDispatcher("WEB-INF/profile.jsp").forward(request, response);

        } else {

            response.sendRedirect("/login");

        }
    }
}
