package captchagenerator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CreateCaptcha
 */
@WebServlet("/generate")
public class CreateCaptcha extends HttpServlet {
	private static final long serialVersionUID = 1L;     
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GenerateCaptcha gencaptcha=new GenerateCaptcha();
		/* The below code obtains the randomly generated captcha*/
		String captcha=gencaptcha.create();//The function returns the generated captcha 
		request.setAttribute("captcha", captcha);
		RequestDispatcher dispatcher = null;
		/* The below code is used to display the obtained captcha*/
		dispatcher = request.getRequestDispatcher("view.jsp");
		dispatcher.forward(request, response);
	}
}
