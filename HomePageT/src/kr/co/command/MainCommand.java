package kr.co.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.NoticeDAO;
import kr.co.DB.NoticeDTO;

public class MainCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		
		NoticeDAO dao = new NoticeDAO();
		
		List<NoticeDTO> list1 = dao.get3notice(1);
		NoticeDTO notilist1 =null;
		NoticeDTO notilist2 =null;
		NoticeDTO notilist3 =null;
		for (int i = 0; i < list1.size(); i++) {
			if(i==0) {
				notilist1 = list1.get(i);
			}
			if(i==1) {
				notilist2 = list1.get(i);
			}
			if(i==2) {
				notilist3 = list1.get(i);
			}
		}
		request.setAttribute("notilist1", notilist1);
		request.setAttribute("notilist2", notilist2);
		request.setAttribute("notilist3", notilist3);
		
		List<NoticeDTO> list2 = dao.get3notice(2);
		NoticeDTO freenoti1 =null;
		NoticeDTO freenoti2 =null;
		NoticeDTO freenoti3 =null;
		for (int i = 0; i < list2.size(); i++) {
			if(i==0) {
				freenoti1 = list2.get(i);
			}
			if(i==1) {
				freenoti2 = list2.get(i);
			}
			if(i==2) {
				freenoti3 = list2.get(i);
			}
		}
		request.setAttribute("freenoti1", freenoti1);
		request.setAttribute("freenoti2", freenoti2);
		request.setAttribute("freenoti3", freenoti3);
		
		return new CommandAction(false, "main.jsp");
	}

}
