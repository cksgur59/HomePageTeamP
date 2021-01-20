package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReplyUI3Command implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String snum = request.getParameter("num");
		
		return new CommandAction(true, "reply3.jsp?num="+snum);
	}
}
