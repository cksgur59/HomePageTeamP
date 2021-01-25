<<<<<<< HEAD:HomePageT/src/kr/co/command/LoginCommand.java
package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.DB.MemberDAO;
import kr.co.DB.MemberDTO;

public class LoginCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDTO lgi = new MemberDTO(id, password, null, null, null, null, null, null , null);
		MemberDAO dao = new MemberDAO();
		
		MemberDTO login = dao.login(lgi);
		
		
		
		
		HttpSession session = request.getSession();
		
		
		session.setAttribute("login", login);
		
		return new CommandAction(true, "main.do");
	}

}
=======
package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.DB.MemberDAO;
import kr.co.DB.MemberDTO;

public class LoginCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDTO lgi = new MemberDTO(id, password, null, null, null, null, null, null , null);
		MemberDAO dao = new MemberDAO();
		
		MemberDTO login = dao.login(lgi);
		
		
		
		
		HttpSession session = request.getSession();
		
		
		session.setAttribute("login", login);
		
		return new CommandAction(true, "main.do");
	}

}
>>>>>>> dd12497d2519de215581d21910539e05897e5f32:HomePageT1/src/kr/co/command/LoginCommand.java
