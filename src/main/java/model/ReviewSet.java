package model;

import java.util.ArrayList;

public class ReviewSet {
	private TeaVO tea;					// 상품 : 1
	private ArrayList<ReviewVO> rdatas;	// 후기 : N
	
	// 서치 컨디션
	private int pagingCnt;				// 보여줄 후기의 개수
	
	public ReviewSet() {
		this(null, null, 6);
	}
	
	public ReviewSet(TeaVO tea, ArrayList<ReviewVO> rdatas, int pagingCnt) {
		this.tea = tea;
		this.rdatas = rdatas;
		this.pagingCnt = pagingCnt;
	}
	
	public TeaVO getTea() {
		return tea;
	}
	public void setTea(TeaVO tea) {
		this.tea = tea;
	}
	public ArrayList<ReviewVO> getRdatas() {
		return rdatas;
	}
	public void setRdatas(ArrayList<ReviewVO> rdatas) {
		this.rdatas = rdatas;
	}
	public int getPagingCnt() {
		return pagingCnt;
	}
	public void setPagingCnt(int pagingCnt) {
		this.pagingCnt = pagingCnt;
	}
}
