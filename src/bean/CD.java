package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.*;
 
@Entity
public class CD {
	@Id 
	@GeneratedValue
	
	private int cdid;
	
	private String title;
	private String singer;
	private double price;
	private String category;
	
	public void CD(int cdid, String title, String singer, double price, String category) {
		this.cdid = cdid;
		this.title = title;
		this.singer = singer;
		this.price = price;
		this.category = category;
	}

	public int getCdid() {
		return cdid;
	}

	public void setCdid(int cdid) {
		this.cdid = cdid;
	}
	
	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		if (price > 0) {
			this.price = price;
		}
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	private void saveCD() {
		
	}
	
}
