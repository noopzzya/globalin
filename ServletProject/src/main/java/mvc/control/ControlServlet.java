package mvc.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.action.Action;

@WebServlet("*.do")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String cmd = request.getParameter("cmd");
		
		if(cmd != null) { // cmd가 null이 아닐 때
			
			ActionFactory factory = ActionFactory.getInstance();
			Action action = factory.getAction(cmd);
			
			ActionForward af = action.execute(request, response);
			
			if(af.isRedirect()) {
				response.sendRedirect(af.getUrl());
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
			
		}else { // cmd가 null 일 때
			
			// 응답
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			// db 연결 시 예외처리 필수!
			out.println("<html>");
			out.println("<head><title>Error</title></head>");
			out.println("<body>");
			
			out.println("<h4>올바른 요청 방식이 아닙니다.</h4>");
			out.println("<h4>http://localhost:9090/mvc/test.do?cmd=요청키워드</h4>");
			
			out.println("</body>");
			out.println("</html>");
			
		}
		
	}

}
