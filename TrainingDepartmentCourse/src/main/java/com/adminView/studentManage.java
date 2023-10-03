package com.adminView;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.SQLException;



public class studentManage {



    // Delete

            public int delete (int studentId) throws ClassNotFoundException,

            SQLException {

                int result = -1;

                

                // Get Connection

                // step2: Register Driver

                Class.forName("com.mysql.jdbc.Driver");



                // Step 3: Create Connection

                String url = "jdbc:mysql://localhost/studentdata";

                Connection con = DriverManager.getConnection(url, "root", "Hsushune12345@@");

                

                

                

                // Insert to the database (Used executeUpdate for insert/delete and update)

                String sql = "DELETE FROM `studentdata`.`register` WHERE (`userid` = ?)";

                

                PreparedStatement pstmt = con.prepareStatement(sql);

                

                pstmt.setInt(1, studentId);

                

                // Execute statement

                result = pstmt.executeUpdate();

                return result;

            }

    

}

