
package com.chainsys.carsale.servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.carsale.dao.impl.CarDetailImp;
import com.chainsys.carsale.model.CarOwner;
import com.chainsys.carsale.util.DbException;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		
	}		
      
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CarOwner cs=new CarOwner();
		Long phNo=Long.parseLong(request.getParameter("mobileno"));
		 String pass=request.getParameter("pass");
		cs.setContactNo(phNo);
		cs.setPassword(pass);
		CarDetailImp cdi=new CarDetailImp();
		try {
			
			int sellerId=cdi.getSellerId(cs.getContactNo(),cs.getPassword());
			System.out.println(sellerId);
			if(sellerId!=0)
			{
				HttpSession session=request.getSession();
				session.setAttribute("login_seller_id",sellerId);
				RequestDispatcher dispatcher=request.getRequestDispatcher("LoginIndex.jsp");
				dispatcher.forward(request, response);
				
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
		} catch (DbException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("register.jsp?errorMessage=Register successfully!!!");
		}
	}

}
