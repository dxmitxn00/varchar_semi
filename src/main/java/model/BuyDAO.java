package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BuyDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final private String SQL_SELECTALL = "SELECT BUY_NUM FROM BUY WHERE MEMBER_ID = ?;";
	static final private String SQL_SELECTONE = "SELECT BUY_NUM FROM BUY WHERE BUY_NUM = ?;";
	static final private String SQL_INSERT = "INSERT INTO BUY(MEMBER_ID) VALUES(?);";

	public ArrayList<BuyVO> selectAll(BuyVO bVO) {

		conn = JDBCUtil.connect();

		ArrayList<BuyVO> datas = new ArrayList<BuyVO>();

		try {
			pstmt = conn.prepareStatement(SQL_SELECTALL);
			pstmt.setString(1, bVO.getMemberId());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				BuyVO data = new BuyVO();
				data.setBuyNum(rs.getInt("BUY_NUM"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return datas;

	}

	public BuyVO selectOne(BuyVO bVO) {
		conn = JDBCUtil.connect();
		BuyVO data = null;
		
		try {

			pstmt = conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, bVO.getBuyNum());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new BuyVO();
				data.setBuyNum(rs.getInt("BUY_NUM"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return data;

	}

	public boolean insert(BuyVO bVO) {
		conn=JDBCUtil.connect();

		try {
			pstmt=conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, bVO.getMemberId());
			
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

	public boolean update(BuyVO bVO) {
		return false;
	}

	public boolean delete(BuyVO bVO) {
		return false;
	}
}
