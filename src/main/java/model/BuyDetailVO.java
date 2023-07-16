package model;

public class BuyDetailVO {
	private int buySerial;
	private int buyNum;
	private int teaNum;
	private int buyCnt;
	
	// 임시변수
	private String teaName;
	
	public BuyDetailVO() {
		this(0, 0, 0, 0);
	}
	
	public BuyDetailVO(int buySerial, int buyNum, int teaNum, int buyCnt) {
		this.buySerial = buySerial;
		this.buyNum = buyNum;
		this.teaNum = teaNum;
		this.buyCnt = buyCnt;
	}

	public int getBuySerial() {
		return buySerial;
	}

	public void setBuySerial(int buySerial) {
		this.buySerial = buySerial;
	}

	public int getBuyNum() {
		return buyNum;
	}

	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}

	public int getTeaNum() {
		return teaNum;
	}

	public void setTeaNum(int teaNum) {
		this.teaNum = teaNum;
	}

	public int getBuyCnt() {
		return buyCnt;
	}

	public void setBuyCnt(int buyCnt) {
		this.buyCnt = buyCnt;
	}

	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}
	
	
	
}
