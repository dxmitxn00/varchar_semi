package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BuyDetailDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	static final private String SQL_SELECTALL = "SELECT bt.BUY_SERIAL, bt.BUY_NUM, t.TEA_NUM, bt.BUY_CNT, t.TEA_NAME\r\n"
			+ "FROM BUY_DETAIL bt JOIN TEA t USING (TEA_NUM) WHERE bt.BUY_NUM= ?;";
	static final private String SQL_SELECTONE = "SELECT BUY_SERIAL, BUY_NUM, TEA_NUM, BUY_CNT\r\n"
			+ "FROM BUY_DETAIL WHERE BUY_SERIAL= ?;";
	static final private String SQL_INSERT = "INSERT INTO BUY_DETAIL(BUY_NUM, TEA_NUM, BUY_CNT)\r\n"
			+ "VALUES(?, ?, ?);";

	public ArrayList<BuyDetailVO> selectAll(BuyDetailVO btVO) {

		conn = JDBCUtil.connect();

		ArrayList<BuyDetailVO> datas = new ArrayList<BuyDetailVO>();

		try {
			pstmt = conn.prepareStatement(SQL_SELECTALL);
			pstmt.setInt(1, btVO.getBuyNum());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				BuyDetailVO data = new BuyDetailVO();
				data.setBuySerial(rs.getInt("BUY_SERIAL"));
				data.setBuyNum(rs.getInt("BUY_NUM"));
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setBuyCnt(rs.getInt("BUY_CNT"));
				data.setTeaName(rs.getString("TEA_NAME"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return datas;

	}

	public BuyDetailVO selectOne(BuyDetailVO btVO) {
		conn = JDBCUtil.connect();
		BuyDetailVO data = null;

		try {

			pstmt = conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, btVO.getBuySerial());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				data = new BuyDetailVO();
				data.setBuySerial(rs.getInt("BUY_SERIAL"));
				data.setBuyNum(rs.getInt("BUY_NUM"));
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setBuyCnt(rs.getInt("BUY_CNT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return data;

	}

	public boolean insert(BuyDetailVO btVO) {
		conn = JDBCUtil.connect();

		try {
			pstmt = conn.prepareStatement(SQL_INSERT);
			pstmt.setInt(1, btVO.getBuyNum());
			pstmt.setInt(2, btVO.getTeaNum());
			pstmt.setInt(3, btVO.getBuyCnt());

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

	public boolean update(BuyDetailVO btVO) {
		return false;
	}

	public boolean delete(BuyDetailVO btVO) {
		return false;
	}

}
