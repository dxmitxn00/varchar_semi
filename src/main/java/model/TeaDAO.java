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
	
	static final private String SQL_SELECTALL = "SELECT TEA_NUM, TEA_NAME, TEA_PRICE, TEA_CNT, TEA_CATEGORY, TEA_CONTENT\r\n"
													+ "FROM TEA\r\n"
													+ "WHERE TEA_CATEGORY LIKE CONCAT('%', ?, '%') AND (TEA_NAME LIKE CONCAT('%',?, '%') OR TEA_CONTENT LIKE CONCAT('%', ?, '%'));";
	static final private String SQL_SELECTONE = "SELECT TEA_NUM, TEA_NAME, TEA_PRICE, TEA_CNT, TEA_CATEGORY, TEA_CONTENT FROM TEA WHERE TEA_NUM = ?;";
//	static final private String SQL_INSERT = "";
//	static final private String SQL_UPDATE = "";
//	static final private String SQL_DELETE = "";


	public ArrayList<TeaVO> selectAll(TeaVO tVO){
		conn=JDBCUtil.connect();

		ArrayList<TeaVO> datas=new ArrayList<TeaVO>();

		try {
			pstmt=conn.prepareStatement(SQL_SELECTALL);
			pstmt.setString(1, tVO.getTeaCategory());
			pstmt.setString(2, tVO.getTeaSearchWord());
			pstmt.setString(3, tVO.getTeaSearchWord());
			rs=pstmt.executeQuery();

			while(rs.next()) {
				TeaVO data=new TeaVO();
				data.setTeaNum(rs.getInt("TEA_NUM"));
				data.setTeaName(rs.getString("TEA_Name"));
				data.setTeaPrice(rs.getInt("TEA_PRICE"));
				data.setTeaCnt(rs.getInt("TEA_CNT"));
				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
				data.setTeaContent(rs.getString("TEA_CONTENT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return datas;	
	}
	
	public TeaVO selectOne(TeaVO tVO){
		conn=JDBCUtil.connect();

		//TeaVO data=null;
		TeaVO data=new TeaVO();
		
		try {
			pstmt=conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, tVO.getTeaNum());
			rs=pstmt.executeQuery();

			if(rs.next()) {
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
		return false;
	}
	public boolean delete(TeaVO tVO) {
		return false;
	}
}
