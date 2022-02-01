package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String check = req.getParameter("check");
			
			
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session = req.getSession();
			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (f) {
					session.setAttribute("successMsg", "User registration success");
					resp.sendRedirect("register.jsp");
					//System.out.println("User registration success");
				} else {
					//System.out.println("failed");
					session.setAttribute("failedMsg", "User registration failed");
					resp.sendRedirect("register.jsp");
				}
			} else {
				session.setAttribute("checkMsg", "Please fill the captcha");
				resp.sendRedirect("register.jsp");
				//System.out.println("Please check");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
