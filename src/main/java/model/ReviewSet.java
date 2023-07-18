package model;

import java.util.ArrayList;

public class ReviewSet {
	private TeaVO tea;					// 상품 : 1
	private ArrayList<ReviewVO> rdatas;	// 후기 : N
	int count;							// 보여줄 후기의 개수
	
	// 서치 컨디션
	
	public ReviewSet() {
		this(null, null, 6);
	}
	
	public ReviewSet(TeaVO tea, ArrayList<ReviewVO> rdatas, int count) {
		this.tea = tea;
		this.rdatas = rdatas;
		this.count = count;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
