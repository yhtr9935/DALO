package com.company.domain;


public class ProductVO {
	private int bno;
	private int type;
	private String title;
	private String body;
	private int viewcnt;
	private String regdate;
	private String photo;
	private int oldprice;
	private int price;
	private String size;
	private String titlesub;
	
	public String getTitlesub() {
		return titlesub;
	}
	public void setTitlesub(String titlesub) {
		this.titlesub = titlesub;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getOldprice() {
		return oldprice;
	}
	public void setOldprice(int oldprice) {
		this.oldprice = oldprice;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
}
