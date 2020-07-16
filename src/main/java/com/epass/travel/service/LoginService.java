package com.epass.travel.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epass.travel.model.Admin;
import com.epass.travel.model.User;
import com.epass.travel.repository.AppConstants;
import com.epass.travel.repository.UserRepository;
import com.mysql.cj.Session;

@Service
public class LoginService implements AppConstants{
	
	@Autowired
	private UserRepository userRepository;

	public String login(HttpServletRequest request) {
		String email = request.getParameter("emailLogin");
		
		if(request.getParameter("adminCheck") != null) {
			return checkIfAdmin(request);
		}
		else {
			User user = userRepository.findByEmailIgnoreCase(email);
			if (user == null)
				return "No such email exists.. For admin login tick the box";
			else if (!user.getPassword().equals(request.getParameter("passwordLogin")))
				return "Password is incorrect";
			else if (!user.isVerified())
				return "Please verify your account from your email to login";
			return "User";
		}
	}
	
	public String checkIfAdmin(HttpServletRequest request) {
		try {
			Connection con = getConnection();
			String email = request.getParameter("emailLogin");
			String query = "select password from "+TABLE_NAME+" where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			String password = "";
			if(rs.next()) {
				password = rs.getString(1);
				if(password.equals(request.getParameter("passwordLogin")))return "Admin";
				else return "Password Doesn't match";
			}			
		} catch (SQLException e) {
			System.out.println(e);
		}	
		return "You don't have an admin role. Please uncheck the box provided";
	}
	
	public User getUser(String email) {
		return userRepository.findByEmailIgnoreCase(email);
	}
	
	static {
		try {
			Class.forName(AppConstants.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
	}

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(AppConstants.DB_URL, AppConstants.DB_USER, AppConstants.DB_PASSWORD);
	}

	public static void closeConnection(Connection con) {
		if (con == null) {
			return;
		}
		try {
			con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

	public Admin getAdmin(String email) {
		try {
			Connection con = getConnection();
			String query = "select * from admin_info where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			Admin admin = null;
			if(rs.next()) {
			    admin = new Admin();
			    
				admin.setEmail(rs.getString("email"));
				admin.setFullName(rs.getString("full_name"));
				admin.setPassword(rs.getString("password"));
				admin.setGender(rs.getString("gender"));
				admin.setAddress(rs.getString("address"));
				admin.setPhoneNumber(rs.getString("phone_num"));
			}
			return admin;
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}

	public List<User> getPendingUsers() {
		return userRepository.findPendingUsers();
	}

	public void takeDecision(HttpServletRequest request) {
		
		Enumeration<String> enumeration = request.getParameterNames();
		String decision = "";
		while(enumeration.hasMoreElements()) {
			decision = enumeration.nextElement();
		}
		
		int index = 0;
		
		List<User> userList = (List<User>) request.getSession().getAttribute("userList");
		
		if(decision.contains("accept")) {
			decision = decision.replace("accept", "");
			try {
				index = Integer.parseInt(decision);
			}catch(Exception e) {
				System.out.println(e);
			}
			User user = userList.get(index);
			user.setStatus("Accepted");
			userRepository.save(user);
			
		}
		
		else if(decision.contains("reject")) {
			decision = decision.replace("reject", "");
			try {
				index = Integer.parseInt(decision);
			}catch(Exception e) {
				System.out.println(e);
			}
			User user = userList.get(index);
			user.setStatus("Rejected");
			userRepository.save(user);
		}
		userList.remove(index);
	}

	public void initializeAdmin(HttpSession session,Admin admin) {
		session.setAttribute("admin", admin);
		List<User> userList = getPendingUsers();
		session.setAttribute("userList", userList);
		System.out.println(userList.size());
	}
}