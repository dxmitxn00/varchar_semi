package model;

// 지현 수정
public class TeaVO {
	private int teaNum;
	private String teaName;
	private int teaPrice;
	private int teaCnt;
	private String teaCategory;
	private String teaContent;

	// 임시변수
	private String teaSearchWord;
	private String imageUrl;
	private int pagingCnt;
	
	public TeaVO() {
		this(0, "", 0, 0, "", "");
	}
	
	public TeaVO(int teaNum, String teaName, int teaPrice, int teaCnt, String teaCategory, String teaContent) {
		this.teaNum = teaNum;
		this.teaName = teaName;
		this.teaPrice = teaPrice;
		this.teaCnt = teaCnt;
		this.teaCategory = teaCategory;
		this.teaContent = teaContent;
	}
	
	

	public int getPagingCnt() {
		return pagingCnt;
	}

	public void setPagingCnt(int pagingCnt) {
		this.pagingCnt = pagingCnt;
	}

	public int getTeaNum() {
		return teaNum;
	}

	public void setTeaNum(int teaNum) {
		this.teaNum = teaNum;
	}

	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	public int getTeaPrice() {
		return teaPrice;
	}

	public void setTeaPrice(int teaPrice) {
		this.teaPrice = teaPrice;
	}

	public int getTeaCnt() {
		return teaCnt;
	}

	public void setTeaCnt(int teaCnt) {
		this.teaCnt = teaCnt;
	}

	public String getTeaCategory() {
		return teaCategory;
	}

	public void setTeaCategory(String teaCategory) {
		this.teaCategory = teaCategory;
	}

	public String getTeaContent() {
		return teaContent;
	}

	public void setTeaContent(String teaContent) {
		this.teaContent = teaContent;
	}

	public String getTeaSearchWord() {
		return teaSearchWord;
	}

	public void setTeaSearchWord(String teaSearchWord) {
		this.teaSearchWord = teaSearchWord;
	}

}
