package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FavorDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final private String SQL_INSERT = "INSERT INTO FAVOR(MEMBER_ID, TEA_NUM) VALUES(?, ?);";
	static final private String SQL_DELETE = "DELETE FROM FAVOR WHERE FAVOR_NUM = ?";

	public ArrayList<FavorVO> selectAll(FavorVO fVO) {
		return null;
	}

	public BuyVO selectOne(FavorVO fVO) {
		return null;
	}

	public boolean insert(FavorVO fVO) {
		conn=JDBCUtil.connect();

		try {
			pstmt=conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, fVO.getMemberId());
			pstmt.setInt(2, fVO.getTeaNum());
			
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

	public boolean update(FavorVO fVO) {
		return false;
	}

	public boolean delete(FavorVO fVO) {
		conn=JDBCUtil.connect();

		try {
			pstmt=conn.prepareStatement(SQL_INSERT);
			pstmt.setInt(1, fVO.getFavorNum());
			
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
