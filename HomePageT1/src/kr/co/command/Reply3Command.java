package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.QNADAO;
import kr.co.DB.NoticeDTO;

public class Reply3Command implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String snum = request.getParameter("num");
		int orinum = Integer.parseInt(snum);
		
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO repdto = new NoticeDTO(-1, author, title, content, null, -1, -1, -1, -1);
		
		new QNADAO().reply3(orinum, repdto);
		
		return new CommandAction(true, "qna.do");
	}
}
