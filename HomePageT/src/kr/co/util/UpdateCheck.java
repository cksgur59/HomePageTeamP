package kr.co.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.DB.MemberDAO;
import kr.co.DB.MemberDTO;

/**
 * Servlet implementation class UpdateCheck
 */
@WebServlet("/UpdateCheck")
public class UpdateCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String selectv = request.getParameter("selectv");
		String valv = request.getParameter("valv");
		String id = request.getParameter("id");

		String updateCheckMsg = null;
		String isok = "성공";
		
		MemberDAO dao = new MemberDAO();
		dao.updateIMV(id, valv, selectv);
		
		String selctmenu = dao.selectmenu(selectv, id);
		if(selectv.equals("id")) {
			String idmenu = null; 
			idmenu =dao.selectmenu(selectv, valv);
			if(idmenu != null) {
				updateCheckMsg = isok;
			}else {
				updateCheckMsg = "실패";
			}
		}else if(selctmenu.equals(valv)) {
			updateCheckMsg = isok; 
		}else {
			updateCheckMsg = "실패";
		}
		request.setAttribute("isok", isok);
		request.setAttribute("updateCheckMsg", updateCheckMsg);
		request.getRequestDispatcher("updateCheckMsg.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}