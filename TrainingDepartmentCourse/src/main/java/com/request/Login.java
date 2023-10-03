package com.request;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) 
       {
             String n=request.getParameter("userName");  
             String p=request.getParameter("userPass");
             if(p.equals("admin"))
             {  
                    RequestDispatcher rd=(RequestDispatcher)request.getRequestDispatcher("/admindashboard.jsp");  
                    rd.forward(request, response);   //success page 
             }  
                 else
             {  
               	  //out.print("Sorry UserName or Password Error!");  
               	  RequestDispatcher rd=(RequestDispatcher) request.getRequestDispatcher("training");  
               	  rd.forward(request, response);   //user page 
                   
             }     
                 
      }

	}

	
	

}
