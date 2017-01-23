package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class SimpleController extends HttpServlet{
	
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			processRequest(request, response);
		}
		
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			processRequest(request, response);
		}
		
		private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			//2단계, 요청 파악
			String type = request.getParameter("type");
			
			//3단계, 요청받은 기능 수행
			Object resultObject = null;
			if(type==null || type.equals("greeting")) {
				resultObject = "안뇽하세여~~";
			} else if(type.equals("date")) {
				resultObject = new java.util.Date();
			} else {
				resultObject = "Invalid Type";
			}
			
			//4단계, request나 session에 처리 결과를 저장
			request.setAttribute("result", resultObject);
			
			//5단계, RequestDispatcher를 사용하여 알맞은 뷰로 forwarding
			RequestDispatcher dispatcher = request.getRequestDispatcher("/simpleView.jsp");
			dispatcher.forward(request, response);
		}

}
