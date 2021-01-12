package kr.co.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.command.Command;
import kr.co.command.CommandAction;
import kr.co.command.InsertCommand;
import kr.co.command.InsertUICommand;
import kr.co.command.LoginCommand;
import kr.co.command.MainCommand;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String sp = uri.substring(cp.length());
		Command com = null;
		
		if(sp.equalsIgnoreCase("/insertui.do")) {
			com = new InsertUICommand();
		}else if(sp.equalsIgnoreCase("/insert.do")) {
			com = new InsertCommand();
		}else if(sp.equalsIgnoreCase("/login.do")) {
			com = new LoginCommand();
		}else if(sp.equalsIgnoreCase("/main.do")) {
			com = new MainCommand();
		}
		
		
		if(com != null) {
			CommandAction action = com.execute(request, response);
			if(action.isRedirect()) {
				response.sendRedirect(action.getWhere());
			}else {
				RequestDispatcher dis = request.getRequestDispatcher(action.getWhere());
				dis.forward(request, response);
			}
		}else {
			System.out.println("지원하지 않는 서비스입니다.");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
