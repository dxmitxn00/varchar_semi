package model;

public class FavorVO {
	private int favorNum;
	private String memberId;
	private int teaNum;
	
	public FavorVO() {
		this(0, "", 0);
	}
	
	public FavorVO(int favorNum, String memberId, int teaNum) {
		this.favorNum = favorNum;
		this.memberId = memberId;
		this.teaNum = teaNum;
	}

	public int getFavorNum() {
		return favorNum;
	}

	public void setFavorNum(int favorNum) {
		this.favorNum = favorNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getTeaNum() {
		return teaNum;
	}

	public void setTeaNum(int teaNum) {
		this.teaNum = teaNum;
	}
	
	

}
