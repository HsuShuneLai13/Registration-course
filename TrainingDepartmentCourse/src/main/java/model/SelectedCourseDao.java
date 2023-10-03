package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectedCourseDao {

	public Course saveRegisterCourse(String register_name, String register_course, String register_email, String register_address, String register_ph_number) {
		
		// TODO Auto-generated method stub
		Course reg_course=new Course();
		
		try {
			// step2: Register Driver
			Class.forName("com.mysql.jdbc.Driver");

			// Step 3: Create Connection
			String url = "jdbc:mysql://localhost/studentdata";
			Connection con = DriverManager.getConnection(url, "root", "Hsushune12345@@");

			

			// step4: Create a Statement
			Statement stmt = con.createStatement();

			// Insert to the database (Used executeUpdate for insert/delete and update)
			int result = stmt.executeUpdate(
					"INSERT INTO `studentdata`.`register` (user_name,selected_course,email,address,ph_number) values ('"
							+ register_name + "','" + register_course  + "','" + register_email+"','" +register_address+"','"+register_ph_number+"');");
			

			
				// Put the data to access from controller/JSP
				reg_course.setUser_name(register_name);
				reg_course.setCourse(register_course);
				reg_course.setEmail(register_email);
				reg_course.setAddress(register_address);
				reg_course.setPh_number(register_ph_number);
				
				
				
			// step 7: Close the statement and connection
			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();

		}

		return reg_course;
	}
}
