package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReadSheet;


public class TrainingSessionServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				// Create the CoursesAccess class Object
				ReadSheet readSheet = new ReadSheet(); 
				
				//Call the Method to get a list of course
				List<String> coursesfromexcel=readSheet.readCourses();
				
				
				
				req.setAttribute("mycourses", coursesfromexcel);
				

		// Dispatch the JSP 
		RequestDispatcher rd = req.getRequestDispatcher("register.jsp"); 
		rd.forward(req, resp); 
		
	}
}
