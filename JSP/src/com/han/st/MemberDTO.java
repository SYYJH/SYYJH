package com.han.st;

import java.io.Serializable;

public class MemberDTO implements Serializable{
	
	private String irum,id,pw,addr,tel;
	private int age;

	
	public MemberDTO(){}
	
	public MemberDTO(String irum, String id, String pw, String addr, String tel, int age) {
		super();
		this.irum = irum;
		this.id = id;
		this.pw = pw;
		this.addr = addr;
		this.tel = tel;
		this.age = age;
	}
	
	
	public String getIrum() {
		return irum;
	}
	public void setIrum(String irum) {
		this.irum = irum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	
}
