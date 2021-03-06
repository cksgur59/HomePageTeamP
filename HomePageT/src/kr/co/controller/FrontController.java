
package kr.co.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.command.AdminPageCommand;
import kr.co.command.Command;
import kr.co.command.CommandAction;
import kr.co.command.DeleteCommand;
import kr.co.command.FreeNewPostCommand;
import kr.co.command.FreeNewPostUICommand;
import kr.co.command.FreeNotice;
import kr.co.command.InsertCommand;
import kr.co.command.InsertUICommand;
import kr.co.command.LoginCommand;
import kr.co.command.LogoutCommand;
import kr.co.command.MainCommand;
import kr.co.command.NewPostCommand;
import kr.co.command.NewPostUICommand;
import kr.co.command.NoticeCommand;
import kr.co.command.MyPage;
import kr.co.command.ReadCommand;
import kr.co.command.ReplyCommand;
import kr.co.command.ReplyUICommand;
import kr.co.command.SearchCommand;
import kr.co.command.UpdateCommand;
import kr.co.command.UpdateMemberCommand;
import kr.co.command.UpdateUICommnad;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String sp = uri.substring(cp.length());
		Command com = null;
		
		if(sp.equalsIgnoreCase("/insertui.do")) {
			com = new InsertUICommand();
		}else if(sp.equalsIgnoreCase("/insert.do")) {
			com = new InsertCommand();
		}else if(sp.equalsIgnoreCase("/login.do")) {
			com = new LoginCommand();
		}else if(sp.equalsIgnoreCase("/main.do")) {
			com = new MainCommand();
		}else if(sp.equalsIgnoreCase("/newPostui.do")) {
			com = new NewPostUICommand();	
		}else if(sp.equalsIgnoreCase("/newPost.do")) {
			com = new NewPostCommand();
		}else if (sp.equalsIgnoreCase("/read.do")) {
			com = new ReadCommand();
		}else if (sp.equalsIgnoreCase("/updateui.do")) {
			com = new UpdateUICommnad();
		}else if (sp.equalsIgnoreCase("/update.do")) {
			com = new UpdateCommand();
		}else if (sp.equalsIgnoreCase("/replyui.do")) {
			com = new ReplyUICommand();
		}else if (sp.equalsIgnoreCase("/reply.do")) {
			com = new ReplyCommand();
		}else if (sp.equalsIgnoreCase("/search.do")) {
			com = new SearchCommand();
		}else if (sp.equalsIgnoreCase("/delete.do")) {
			com = new DeleteCommand();
		}else if (sp.equalsIgnoreCase("/logout.do")) {
			com = new LogoutCommand();
		}else if (sp.equalsIgnoreCase("/adminPage.do")) {
			com = new AdminPageCommand();
		}else if (sp.equalsIgnoreCase("/updateMember.do")) {
			com = new UpdateMemberCommand();
		}else if (sp.equalsIgnoreCase("/notice.do")) {
			com = new NoticeCommand();
		}else if (sp.equalsIgnoreCase("/mypage.do")) {
			com = new MyPage();
		}else if (sp.equalsIgnoreCase("/freeNotice.do")) {
			com = new FreeNotice();
		}else if (sp.equalsIgnoreCase("/freenewPostui.do")) {
			com = new FreeNewPostUICommand();
		}else if (sp.equalsIgnoreCase("/freenewPost.do")) {
			com = new FreeNewPostCommand();
		}
		
		
		if(com != null) {
			CommandAction action = com.execute(request, response);
			if(action.isRedirect()) {
				response.sendRedirect(action.getWhere());
			}else {
				RequestDispatcher dis = request.getRequestDispatcher(action.getWhere());
				dis.forward(request, response);
			}
		}else {
			System.out.println("지원하지 않는 서비스입니다.");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

