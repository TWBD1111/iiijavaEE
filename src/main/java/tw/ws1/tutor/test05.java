package tw.ws1.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test05
 */
@WebServlet("/test05")
public class test05 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		System.out.printf("%s : %s\n", x, y);
		int result = Integer.parseInt(x) +Integer.parseInt(y);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.printf("%s + %s = %d", x, y,result);
		
		
		
		
		
		
	}

}
