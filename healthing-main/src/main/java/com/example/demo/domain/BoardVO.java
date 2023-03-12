package com.example.demo.domain;

import java.util.Date;

public class BoardVO {
	
	int bno;
	int bstatus;
	int bviews;
	String btitle;
	String bcontents;
	String bcategory;
	String bwriter;
	String breple;
	String bfile;
	String bpwd;
	Date bwritedate;
	
	
	public int getBviews() {
		return bviews;
	}
	public void setBviews(int bviews) {
		this.bviews = bviews;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getBstatus() {
		return bstatus;
	}
	public void setBstatus(int bstatus) {
		this.bstatus = bstatus;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontents() {
		return bcontents;
	}
	public void setBcontents(String bcontents) {
		this.bcontents = bcontents;
	}
	public String getBcategory() {
		return bcategory;
	}
	public void setBcategory(String bcategory) {
		this.bcategory = bcategory;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBreple() {
		return breple;
	}
	public void setBreple(String breple) {
		this.breple = breple;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	
	public String getBpwd() {
		return bpwd;
	}
	public void setBpwd(String bpwd) {
		this.bpwd = bpwd;
	}
	public Date getBwritedate() {
		return bwritedate;
	}
	public void setBwritedate(Date bwritedate) {
		this.bwritedate = bwritedate;
	}
	
	
}
