package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.FreeboardDAO;
import kr.co.DB.NoticeDTO;

public class Read2Command implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String snum = request.getParameter("num");
		int num = Integer.parseInt(snum);
		
		FreeboardDAO dao = new FreeboardDAO();
		NoticeDTO dto = dao.read2(num);
		
		request.setAttribute("dto", dto);
		
		return new CommandAction(false, "read2.jsp");
	}

}
