package kr.co.DB;

import java.io.Serializable;

public class MemberDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String id;
	private String password;
	private String name;
	private String email;
	private String phoneNumber;
	private String address;
	private String gender;
	private String profileImgName;
	private String rights;
	private int num;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String id, String password, String name, String email, String phoneNumber, String address,
			String gender, String profileImgName, String rights, int num) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.gender = gender;
		this.profileImgName = profileImgName;
		this.rights = rights;
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getProfileImgName() {
		return profileImgName;
	}

	public void setProfileImgName(String profileImgName) {
		this.profileImgName = profileImgName;
	}

	public String getRights() {
		return rights;
	}

	public void setRights(String rights) {
		this.rights = rights;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + num;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		if (num != other.num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", address=" + address + ", gender=" + gender + ", profileImgName="
				+ profileImgName + ", rights=" + rights + ", num=" + num + "]";
	}
	
	
	
}
