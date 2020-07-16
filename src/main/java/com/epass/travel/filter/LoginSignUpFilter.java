package com.epass.travel.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = {"/signup.jsp","/login.jsp"})
public class LoginSignUpFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("user") != null) {
			response.sendRedirect("/profile.jsp");
		}
		else if(session != null && session.getAttribute("admin") != null) {
			response.sendRedirect("/admin.jsp");
		}
		chain.doFilter(request, response);
	}
}