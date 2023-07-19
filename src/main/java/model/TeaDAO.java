package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TeaDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final private String SQL_SELECTALL = "SELECT t.TEA_NUM, t.TEA_NAME, t.TEA_PRICE, t.TEA_CNT, t.TEA_CATEGORY, t.TEA_CONTENT, i.IMAGE_URL\r\n"
			+ "FROM TEA t JOIN IMAGE i USING (TEA_NUM)\r\n"
			+ "WHERE t.TEA_CATEGORY LIKE CONCAT('%', ?, '%') AND (t.TEA_NAME LIKE CONCAT('%', ?, '%') OR t.TEA_CONTENT LIKE CONCAT('%', ?, '%')) AND i.IMAGE_DIVISION = 1 "
			+ "ORDER BY t.TEA_NUM "
			+ "LIMIT ?+6 OFFSET ?;";
	static final private String SQL_SELECTONE = "SELECT TEA_NUM, TEA_NAME, TEA_PRICE, TEA_CNT, TEA_CATEGORY, TEA_CONTENT FROM TEA WHERE TEA_NUM = ?;";
	static final private String SQL_UPDATE = "UPDATE TEA SET TEA_CNT = ? WHERE TEA_NUM = ?";
//	static final private String SQL_INSERT = "";
//	static final private String SQL_DELETE = "";

	public ArrayList<TeaVO> selectAll(TeaVO tVO) {
		conn = JDBCUtil.connect();

		ArrayList<TeaVO> datas = new ArrayList<TeaVO>();

		try {
			pstmt = conn.prepareStatement(SQL_SELECTALL);
			pstmt.setString(1, tVO.getTeaCategory());
			pstmt.setString(2, tVO.getTeaSearchWord());
			pstmt.setString(3, tVO.getTeaSearchWord());
			pstmt.setInt(4, tVO.getPagingCnt());
			pstmt.setInt(5, tVO.getPagingCnt());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				TeaVO data = new TeaVO();
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setTeaName(rs.getString("TEA_Name"));
				data.setTeaPrice(rs.getInt("TEA_PRICE"));
				data.setTeaCnt(rs.getInt("TEA_CNT"));
				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
				data.setTeaContent(rs.getString("TEA_CONTENT"));
				data.setTeaContent(rs.getString("IMAGE_URL"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		System.out.println(datas);
		return datas;
	}

	public TeaVO selectOne(TeaVO tVO) {
		conn = JDBCUtil.connect();

		// TeaVO data=null;
		TeaVO data = new TeaVO();

		try {
			pstmt = conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, tVO.getTeaNum());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setTeaName(rs.getString("TEA_Name"));
				data.setTeaPrice(rs.getInt("TEA_PRICE"));
				data.setTeaCnt(rs.getInt("TEA_CNT"));
				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
				data.setTeaContent(rs.getString("TEA_CONTENT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return data;
	}

	public boolean insert(TeaVO tVO) {
		return false;
	}

	public boolean update(TeaVO tVO) {
		conn = JDBCUtil.connect();
		try {

			pstmt = conn.prepareStatement(SQL_UPDATE);
			pstmt.setInt(1, tVO.getTeaCnt());
			pstmt.setInt(2, tVO.getTeaNum());

			int result = pstmt.executeUpdate();
			if (result <= 0) {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e1) {
				e1.printStackTrace();
			}
			return false;
		}

		JDBCUtil.disconnect(pstmt, conn);
		return true;
	}

	public boolean delete(TeaVO tVO) {
		return false;
	}
}
