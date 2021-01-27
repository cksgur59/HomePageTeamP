package kr.co.command;

import java.io.IOException;

import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.MemberDAO;
import kr.co.DB.MemberDTO;
import kr.co.DB.NoticeDAO;
import kr.co.DB.NoticeDTO;

public class MyPage implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		

		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.selectid(id);
		
		request.setAttribute("dto", dto);
		
		return new CommandAction(false, "mypage.jsp");
	}

}
