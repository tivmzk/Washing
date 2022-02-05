package kr.co.washing.model;

import java.util.Date;
import java.util.List;

public class Review {
	private int rcode;
	private String email;
	private String contents;
	private Date date;
	
	private String name;
	private List<ReviewImage> images;
	
	public List<ReviewImage> getImages() {
		return images;
	}
	public void setImages(List<ReviewImage> images) {
		this.images = images;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRcode() {
		return rcode;
	}
	public void setRcode(int rcode) {
		this.rcode = rcode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getThumbnail() {
		if(images.size() == 0) {
			return "/re/img/thumbnail.jpg";
		}
		else {
			return "/upload/"+images.get(0).getFullname();
		}
	}
	public String getMaskname() {
		String result = "";
		String first = name.substring(0, 1);
		String mask = "";
		for(int i = 0; i < name.length() - 1; i++) {
			mask += "*";
		}
		result = first + mask;
		return result;
	}
}
