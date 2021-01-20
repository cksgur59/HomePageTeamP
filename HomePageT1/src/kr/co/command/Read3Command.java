package kr.co.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.QNADAO;
import kr.co.DB.NoticeDTO;

public class Read3Command implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String snum = request.getParameter("num");
		int num = Integer.parseInt(snum);
		
		QNADAO dao = new QNADAO();
		NoticeDTO dto = dao.read3(num);
		
		request.setAttribute("dto", dto);
		
		return new CommandAction(false, "read3.jsp");
	}

}
