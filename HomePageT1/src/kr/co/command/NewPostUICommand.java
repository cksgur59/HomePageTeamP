<<<<<<< HEAD:HomePageT1/src/kr/co/command/NewPostUICommand.java
package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewPostUICommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		return new CommandAction(true, "newPost.jsp");
	}

}
=======
package kr.co.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.MemberDAO;
import kr.co.DB.MemberDTO;

public class AdminPageCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		
		
		return new CommandAction(false, "adminPage.jsp");
	}

}
>>>>>>> 41aaaa2cf293fb0f770532752b8142244864ae5f:HomePageT/src/kr/co/command/AdminPageCommand.java
