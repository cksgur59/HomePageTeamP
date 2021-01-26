package kr.co.fileupdownload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MemberImgUpload
 */
@WebServlet("/mupload")
public class MemberImgUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberImgUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  String id = "";
	      String orgFileName = "";
	      String fileName = "";
	     
	      
	      String uploadPath = request.getServletContext().getRealPath("upload");
	      System.out.println(uploadPath);
	      
	      MultipartRequest multi = new MultipartRequest(request,
	                     uploadPath, 1024*1024*100, "utf-8", 
	                     new DefaultFileRenamePolicy());
	      
	      id = multi.getParameter("id");
	      System.out.println(id);
	      
	      orgFileName = multi.getOriginalFileName("file");
	      System.out.println(orgFileName);
	      
	      fileName = multi.getFilesystemName("file");
	      System.out.println(fileName);
	      
	      
	      request.setAttribute("id", id);
	      request.setAttribute("orgFileName", orgFileName);
	      request.setAttribute("fileName", fileName);
	      
	      request.getRequestDispatcher("MemberImgUploadResult.jsp").forward(request, response);
	}

}
