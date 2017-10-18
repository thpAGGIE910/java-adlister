import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdsListServlet", urlPatterns = "/ads")
public class AdsListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ads ads = DaoFactory.getAdsDao();
        request.setAttribute("ads", ads.all());
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }
}
