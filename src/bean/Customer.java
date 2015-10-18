package bean;

public class Customer {

	private int cid;
	private String name;
	private int address;
	private String phone;
	private String email;

	public void CD(int cid, String name, int address, String phone, String email) {
		this.cid = cid;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		if (name != null && !name.isEmpty()) {
			this.name = name;
		}
	}

	public int getAddress() {
		return address;
	}

	public void setAddress(int address) {
			this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		if (name != null && !name.isEmpty()) {
			this.phone = phone;
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		if (name != null && !name.isEmpty()) {
			this.email = email;
		}
	}

	private void saveCustomer() {

	}

}
