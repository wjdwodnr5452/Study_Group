package com.lec.spring.domain;

public class WriteDTO {
	
	private int uid;
	private String name;
	private String kind;
	private int price;
	
	public WriteDTO() {
		super();
	}

	public WriteDTO(int uid, String name, String kind, int price) {
		super();
		this.uid = uid;
		this.name = name;
		this.kind = kind;
		this.price = price;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
