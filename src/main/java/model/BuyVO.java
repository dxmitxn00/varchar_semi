package model;

public class BuyVO {
	private int buyNum;
	private String memberId;
	
	public BuyVO() {
		this(0, "");
	}
	
	public BuyVO(int buyNum, String memberId) {
		this.buyNum = buyNum;
		this.memberId = memberId;
	}
	
	public int getBuyNum() {
		return buyNum;
	}
	
	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}
	
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

}