package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.SelectedCourseDao;
import model.SendEmail;

public class RegisterSessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("static-access")
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String register_name = req.getParameter("name");
        String register_course = req.getParameter("course");
        String register_email = req.getParameter("email");
        String register_address = req.getParameter("address");
        String register_ph_number = req.getParameter("ph_number");

        SelectedCourseDao courseReg = new SelectedCourseDao();

        // Call the Method to save the register course
        Course reg_course = courseReg.saveRegisterCourse(register_name, register_course, register_email, register_address, register_ph_number);

        // Send Email To User
        SendEmail mm = new SendEmail();
        String sub = "Information About the Registered Session";

        String message = getRegistrationMessage(register_course);
        mm.send("shunelailluvia113@gmail.com", "fazenieyaeftjjzt", register_email, sub, message);

        req.setAttribute("register_course", reg_course);

        // Dispatch the JSP
        RequestDispatcher rd = req.getRequestDispatcher("thankyou.jsp");
        rd.forward(req, resp);

    }

    private String getRegistrationMessage(String register_course) {
        String sessionType;
        String sessionTiming;
        if (register_course.contains("Morning")) {
            sessionType = "morning";
            sessionTiming = "from 9:00 AM to 11:00 AM";
        } else if (register_course.contains("Afternoon")) {
            sessionType = "afternoon";
            sessionTiming = "from 12:30 PM to 3:00 PM";
        } else if (register_course.contains("Evening")) {
            sessionType = "evening";
            sessionTiming = "from 3:00 PM to 5:00 PM";
        } else {
            sessionType = "unknown";
            sessionTiming = "at an unspecified time";
        }

        return String.format("Hello! Thank you for enrolling in our course. You've successfully registered for the %s session. Your classes will be %s. Check your email for more details. Happy learning!", sessionType, sessionTiming);
    }
}
