<<<<<<< HEAD:HomePageT/src/kr/co/command/QnACommand.java

package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.NoticeDAO;
import kr.co.DB.PageTO;

public class QnACommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String scp = request.getParameter("curpage");
		int curpage = 1;
	
		if (scp != null) {
			curpage = Integer.parseInt(scp);
		}
	
		NoticeDAO dao = new NoticeDAO();
		PageTO to = dao.page3(curpage);
	
		request.setAttribute("list", to.getList());
		request.setAttribute("to", to);
	
		return new CommandAction(false, "qna.jsp");
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

public class QnACommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String scp = request.getParameter("curpage");
		int curpage = 1;
		
		if (scp != null) {
			curpage = Integer.parseInt(scp);
		}
		
		NoticeDAO dao = new NoticeDAO();
		PageTO to = dao.pagefree(curpage, 2);
		
		request.setAttribute("list", to.getList());
		request.setAttribute("to", to);
		
		return new CommandAction(false, "qna.jsp");
	}

}
>>>>>>> dd12497d2519de215581d21910539e05897e5f32:HomePageT1/src/kr/co/command/QnACommand.java
