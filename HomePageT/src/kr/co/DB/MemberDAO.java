package kr.co.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {

	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle11g");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insertMember(MemberDTO dto) {
		 Connection conn = null;
	      PreparedStatement pstmt = null;
	      String sql = "INSERT INTO member (id,password,name,email,phoneNumber,address,gender,profileImgName) VALUES(?,?,?,?,?,?,?,?)";
	      
	      try {
			conn = dataFactory.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getPhoneNumber());
			pstmt.setString(6, dto.getAddress());
			pstmt.setString(7, dto.getGender());
			pstmt.setString(8, dto.getProfileImgName());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(null, pstmt, conn);
		}
	      
	}
	
	public String idCheck(String id) {
		String rid = null;
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    String sql = "SELECT * FROM member where id=?";
	    ResultSet rs = null;
	    
	    try {
			conn = dataFactory.getConnection();
			pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	rs = pstmt.executeQuery();
	    	
	    	if(rs.next()) {
	    		rid = rs.getString("id");
	    	}
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(rs, pstmt, conn);
		}
	    return rid;
	}
	
	public MemberDTO login(MemberDTO lgi) {
		MemberDTO dto = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM member where id=? and password=?";
		ResultSet rs = null;
		
		try {
			conn = dataFactory.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lgi.getId());
			pstmt.setString(2, lgi.getPassword());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phoneNumber = rs.getString("phoneNumber");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				String profileImgName = rs.getString("profileImgName");
				
				dto = new MemberDTO(id, password, name, email, phoneNumber, address, gender, profileImgName);
				
			}else {
				dto = new MemberDTO(null, null, null, null, null, null, null, null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(rs, pstmt, conn);
		}
		return dto;
	}
	
	
	
	
	 private void closeAll(ResultSet rs, PreparedStatement pstmt, Connection conn) {
	      try {
	         if (rs != null) rs.close();
	         if (pstmt != null) pstmt.close();
	         if (conn != null) conn.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }

	

	
	
}
