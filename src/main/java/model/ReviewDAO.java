package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
//	static final private String SQL_SELECTALL = "SELECT REVIEW_NUM, MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT "
//			+ "FROM REVIEW "
//			+ "LIMIT ?,?;";
	static final private String SQL_SELECTALL_MEMBER = "SELECT REVIEW_NUM, MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT "
			+ "FROM("
			+ "SELECT ROW_NUMBER() OVER(ORDER BY REVIEW_NUM) AS row_num, "
			+ "REVIEW_NUM, MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT "
			+ "FROM REVIEW "
			+ "WHERE MEMBER_ID=?"
			+ ") AS reviews "
			+ "WHERE row_num BETWEEN ? AND (?+6);";
	static final private String SQL_SELECTONE = "SELECT REVIEW_NUM, MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT "
			+ "FROM REVIEW "
			+ "WHERE REVIEW_NUM=?";
	static final private String SQL_INSERT = "INSERT INTO REVIEW(MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT) VALUES(?, ?, ?, ?);";
	static final private String SQL_UPDATE_ALL = "UPDATE REVIEW SET REVIEW_TITLE = ?, REVIEW_CONTENT =? WHERE REVIEW_NUM = ?;";
	static final private String SQL_UPDATE_TITLE = "UPDATE REVIEW SET REVIEW_TITLE = ? WHERE REVIEW_NUM = ?;";
	static final private String SQL_UPDATE_CONTENT = "UPDATE REVIEW SET REVIEW_CONTENT =? WHERE REVIEW_NUM = ?;";
	static final private String SQL_DELETE = "DELETE FROM REVIEW WHERE REVIEW_NUM = ?;";
	
	public ArrayList<ReviewVO> selectAll(ReviewVO rVO) {

		conn = JDBCUtil.connect();
		ArrayList<ReviewVO> datas = new ArrayList<ReviewVO>();

		try {
				pstmt = conn.prepareStatement(SQL_SELECTALL_MEMBER);
				pstmt.setString(1, rVO.getMemberId());
				pstmt.setInt(2, rVO.getPagingCnt());
				pstmt.setInt(3, rVO.getPagingCnt());
				rs = pstmt.executeQuery();
				
			while (rs.next()) {
				ReviewVO data = new ReviewVO();
				data.setReviewNum(rs.getInt("REVEIW_NUM"));
				data.setMemberId(rs.getString("MEMBER_ID"));
				data.setBuySerial(rs.getInt("BUY_SERIAL"));
				data.setReviewTitle(rs.getString("REVIEW_TITLE"));
				data.setReviewContent(rs.getString("REVIEW_CONTENT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);
		return datas;

	}

	public ReviewVO selectOne(ReviewVO rVO) {
		conn = JDBCUtil.connect();
		ReviewVO data = null;

		try {

			pstmt = conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, rVO.getReviewNum());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new ReviewVO();
				data.setReviewNum(rs.getInt("REVIEW_NUM"));
				data.setMemberId(rs.getString("MEMBER_ID"));
				data.setBuySerial(rs.getInt("BUY_SERIAL"));
				data.setReviewTitle(rs.getString("REVEIW_TITLE"));
				data.setReviewContent(rs.getString("REVEIW_CONTENT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);
		return data;

	}

	public boolean insert(ReviewVO rVO) {
		conn = JDBCUtil.connect();
		
		try {
			pstmt = conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, rVO.getMemberId());
			pstmt.setInt(2, rVO.getBuySerial());
			pstmt.setString(3, rVO.getReviewTitle());
			pstmt.setString(4, rVO.getReviewContent());

			int rs = pstmt.executeUpdate();
			
			if (rs <= 0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		JDBCUtil.disconnect(pstmt, conn);

		return true;
	}

	public boolean update(ReviewVO rVO) {
		conn=JDBCUtil.connect();
		
		try {
			if(rVO.getReviewSearch().equals("ALL")) {
				pstmt = conn.prepareStatement(SQL_UPDATE_ALL);
				pstmt.setString(1, rVO.getReviewTitle());
				pstmt.setString(2, rVO.getReviewContent());
				pstmt.setInt(3, rVO.getReviewNum());
			}
			else if(rVO.getReviewSearch().equals("TITLE")) {
				pstmt = conn.prepareStatement(SQL_UPDATE_TITLE);
				pstmt.setString(1, rVO.getReviewTitle());
				pstmt.setInt(2, rVO.getReviewNum());
			}
			else if(rVO.getReviewSearch().equals("CONTENT")) {
				pstmt = conn.prepareStatement(SQL_UPDATE_CONTENT);
				pstmt.setString(1, rVO.getReviewContent());
				pstmt.setInt(2, rVO.getReviewNum());
			}
			
			int rs = pstmt.executeUpdate();
			
			if(rs <= 0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		JDBCUtil.disconnect(pstmt, conn);

		return true;
	}

	public boolean delete(ReviewVO rVO) {
		conn=JDBCUtil.connect();

		try {
			pstmt=conn.prepareStatement(SQL_DELETE);
			pstmt.setInt(1, rVO.getReviewNum());
			int rs=pstmt.executeUpdate();
			if(rs<=0) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}

}
