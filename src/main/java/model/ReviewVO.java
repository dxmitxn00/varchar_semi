package model;

public class ReviewVO {
	private int reviewNum;
	private String memberId;
	private int buySerial;
	private String reviewTitle;
	private String reviewContent;
	
	// 임시변수
	private String reviewSearch;
	private int PagingCnt;
	
	public ReviewVO() {
		this(0, "", 0, "", "");
	}
	
	public ReviewVO(int reviewNum, String memberId, int buySerial, String reviewTitle, String reviewContent) {
		this.reviewNum = reviewNum;
		this.memberId = memberId;
		this.buySerial = buySerial;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
	}
	
	

	public int getPagingCnt() {
		return PagingCnt;
	}

	public void setPagingCnt(int pagingCnt) {
		PagingCnt = pagingCnt;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getBuySerial() {
		return buySerial;
	}

	public void setBuySerial(int buySerial) {
		this.buySerial = buySerial;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewSearch() {
		return reviewSearch;
	}

	public void setReviewSearch(String reviewSearch) {
		this.reviewSearch = reviewSearch;
	}
	
	

}
