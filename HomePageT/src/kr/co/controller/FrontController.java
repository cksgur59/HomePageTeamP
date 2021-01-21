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
import kr.co.command.Delete2Command;
import kr.co.command.Delete3Command;
import kr.co.command.DeleteCommand;
import kr.co.command.FileDownloadCommand;
import kr.co.command.InsertCommand;
import kr.co.command.InsertUICommand;
import kr.co.command.List2Command;
import kr.co.command.List3Command;
import kr.co.command.ListCommand;
import kr.co.command.LoginCommand;
import kr.co.command.LogoutCommand;
import kr.co.command.MainCommand;
import kr.co.command.NewPostCommand;
import kr.co.command.NewPostUICommand;
import kr.co.command.NoticeCommand;
import kr.co.command.QnACommand;
<<<<<<< HEAD:HomePageT/src/kr/co/controller/FrontController.java

import kr.co.command.MyPage;


=======
import kr.co.command.Read2Command;
import kr.co.command.Read3Command;
>>>>>>> 77aedcf6caec09aa9991552fb5ba545281cf1a19:HomePageT1/src/kr/co/controller/FrontController.java
import kr.co.command.ReadCommand;
import kr.co.command.Reply2Command;
import kr.co.command.Reply3Command;
import kr.co.command.ReplyCommand;
import kr.co.command.ReplyUI2Command;
import kr.co.command.ReplyUI3Command;
import kr.co.command.ReplyUICommand;
import kr.co.command.SearchCommand;
import kr.co.command.Update2Command;
import kr.co.command.Update3Command;
import kr.co.command.UpdateCommand;
import kr.co.command.UpdateMemberCommand;
import kr.co.command.UpdateUI2Command;
import kr.co.command.UpdateUI3Command;
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
		}else if (sp.equalsIgnoreCase("/list.do")) {
			com = new ListCommand();
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
		}else if (sp.equalsIgnoreCase("/qna.do")) {
			com = new QnACommand();
		}else if (sp.equalsIgnoreCase("/mypage.do")) {
			com = new MyPage();
<<<<<<< HEAD:HomePageT/src/kr/co/controller/FrontController.java
		}
		
=======
		}else if (sp.equalsIgnoreCase("/newPostui2.do")) {
			com = new NewPostUI2Command();
		}else if (sp.equalsIgnoreCase("/newPost2.do")) {
			com = new NewPost2Command();
		}else if (sp.equalsIgnoreCase("/newPostui3.do")) {
			com = new NewPostUI3Command();
		}else if (sp.equalsIgnoreCase("/newPost3.do")) {
			com = new NewPost3Command();
		}else if (sp.equalsIgnoreCase("/search2.do")) {
			com = new Search2Command();
		}else if (sp.equalsIgnoreCase("/search3.do")) {
			com = new Search3Command();
		}else if (sp.equalsIgnoreCase("/fileDownloadCommand")) {
			com = new FileDownloadCommand();
		}else if (sp.equalsIgnoreCase("/delete2.do")) {
			com = new Delete2Command();
		}else if (sp.equalsIgnoreCase("/delete3.do")) {
			com = new Delete3Command();
		}else if (sp.equalsIgnoreCase("/read2.do")) {
			com = new Read2Command();
		}else if (sp.equalsIgnoreCase("/read3.do")) {
			com = new Read3Command();
		}else if (sp.equalsIgnoreCase("/updateui2.do")) {
			com = new UpdateUI2Command();
		}else if (sp.equalsIgnoreCase("/updateui3.do")) {
			com = new UpdateUI3Command();
		}else if (sp.equalsIgnoreCase("/update2.do")) {
			com = new Update2Command();
		}else if (sp.equalsIgnoreCase("/update3.do")) {
			com = new Update3Command();
		}else if (sp.equalsIgnoreCase("/replyui2.do")) {
			com = new ReplyUI2Command();
		}else if (sp.equalsIgnoreCase("/replyui3.do")) {
			com = new ReplyUI3Command();
		}else if (sp.equalsIgnoreCase("/reply2.do")) {
			com = new Reply2Command();
		}else if (sp.equalsIgnoreCase("/reply3.do")) {
			com = new Reply3Command();
		}else if (sp.equalsIgnoreCase("/list2.do")) {
			com = new List2Command();
		}else if (sp.equalsIgnoreCase("/list3.do")) {
			com = new List3Command();
		}	
>>>>>>> 77aedcf6caec09aa9991552fb5ba545281cf1a19:HomePageT1/src/kr/co/controller/FrontController.java
		
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
