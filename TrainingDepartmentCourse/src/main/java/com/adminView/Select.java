package com.adminView;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/Select")
public class Select extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	public Select() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request,response);
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  response.setContentType("text/html");
		  PrintWriter out=response.getWriter();
		  
		  
		    
		  out.println("<html>");
		  out.println("<body bgcolor=183028 style='color: white;'>");
		  out.println("<body text color=white>");
		  out.println("<h2>List of Student Information:</h2>");
		  out.println("<hr>");
		  out.println("<br>");
		  out.println("<br>");
		  
		  out.println("<center>");
		  out.println("<br>");
		  out.println("<br>");
		  
		  try {
              //JDBC Connection
		     Class.forName("com.mysql.jdbc.Driver"); // registration mysql thin driver class
		     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdata","root","Hsushune12345@@"); //getConnection
		        
		        String sql="select * from studentdata.register";
		        
		        PreparedStatement ps = con.prepareStatement(sql);
		        
               ResultSet rs =ps.executeQuery(); // for select the data from database..
			 
               out.println("<table border=1 width=25% height=25%>");  
            
              out.println("<tr>"
              		+ "<th>User Id</th>"
              		+ "<th>User Name</th>"
              		+ "<th>E Mail</th>"
              		+ "<th>Phone Number</th>"
              		+ "<th>Address</th>"
              		+ "<th>Course</th>"
              		+"<th>Delete</th>"
              		+ "<tr>"); 
          
              while (rs.next()) {
                  out.println("<tr>");
                  out.println("<td>" + rs.getInt(1) + "</td>");
                  out.println("<td>" + rs.getString(2) + "</td>");
                  out.println("<td>" + rs.getString(3) + "</td>");
                  out.println("<td>" + rs.getString(4) + "</td>");
                  out.println("<td>" + rs.getString(5) + "</td>");
                  out.println("<td>" + rs.getString(6) + "</td>");
                  out.println("<td><a style='color:white;' href='student_delete.jsp?userid=" + rs.getString(1)
                          + "'>Delete</a></td>");
                  out.println("</tr>");
              }
              out.println("</table");
                    
            con.close();
                 
            
        }catch(ClassNotFoundException e){
            out.println("Error "+e);
            
        } catch (SQLException e) {
			 
			e.printStackTrace();
		}
		 out.println("</center>");
         out.println("</body>");
         out.println("</html>");
        
 
	}

}

