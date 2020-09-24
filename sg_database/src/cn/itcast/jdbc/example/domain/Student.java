package cn.itcast.jdbc.example.domain;

public class Student {
	private int id;
	private String name;
	private String sex;
	private String mobile;
	private String address;
	private String grade;
	private String username;
	private String password;
	public int getId() {

		return id;
	}
	public void setId(int id) {

		this.id = id;
	}
	public String getName() {

		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {

		return address;
	}
	public void setAddress( String address) {

		this.address = address;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getUsername()
	{
		return username ;
	}
	public void setUsername( String password ) {
		this.username = username;
	}
	public String getPassword()
	{
		return password ;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
