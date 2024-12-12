package pto;

import java.io.Serializable;

public class Park implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String parkId; //놀기기구 아이디
	private String rname; //놀기기구명
	private Integer employees; //직원수
	private String description; //놀기기구 설명
	private String category; //분류
	private String condition; //놀기기구 상태
	
	
	public Park() {
		super();
	}
	public Park(String parkId, String rname, Integer employees) {
		this.parkId = parkId;
		this.rname = rname;
		this.employees = employees;
	}
	public String getParkId() {
		return parkId;
	}
	public void setParkId(String parkId) {
		this.parkId = parkId;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public Integer getEmployees() {
		return employees;
	}
	public void setEmployees(Integer employees) {
		this.employees = employees;
	}
	
}
