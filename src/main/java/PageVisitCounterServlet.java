import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PageVisitCounterServlet", urlPatterns = "/count")
public class PageVisitCounterServlet extends HttpServlet {
    private int counter = 0;

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        if(request.getParameter("reset") != null) {
            counter = 0;
        }

        counter++;

        response.getWriter().printf("<h1>This page has been visited %d times!!!</h1>", counter);
    }
}
