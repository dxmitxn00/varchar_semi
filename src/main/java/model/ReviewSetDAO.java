package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewSetDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	static final String SQL_SELECTALL = "SELECT TEA_NUM, TEA_NAME, TEA_PRICE, TEA_CNT, TEA_CATEGORY, TEA_CONTENT "
			+ "FROM TEA;";
	
	static final String SQL_SELECTALL_REVIEW = "SELECT R.REVIEW_NUM, R.MEMBER_ID, R.BUY_SERIAL, R.REVIEW_TITLE, R.REVIEW_CONTENT "
			+ "FROM ("
			+ "SELECT ROW_NUMBER() OVER(ORDER BY R.REVIEW_NUM) AS row_num, R.REVIEW_NUM, R.MEMBER_ID, R.BUY_SERIAL, R.REVIEW_TITLE, R.REVIEW_CONTENT "
			+ "FROM REVIEW R"
			+ "JOIN BUY_DETAIL BD USING (BUY_SERIAL) "
			+ "JOIN BUY B USING(BUY_NUM) "
			+ "WHERE BD.TEA_NUM=?"
			+ ") AS R "
			+ "WHERE row_num BETWEEN ? AND ?+6;";
	
	public ArrayList<ReviewSet> selectAll(ReviewSet rsVO){
		conn=JDBCUtil.connect();
		ArrayList<ReviewSet> datas = new ArrayList<ReviewSet>();

		try {
			pstmt = conn.prepareStatement(SQL_SELECTALL);
			rs = pstmt.executeQuery();

			// 상품 1개
			while(rs.next()) {
				ReviewSet pr = new ReviewSet();
				TeaVO data = new TeaVO();
				
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setTeaName(rs.getString("TEA_NAME"));
				data.setTeaPrice(rs.getInt("TEA_PRICE"));
				data.setTeaCnt(rs.getInt("TEA_CNT"));
				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
				data.setTeaContent(rs.getString("TEA_CONTENT"));
				
				pr.setTea(data);
				
				// 후기 여러개
				pstmt=conn.prepareStatement(SQL_SELECTALL_REVIEW);
				pstmt.setInt(1, data.getTeaNum());
				pstmt.setInt(2, data.getPagingCnt());
				pstmt.setInt(3, data.getPagingCnt());
				
				ResultSet rs2 = pstmt.executeQuery();
				ArrayList<ReviewVO> rdatas = new ArrayList<ReviewVO>();
				while(rs2.next()) {
					ReviewVO rVO = new ReviewVO();
					rVO.setReviewNum(rs.getInt("REVIEW_NUM"));
					rVO.setMemberId(rs.getString("MEMBER_ID"));
					rVO.setBuySerial(rs.getInt("BUY_SERIAL"));
					rVO.setReviewTitle(rs.getString("REVIEW_TITLE"));
					rVO.setReviewContent(rs.getString("REVIEW_CONTENT"));
					rdatas.add(rVO);
				}
				
				pr.setRdatas(rdatas);
				datas.add(pr);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return datas;
	}
}
