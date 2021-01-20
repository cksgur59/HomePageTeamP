package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.FreeboardDAO;
import kr.co.DB.PageTO;

public class ListCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String scp = request.getParameter("curpage");
		int curpage = 1;
	
		if (scp != null) {
			curpage = Integer.parseInt(scp);
		}
	
		FreeboardDAO dao = new FreeboardDAO();
		PageTO to = dao.page2(curpage);
	
		request.setAttribute("list", to.getList());
		request.setAttribute("to", to);
	
		return new CommandAction(false, "list.jsp");
	}

}
