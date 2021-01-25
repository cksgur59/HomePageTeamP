<<<<<<< HEAD:HomePageT/src/kr/co/command/NoticeCommand.java
package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.NoticeDAO;
import kr.co.DB.PageTO;

public class NoticeCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String scp = request.getParameter("curpage");
		int curpage = 1;
	
		if (scp != null) {
			curpage = Integer.parseInt(scp);
		}
	
		NoticeDAO dao = new NoticeDAO();
		PageTO to = dao.page(curpage,1);
	
		request.setAttribute("list", to.getList());
		request.setAttribute("to", to);
	
		return new CommandAction(false, "notice.jsp");
	}
	
}
=======
package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.NoticeDAO;
import kr.co.DB.PageTO;

public class NoticeCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String scp = request.getParameter("curpage");
		int curpage = 1;
	
		if (scp != null) {
			curpage = Integer.parseInt(scp);
		}
	
		NoticeDAO dao = new NoticeDAO();
		PageTO to = dao.page(curpage,1);
	
		request.setAttribute("list", to.getList());
		request.setAttribute("to", to);
	
		return new CommandAction(false, "notice.jsp");
	}
	
}

>>>>>>> dd12497d2519de215581d21910539e05897e5f32:HomePageT1/src/kr/co/command/NoticeCommand.java
