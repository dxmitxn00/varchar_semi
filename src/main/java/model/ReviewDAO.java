package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReviewDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	static final private String SQL_SELECTALL = "";
	static final private String SQL_SELECTONE = "SELECT REVIEW_NUM, MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT "
			+ "FROM REVIEW "
			+ "WHERE REVIEW_NUM = ?;";
	static final private String SQL_INSERT = "INSERT INTO REVIEW(MEMBER_ID, BUY_SERIAL, REVIEW_TITLE, REVIEW_CONTENT) VALUES( ?, ?, ?, ?);";
	static final private String SQL_UPDATE = "UPDATE REVIEW SET REVIEW_TITLE = ?, REVIEW_CONTENT =? WHERE REVIEW_NUM = ?;";
	static final private String SQL_DELETE = "DELETE FROM REVIEW WHERE REVIEW_NUM = ?;";
	
	

}
