package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ImageDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	static final private String SQL_SELECTALL = "";
	static final private String SQL_SELECTONE = "";
//	static final private String SQL_INSERT = "";
//	static final private String SQL_UPDATE = "";
//	static final private String SQL_DELETE = "";
	
	public ArrayList<ImageVO> selectAll(ImageVO iVO){
		conn=JDBCUtil.connect();

		ArrayList<ImageVO> datas=new ArrayList<ImageVO>();

		try {
			pstmt=conn.prepareStatement(SQL_SELECTALL);
//			pstmt.setString(1, tVO.getTeaCategory());
//			pstmt.setString(2, tVO.getTeaSearchWord());
//			pstmt.setString(3, tVO.getTeaSearchWord());
			rs=pstmt.executeQuery();

			while(rs.next()) {
				ImageVO data=new ImageVO();
//				data.setTeaNum(rs.getInt("TEA_NUM"));
//				data.setTeaName(rs.getString("TEA_Name"));
//				data.setTeaPrice(rs.getInt("TEA_PRICE"));
//				data.setTeaCnt(rs.getInt("TEA_CNT"));
//				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
//				data.setTeaContent(rs.getString("TEA_CONTENT"));
				datas.add(data);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return datas;	
	}
	
	public ImageVO selectOne(ImageVO iVO){
		conn=JDBCUtil.connect();

		//TeaVO data=null;
		ImageVO data=new ImageVO();
		
		try {
			pstmt=conn.prepareStatement(SQL_SELECTONE);
			pstmt.setInt(1, iVO.getTeaNum());
			rs=pstmt.executeQuery();

			if(rs.next()) {
//				data.setTeaNum(rs.getInt("TEA_NUM"));
//				data.setTeaName(rs.getString("TEA_Name"));
//				data.setTeaPrice(rs.getInt("TEA_PRICE"));
//				data.setTeaCnt(rs.getInt("TEA_CNT"));
//				data.setTeaCategory(rs.getString("TEA_CATEGORY"));
//				data.setTeaContent(rs.getString("TEA_CONTENT"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JDBCUtil.disconnect(rs, pstmt, conn);

		return data;
	}

	public boolean insert(ImageVO iVO) {
		return false;
	}
	public boolean update(ImageVO iVO) {
		return false;
	}
	public boolean delete(ImageVO iVO) {
		return false;
	}

}
