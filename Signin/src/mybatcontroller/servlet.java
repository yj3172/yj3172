package mybatcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatcontroller.Commentselect;

import mybatcontroller.controller;

public class servlet extends HttpServlet{

	@Override

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		controller inter = null;
		String viewName = "";

		
		try {
			if(command.equals("select")){
				inter = Commentselect.instance();
				viewName = inter.showData(request, response);

				request.getRequestDispatcher(viewName).forward(request, response);
			} else if(command.equals("insert")){
			//	inter = Insert.instance();
				viewName = inter.showData(request, response);
			
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if(command.equals("update")){
	//			inter = Update.instance();
				viewName = inter.showData(request, response);
		
				request.getRequestDispatcher(viewName).forward(request, response);
			}	else if(command.equals("delete")){
		//		inter = Delete.instance();
				viewName = inter.showData(request, response);
	
				request.getRequestDispatcher(viewName).forward(request, response);
			}else {
				viewName = "error.html";
				response.sendRedirect(viewName);
			}
		} catch (Exception e) {
			System.out.println("service err : " + e);
		}
	}

}
