package com.company.domain;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private int bno;
	private int type;
	private String title;
	private File titlephoto;
	private String body;
	private int viewcnt;
	private String regdate;
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
	public File getTitlephoto() {
		return titlephoto;
	}
	public void setTitlephoto(File titlephoto) {
		this.titlephoto = titlephoto;
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
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	private MultipartFile photo;
}
