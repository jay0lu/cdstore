package bean;

public class CD {
	private int cdid;
	private String title;
	private double price;
	private String category;
	
	public void CD(int cdid, String title, double price, String category) {
		this.cdid = cdid;
		this.title = title;
		this.price = price;
		this.category = category;
	}
	
	//Allowed cd with no category
//	public void CD(int cdid, String title, double price) {
//	    this.cdid = cdid;
//		this.title = title;
//		this.price = price;
//	}

	public int getCdid() {
		return cdid;
	}

	public void setCdid(int cdid) {
		this.cdid = cdid;
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
